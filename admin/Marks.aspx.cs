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
public partial class admin_Marks : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        txtname.Text = Session["empname"].ToString();
        txtempid.Text = Session["empid"].ToString();
        txttask.Text = Session["task"].ToString() ;



       // lblmsg.Text = s;

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlstatus.SelectedItem.Value.ToString() == "Done")
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }

        if (ddlstatus.SelectedItem.Value.ToString() == "Pending")
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
        }

    }
    protected void btnsubmit_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            
            if (ddlstatus.SelectedItem.Value.ToString() == "Done")
            {

                int total = Convert.ToInt32(txtanalysis.Text) + Convert.ToInt32(txtdes.Text) + Convert.ToInt32(txtcode.Text) + Convert.ToInt32(txttest.Text);
                hftotal.Value = total.ToString();

                SqlDataDone.Insert();
                SqlDataDone.Update();
                lblmsg.Text = "User Marks Saved Successfuly !";
            }
            else
            {
                
                SqlDataPending.Update();
                lblmsg.Text = "Task is Rejected !";
            }

            txtanalysis.Text = "";
            txtcode.Text = "";
            txtdes.Text = "";
            txtempid.Text = "";
            txtname.Text = "";
            txtreason.Text = "";
            txttask.Text = "";
            txttest.Text = "";



        }
        catch (Exception er)
        {
            Response.Write(er.ToString());
        }

    }
}