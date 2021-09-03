using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Configuration;

public partial class admin_NewEmp : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    BasicCode b = new BasicCode();
    protected void Page_Load(object sender, EventArgs e)
    {
        generateID();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            cn = new SqlConnection(ConfigurationManager.AppSettings["EMP"]);
            cmd = new SqlCommand();
            cn.Open();
            string img = "Photo" + "_" + txtempid.Text + ".jpg";

            cmd.CommandText = "insert into Registration(empid,empname,dob,gender,address,emailid,mobile,username,pwd,photo,status,company,groupname,interested_area)values(@empid,@empname,@dob,@gender,@address,@emailid,@mobile,@username,@pwd,@photo,@status,@company,@groupname,@interested_area)";

            cmd.Parameters.AddWithValue("@empid", txtempid.Text);
            cmd.Parameters.AddWithValue("@empname",txtname.Text);

            cmd.Parameters.AddWithValue("@dob", txtdob.Text);
            cmd.Parameters.AddWithValue("@gender", rbgender.SelectedItem.Value.ToString());
            cmd.Parameters.AddWithValue("@address", txtadd.Text);

            cmd.Parameters.AddWithValue("@emailid", txtemail.Text);
            cmd.Parameters.AddWithValue("@mobile", txtmob.Text);
            cmd.Parameters.AddWithValue("@username",txtempid.Text);
            

            cmd.Parameters.AddWithValue("@pwd", txtpwd.Text);
            cmd.Parameters.AddWithValue("@photo", img);
            cmd.Parameters.AddWithValue("@status", "Accept");

            cmd.Parameters.AddWithValue("@company",txtCompany.Text);
            cmd.Parameters.AddWithValue("@groupname", ddlGroup.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@interested_area",ddlGroup.SelectedItem.ToString());

            cmd.Connection = cn;

            int n = cmd.ExecuteNonQuery();

            cn.Close();

            if (n > 0)
            {
                //lblmsg.Text = "Record Saved Successfully...";
                if (fuphoto.HasFile)
                {                    
                    fuphoto.SaveAs(Server.MapPath("~/employee/photos/" + img));
                    Directory.CreateDirectory(Server.MapPath("~/employee/task/" + txtempid.Text));
                }                

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Employee Record Saved Successfully !')", true);
                //string msg = "Your Login Credential are : %0a Emp ID : " + txtempid.Text + " %0a password : " + txtpwd.Text + "%0a Do not share with anyone.";
                //b.SendSms("EMPTTS", txtmob.Text, msg);

                txtadd.Text = "";
                txtdob.Text = "";
                txtemail.Text = "";
                txtempid.Text = "";
                txtCompany.Text = "";
                txtmob.Text = "";
                txtname.Text = "";
                txtpwd.Text = "";                
            }
            else
            {
               // lblmsg.Text = "Unabled To Insert....";
                Response.Write("Unabled To Insert....");
            }

            generateID();
        }
        catch (Exception er)
        {
            Response.Write(er.ToString());
        }

    }
    protected void generateID()
    {
        cn = new SqlConnection(ConfigurationManager.AppSettings["EMP"]);
        cmd = new SqlCommand();
        cn.Open();

        cmd.CommandText = "select empid from Registration order by empid desc";
        cmd.Connection = cn;

        object obj = cmd.ExecuteScalar();
        if (obj == null)
        {
           txtempid.Text = "1";
        }
        else
        {
            int n = Convert.ToInt32(obj);
            n = n + 1;
            txtempid.Text = n.ToString();
        }
        cn.Close();

    }
}