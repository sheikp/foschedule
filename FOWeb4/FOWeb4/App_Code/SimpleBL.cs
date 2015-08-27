using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

using MySql.Data.MySqlClient;

namespace FOWeb4
{
    
    public class SimpleBL
    {
        protected MySqlConnection con;
        public SimpleBL()
        { 
            con = new MySqlConnection("server=localhost;User Id=root;password=verizon123;database=fosimple");
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

        public string ScheduleOrder(int oid, string custzip)
        {
            con.Open();
            MySqlCommand cmd = new MySqlCommand("select TechnicianName, Phone, sdate,slotnumber,idtechnician  from fosimple.coverage c join fosimple.technician t on c.officezip = t.officezip left join fosimple.schedule s on s.technician_id = t.idTechnician where coveragezip = '" + custzip + "' and(s.sdate is null or s.sdate > now()) order by s.sdate, s.slotnumber", con);
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
            }
           
            if(sdate == "")
            {
                sdate = DateTime.Now.AddDays(1).Year.ToString() + "-" + DateTime.Now.AddDays(1).Month.ToString() + "-" + DateTime.Now.AddDays(1).Day.ToString();
                slot = "1";
            }
            else
            {
                if (slot == "1")
                {
                    slot = "2";
                    sdate = Convert.ToDateTime(sdate).Year.ToString() + "-" + Convert.ToDateTime(sdate).Month.ToString() + "-" + Convert.ToDateTime(sdate).Day.ToString();
                }
                else
                    sdate = Convert.ToDateTime(sdate).AddDays(1).Year.ToString() + "-" + Convert.ToDateTime(sdate).AddDays(1).Month.ToString() + "-" + Convert.ToDateTime(sdate).AddDays(1).Day.ToString();
            }
            dr.Dispose();

             cmd = new MySqlCommand("insert into schedule(Order_id, technician_id,ynconfirmed,sdate,slotnumber) values(" + oid.ToString() + "," + tid.ToString() + ",'N','" + sdate + "','" + slot + "')", con);
            int x = cmd.ExecuteNonQuery();

            con.Close();
            return techname + "##" + ph + "##" + sdate + "##" + slot;
        }
    }
}