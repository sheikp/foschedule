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
            con.Close();
            return x;
        }
    }
}