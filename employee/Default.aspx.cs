using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class employee_Default : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        CheckTaskNotification();
    }
    protected void CheckTaskNotification()
    {
        cn = new SqlConnection(ConfigurationManager.AppSettings["EMP"]);
        cmd = new SqlCommand();
        cn.Open();

        cmd.CommandText = "select user_status from Task where username='" + Session["userid"].ToString() + "' and user_status in ('Pending','Rejected')";
        cmd.Connection = cn;

        object obj = cmd.ExecuteScalar();
        if (obj == null)
        {
            lblmsgTask.Text = "";

        }
        else
        {
            lblmsgTask.Text = "You have a task with status : " + obj.ToString();
        }
        cn.Close();

    }
}