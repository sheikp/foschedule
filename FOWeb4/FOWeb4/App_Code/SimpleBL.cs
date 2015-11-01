using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;
using System.Data;

namespace FOWeb4
{
    
    public class SimpleBL
    {
        protected MySqlConnection con;
        public SimpleBL()
        {
            //con = new MySqlConnection("server=localhost;User Id=root;password=rayhan2006;database=justdispatch");
            con = new MySqlConnection("server=us-cdbr-azure-central-a.cloudapp.net;User Id=bdedbb1076214d;password=9a4667ff;database=cleardbdispatch");
        }

        public int newOrder(string custph, string custemail, string custzip)
        {
            con.Open();
            MySqlCommand cmd = new MySqlCommand("insert into orders(MobileNumber,ZipCode,EmailAddress) values('" + custph + "','" + custzip + "','" + custemail + "')",con);
            int x  = cmd.ExecuteNonQuery();

            cmd = new MySqlCommand("select max(idorders) from orders",con);
            MySqlDataReader dr = cmd.ExecuteReader();
            
            if (dr.Read())
            {
                x = Convert.ToInt16(dr[0].ToString());
            }
            dr.Dispose();

            con.Close();
            return x;
        }

        public int newRepair(int custid, string descr)
        {
            con.Open();
            MySqlCommand cmd = new MySqlCommand("insert into repair(customerid,repairdetail) values(" + custid + ",'" + descr + "')", con);
            int x = cmd.ExecuteNonQuery();

            cmd = new MySqlCommand("select max(idrepair) from repair", con);
            MySqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                x = Convert.ToInt16(dr[0].ToString());
            }
            dr.Dispose();

            con.Close();
            return x;
        }

        public string getzipcustomer(int custid)
        {
            con.Open();
            MySqlCommand cmd =  new MySqlCommand("select zipcode from customers where idcustomers =" + custid.ToString(), con);
            MySqlDataReader dr = cmd.ExecuteReader();
            string szipcode = "";
            if (dr.Read())
            {
                szipcode = dr[0].ToString();
            }
            dr.Dispose();

            con.Close();
            return szipcode;
        }

        public void confirmOrder(int oid, string type)
        {
            con.Open();
            MySqlCommand cmd = new MySqlCommand("update schedule set ynconfirmed = 'Y' where order_repair_id = " + oid.ToString() + " and stype = '" + type + "'", con);
            cmd.ExecuteNonQuery();
        }

        public void confirmOrderLater(int oid, string type, DateTime sdate)
        {
            con.Open();
            MySqlCommand cmd = new MySqlCommand("update schedule set ynconfirmed = 'Y', sdate='" + sdate.Year.ToString() + "-" + sdate.Month.ToString() + "-" + sdate.Day.ToString() + " 00:00:00',slotnumber=1 where order_repair_id = " + oid.ToString() + " and stype = '" + type + "'", con);
            cmd.ExecuteNonQuery();
        }

        public string ScheduleOrder(int oid, string custzip,string type)
        {
            con.Open();
            MySqlCommand cmd = new MySqlCommand("select TechnicianName, Phone, sdate,slotnumber,idtechnician  from coverage c join technician t on c.officezip = t.officezip and skillset like '%" + type + "%' left join schedule s on s.technician_id = t.idTechnician where coveragezip = '" + custzip + "' and (s.idschedule in (select max(idschedule) from schedule group by technician_id) or s.sdate is null)  order by s.sdate, s.slotnumber,idTechnician", con);
            MySqlDataReader dr = cmd.ExecuteReader();

            string techname = "", ph = "", sdate = "", slot = "";
            int tid = 0;
            if (dr.Read())
            {
                techname = dr[0].ToString();
                ph = dr[1].ToString();
                sdate = dr[2].ToString();
                slot = dr[3].ToString();
                tid = Convert.ToInt16(dr[4].ToString());

                if(type=="install")
                {
                    if (sdate == "")
                    {
                        sdate = DateTime.Now.AddDays(1).Year.ToString() + "-" + DateTime.Now.AddDays(1).Month.ToString() + "-" + DateTime.Now.AddDays(1).Day.ToString();
                        slot = "1";
                    }
                    else
                    {
                        if (Convert.ToDateTime(sdate) < DateTime.Now)
                        {
                            sdate = DateTime.Now.AddDays(1).Year.ToString() + "-" + DateTime.Now.AddDays(1).Month.ToString() + "-" + DateTime.Now.AddDays(1).Day.ToString();
                            slot = "1";
                        }
                        else if (slot == "1")
                        {
                            slot = "2";
                            sdate = Convert.ToDateTime(sdate).Year.ToString() + "-" + Convert.ToDateTime(sdate).Month.ToString() + "-" + Convert.ToDateTime(sdate).Day.ToString();
                        }
                        else
                        {
                            slot = "1";
                            sdate = Convert.ToDateTime(sdate).AddDays(1).Year.ToString() + "-" + Convert.ToDateTime(sdate).AddDays(1).Month.ToString() + "-" + Convert.ToDateTime(sdate).AddDays(1).Day.ToString();
                        }
                    }
                }
                else
                {
                    if (sdate == "")
                    {
                        sdate = DateTime.Now.AddDays(1).Year.ToString() + "-" + DateTime.Now.AddDays(1).Month.ToString() + "-" + DateTime.Now.AddDays(1).Day.ToString();
                        slot = "1";
                    }
                    else
                    {
                        if (Convert.ToDateTime(sdate) < DateTime.Now)
                        {
                            sdate = DateTime.Now.AddDays(1).Year.ToString() + "-" + DateTime.Now.AddDays(1).Month.ToString() + "-" + DateTime.Now.AddDays(1).Day.ToString();
                            slot = "1";
                        }
                        else if (slot == "1")
                        {
                            slot = "2";
                            sdate = Convert.ToDateTime(sdate).Year.ToString() + "-" + Convert.ToDateTime(sdate).Month.ToString() + "-" + Convert.ToDateTime(sdate).Day.ToString();
                        }
                        else if (slot == "2")
                        {
                            slot = "3";
                            sdate = Convert.ToDateTime(sdate).Year.ToString() + "-" + Convert.ToDateTime(sdate).Month.ToString() + "-" + Convert.ToDateTime(sdate).Day.ToString();
                        }
                        else 
                        {
                            slot = "1";
                            sdate = Convert.ToDateTime(sdate).AddDays(1).Year.ToString() + "-" + Convert.ToDateTime(sdate).AddDays(1).Month.ToString() + "-" + Convert.ToDateTime(sdate).AddDays(1).Day.ToString();
                        }
                    }
                }

                
                dr.Dispose();

                cmd = new MySqlCommand("insert into schedule(Order_repair_id, technician_id,ynconfirmed,sdate,slotnumber,stype,yncompleted) values(" + oid.ToString() + "," + tid.ToString() + ",'N','" + sdate + "','" + slot + "','" + type + "','N')", con);
                int x = cmd.ExecuteNonQuery();
            }
           
            

            con.Close();
            return techname + "##" + ph + "##" + sdate + "##" + slot + "##" + oid.ToString();
        }

        public string GetSchedule(string phone, string ordernum)
        {
            con.Open();
            MySqlCommand cmd = new MySqlCommand("select TechnicianName, Phone, sdate,slotnumber,idtechnician,order_repair_id  from technician t  join schedule s on s.technician_id = t.idTechnician join orders o on o.idorders =s.order_repair_id where idorders = " + ordernum + " and mobilenumber = '" + phone + "'", con);
            MySqlDataReader dr = cmd.ExecuteReader();

            string techname = "", ph = "", sdate = "", slot = "";
            int tid = 0;
            if (dr.Read())
            {
                techname = dr[0].ToString();
                ph = dr[1].ToString();
                sdate = dr[2].ToString();
                slot = dr[3].ToString();
               // tid = Convert.ToInt16(dr[4].ToString());
            }
            if(sdate != "")
            {
                if (Convert.ToDateTime(sdate) < DateTime.Now)
                {
                    techname = "Completed";
                }
                sdate = Convert.ToDateTime(sdate).Month.ToString() + "/" + Convert.ToDateTime(sdate).Day.ToString() + "/" + Convert.ToDateTime(sdate).Year.ToString();            
            
            }
            dr.Dispose();           

            con.Close();
            return techname + "##" + ph + "##" + sdate + "##" + slot;
        }

        public DataTable getResult()
        {
            DataTable dt= new DataTable();
            con.Open();
            MySqlCommand cmd = new MySqlCommand("select * from automation_results order by 1 desc", con);
            cmd.ExecuteNonQuery();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);           

            con.Close();
            return dt;
        }
        
    }
}