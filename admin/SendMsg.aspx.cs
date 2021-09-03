using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Configuration;
using System.Data.SqlClient;
public partial class admin_SendMsg : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection cn;
            SqlCommand cmd;
            cn = new SqlConnection(ConfigurationManager.AppSettings["EMP"]);
            cmd = new SqlCommand();
            cn.Open();


            cmd.CommandText = "insert into Msg(msgfrom,msgto,sub,msg,msgdate)values(@msgfrom,@msgto,@sub,@msg,@msgdate)";


            cmd.Parameters.AddWithValue("@msgfrom", Session["userid"].ToString());
            cmd.Parameters.AddWithValue("@msgto", ddlusers.SelectedItem.Value.ToString());
            cmd.Parameters.AddWithValue("@sub", txtsub.Text);
            cmd.Parameters.AddWithValue("@msg", txtmsg.Text);
            cmd.Parameters.AddWithValue("@msgdate", DateTime.Now.ToShortDateString() + " " + DateTime.Now.ToShortTimeString());
            cmd.Connection = cn;

            int n = cmd.ExecuteNonQuery();

            cn.Close();

            if (n > 0)
            {

                lblmsg1.Text = "Message Sent Successfully !";
                
                txtmsg.Text = "";
                txtsub.Text = "";
                ddlusers.SelectedIndex = 0;

            }
            else
            {

                Response.Write("Unabled To Insert....");
            }
        }
        catch (Exception er)
        {
            Response.Write(er.ToString());
        }
    }
}