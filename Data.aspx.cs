using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Data : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        lblDone.Text ="Total Completed Task :"+ countDone();
        lblPending.Text = "Total Pending Task :" + countPending();    

    }

    protected string countDone()
    {
        SqlConnection cn;
        SqlCommand cmd;
        cn = new SqlConnection(ConfigurationManager.AppSettings["EMP"]);
        cmd = new SqlCommand();
        cn.Open();

        cmd.CommandText = "select count(user_status) from Task where user_status='Done' and date1=@d";
        cmd.Parameters.AddWithValue("@d", txtDate.Text);
        cmd.Connection = cn;

        object obj = cmd.ExecuteScalar();
        cn.Close();
        if (obj == null)
        {
            return obj.ToString();   
        }
        else
        {
            return obj.ToString();
        }
       
    }

    protected string countPending()
    {
        SqlConnection cn;
        SqlCommand cmd;
        cn = new SqlConnection(ConfigurationManager.AppSettings["EMP"]);
        cmd = new SqlCommand();
        cn.Open();

        cmd.CommandText = "select count(user_status) from Task where user_status='Pending' and date1=@d";
        cmd.Parameters.AddWithValue("@d", txtDate.Text);
        cmd.Connection = cn;

        object obj = cmd.ExecuteScalar();
        cn.Close();
        if (obj == null)
        {
            return obj.ToString();
        }
        else
        {
            return obj.ToString();
        }

    }

}