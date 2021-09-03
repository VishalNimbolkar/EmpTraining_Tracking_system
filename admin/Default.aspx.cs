using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_Default : System.Web.UI.Page
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

        cmd.CommandText = "select admin_status from Task where user_status='Done' and admin_status='Pending'";
        cmd.Connection = cn;

        object obj = cmd.ExecuteScalar();
        if (obj == null)
        {
            lblmsgTask.Text = "";

        }
        else
        {
            lblmsgTask.Text = "Employee submited a task with status : " + obj.ToString();
        }
        cn.Close();

    }

    protected void GridView1_SelectedIndexChanged(object sender, GridViewCommandEventArgs e)
    {
        Response.Write(GridView1.SelectedRow.Cells[1].Text.ToString());
        //hfGetID.Value = GridView1.SelectedRow.Cells[3].Text.ToString();
        //if (e.CommandName == "Accept")
        //{
        //    //  Response.Write("Accept");

        //    Response.Write(hfGetID.Value.ToString());
        //    // Response.Write(GridView1.SelectedRow.Cells[2].Text.ToString());
        //    int n = SqlDataGetData.Update();
        //    if (n > 0)
        //    {
        //        Response.Redirect(Request.RawUrl);
        //    }
        //}

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Accept")
        {
          //  Response.Write("Accept");
             Response.Write(e.CommandArgument.ToString());
           // Response.Write(hfGetID.Value.ToString());
            // Response.Write(GridView1.SelectedRow.Cells[2].Text.ToString());
            int n = SqlDataGetData.Update();
            if (n > 0)
            {
                Response.Redirect(Request.RawUrl);
            }
        }

        if (e.CommandName == "Reject")
        {
            //Response.Write("Reject");
         //   hfGetID.Value = GridView1.SelectedRow.Cells[2].Text.ToString();
            //Response.Write(hfGetID.Value.ToString());
            // Response.Write(GridView1.SelectedRow.Cells[2].Text.ToString());
            string q = "";
            q = "UPDATE Registration SET status ='Reject' where empid =" + hfGetID.Value; ;
            SqlDataUpdateReject.UpdateCommand = q;
                Response.Redirect(Request.RawUrl);
            

        }


    }

}