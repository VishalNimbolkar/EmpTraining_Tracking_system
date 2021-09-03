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
public partial class employee_SubmitTask : System.Web.UI.Page
{

    SqlConnection cn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        hfID.Value = Request.QueryString["id"];
        DataView dv = (DataView)SqlDataGetData.Select(new DataSourceSelectArguments());

        if (dv.Count>0)
        {
            txtid.Text=dv[0][0].ToString();
            txttask.Text = dv[0][1].ToString();

        }
       

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            cn = new SqlConnection(ConfigurationManager.AppSettings["EMP"]);
            cmd = new SqlCommand();
            cn.Open();
           // string img = "T" + "_" + txtempid.Text + ".jpg";

            cmd.CommandText = "update Task set user_status=@us,admin_status=@as,doc_path=@p where username=@username and taskid=@taskid";

            cmd.Parameters.AddWithValue("@us", "Done");
            cmd.Parameters.AddWithValue("@as", "Pending");
            cmd.Parameters.AddWithValue("@p",fuphoto.FileName.ToString());

            cmd.Parameters.AddWithValue("@username",Session["userid"].ToString());

            cmd.Parameters.AddWithValue("@taskid",txtid.Text);

            cmd.Connection = cn;

            int n = cmd.ExecuteNonQuery();

            cn.Close();

            if (n > 0)
            {
                //lblmsg.Text = "Record Saved Successfully...";
                if (fuphoto.HasFile)
                {
                    string str=Session["userid"].ToString()+"/"+fuphoto.FileName.ToString();
                    fuphoto.SaveAs(Server.MapPath("~/employee/task/" + str));
                   
                }
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Task Submited Successfully')", true);
                // Response.Write("Login.aspx");
                txtid.Text = "";
                txttask.Text = "";
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
}