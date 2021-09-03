using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;

public partial class admin_CreateGroup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnCreateGroup_Click(object sender, EventArgs e)
    {
        CheckGroupName();

        foreach (GridViewRow row in GridView1.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                CheckBox chkRow = (row.Cells[0].FindControl("chkBox") as CheckBox);
                if (chkRow.Checked==true)
                {
                    string id = row.Cells[1].Text;
                    string pname = row.Cells[2].Text;
                    string rate = row.Cells[3].Text;
                    string qty = chkRow.Text.ToString();                 

                    saveCart(id);

                     //Response.Write(id+" "+pname+" "+rate+" "+qty+" ");
                }
                else
                {
                    
                }
            }
        }

        lblmsg.Text = "Group Created Successfully !";
        //SqlDataGetCart.DataBind();
        GridView1.DataBind();

    }

    protected void saveCart(string id)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["EMP"]);
        SqlCommand cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = "Update Registration Set groupname=@groupname where empid=@empid";        
        cmd.Parameters.AddWithValue("@groupname",txtEmpID.Text);
        cmd.Parameters.AddWithValue("@empid", id);        

        cmd.Connection = con;
        int n = cmd.ExecuteNonQuery();
        if (n > 0)
        {
            
        }
        else
        {
            Response.Write("Error!");
        }
        con.Close();
    }


    protected void CreateGroup()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["EMP"]);
        SqlCommand cmd = new SqlCommand();
        con.Open();
       
        cmd.CommandText = "insert into GroupData(groupname) values(@g)";
       
        cmd.Parameters.AddWithValue("@g", txtEmpID.Text);
        
        cmd.Connection = con;
        int n = cmd.ExecuteNonQuery();
        if (n > 0)
        {
            lblmsg.Text = "Group Created Successfully !";
        }
        else
        {
            Response.Write("Error!");
        }
        con.Close();
    }

    protected void CheckGroupName()
    {
        SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["EMP"]);
        SqlCommand cmd1 = new SqlCommand();
        con1.Open();
        cmd1.CommandText = "select groupname from GroupData where groupname=@g";
        cmd1.Parameters.AddWithValue("@g", txtEmpID.Text);

        cmd1.Connection = con1;

       Object obj=cmd1.ExecuteScalar();
       if (obj == null)
       {
           con1.Close();

           CreateGroup();

       }
       else
       {
           con1.Close();
           lblmsg.Text = "This Groupname already exist.";
       }

    }


    protected void ddlGroup_SelectedIndexChanged(object sender, EventArgs e)
    {
        string q = "";

        if (ddlGroup.SelectedItem.Value.ToString() == "All")
        {
            q = "SELECT [empid], [empname], [gender], [emailid], [mobile], [photo] FROM [Registration]";
        }
        else
        {
            q="SELECT [empid], [empname], [gender], [emailid], [mobile], [photo] FROM [Registration] where groupname='"+ddlGroup.SelectedItem.Value.ToString()+"'";
        }

        SqlDataSource1.SelectCommand = q;


    }
}