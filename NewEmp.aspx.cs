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


public partial class NewEmp : System.Web.UI.Page
{

    SqlConnection cn;
    SqlCommand cmd;
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

            cmd.CommandText = "insert into Registration(empid,empname,dob,gender,address,emailid,mobile,pwd,photo,status)values(@empid,@empname,@dob,@gender,@address,@emailid,@mobile,@pwd,@photo,@status)";

            cmd.Parameters.AddWithValue("@empid", txtempid.Text);
            cmd.Parameters.AddWithValue("@empname", txtname.Text);

            cmd.Parameters.AddWithValue("@dob", txtdob.Text);
            cmd.Parameters.AddWithValue("@gender", rbgender.SelectedItem.Value.ToString());
            cmd.Parameters.AddWithValue("@address", txtadd.Text);

            cmd.Parameters.AddWithValue("@emailid", txtemail.Text);
            cmd.Parameters.AddWithValue("@mobile", txtmob.Text);
            //cmd.Parameters.AddWithValue("@username",txtusername.Text);
           // cmd.Parameters.AddWithValue("@username", txtusername.Text);

            cmd.Parameters.AddWithValue("@pwd",Encrypt(txtpwd.Text.Trim()));
            cmd.Parameters.AddWithValue("@photo", img);
            cmd.Parameters.AddWithValue("@status", "pending");
            cmd.Connection = cn;

            int n = cmd.ExecuteNonQuery();

            cn.Close();

            if (n > 0)
            {
                
                if (fuphoto.HasFile)
                {

                    fuphoto.SaveAs(Server.MapPath("~/employee/photos/" + img));
                    Directory.CreateDirectory(Server.MapPath("~/employee/task/" + txtusername.Text));
                }
             
               lblmsg.Text = "User Registrered Successfully !";

               txtadd.Text = "";
               txtdob.Text = "";
               txtemail.Text = "";
               txtempid.Text = "";
               txtmob.Text = "";
               txtname.Text = "";
               txtpwd.Text = "";
              // txtusername.Text = "";
            }
            else
            {
                // lblmsg.Text = "Unabled To Insert....";
                Response.Write("Unabled To Insert....");
            }
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

    protected string Encrypt(string clearText)
    {
        string EncryptionKey = "MAKV2SPBNI99212";
        byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            using (MemoryStream ms = new MemoryStream())
            {
                using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                {
                    cs.Write(clearBytes, 0, clearBytes.Length);
                    cs.Close();
                }
                clearText = Convert.ToBase64String(ms.ToArray());
            }
        }
        return clearText;
    }
}