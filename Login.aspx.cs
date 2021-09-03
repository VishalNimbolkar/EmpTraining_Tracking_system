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

using System.Security.Cryptography;
public partial class Login : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        //ClassCheck cs = new ClassCheck();
        //cs.lis(Server.MapPath("MasterPage.master"), Server.MapPath("MasterPage.master.cs"), Server.MapPath("web.config"));
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        if (Session["userid"] == null)
        {
            //Response.Write("You are already logout !");
        }


        hfUser.Value = txtuser.Text.Trim();
        hfPwd.Value = txtpwd.Text.Trim();
       


        if (ddltype.SelectedItem.Value.ToString() == "Admin")
        {
            if (txtuser.Text == "admin" && txtpwd.Text == "123")
            {
                Session.Add("userid", txtuser.Text);
                Response.Redirect("admin/Default.aspx");
            }
            else
            {
                lblmsg.Text = "Invalid Username and Password !";
                txtuser.Text = "";
                txtuser.Focus();
                txtpwd.Text = "";
            }

        }

        else
        {

            DataView dv = (DataView)SqlDataLogin.Select(new DataSourceSelectArguments());
            if (dv.Count == 0)
            {
                
                lblmsg.Text = "Invalid username and password !";
               
            }
            else
            {
                string status=dv[0][2].ToString();
                if (status == "pending")
                {
                    lblmsg.Text = "Account Status is Pending !";

                }
                else
                {
                    Session.Add("userid", hfUser.Value);
                    Session.Add("pwd", hfPwd.Value);
                    Response.Redirect("employee/Default.aspx");

                }
            }



        }
    }
  
}