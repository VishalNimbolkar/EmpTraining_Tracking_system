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
using System.Collections;
public partial class admin_AssignTask : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    SqlCommand cmd1;
    string d;
    ArrayList ar = new ArrayList();
    protected void Page_Load(object sender, EventArgs e)
    {
        generateID();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        //try
        //{
        //    cn = new SqlConnection(ConfigurationManager.AppSettings["EMP"]);
        //    cmd = new SqlCommand();
        //    cmd1 = new SqlCommand();
            

        //    cn.Open();
        //  d=DateTime.Now.ToShortDateString().ToString();

        //    cmd1.CommandText = "select username,empid from Registration";
        //    cmd1.Connection = cn;
        //    SqlDataReader dr=cmd1.ExecuteReader();
            
        //    while (dr.Read())
        //    {
        //        string uid = dr.GetString(0);
        //        string empid = Convert.ToString(dr.GetInt32(1));
        //      //  Response.Write(" " + uid + " " + empid+"\n");
        //        ar.Add(uid);
                
        //    }
        //    dr.Close();
                   
        //    cn.Close();
        //    saveData();

        //    lblmsg.Text = "Task Assign Successfully !";
        //    txtid.Text = "";
        //    txttask.Text = "";

        //}
        //catch (Exception er)
        //{
        //    Response.Write(er.ToString());
        //}

        foreach (GridViewRow row in GridView1.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                CheckBox chkRow = (row.Cells[0].FindControl("chkBox") as CheckBox);
                if (chkRow.Checked == true)
                {
                    string id = row.Cells[1].Text;                    
                    ar.Add(id);
                    //Response.Write(id+" "+pname+" "+rate+" "+qty+" ");
                }
                else
                {

                }
            }
        }
        d = DateTime.Now.ToShortDateString().ToString();
        saveData();

        lblmsg.Text = "Task Assign Successfully !";
        txtid.Text = "";
        txttask.Text = "";
        txtDays.Text = "";

        generateID();

    }
    protected void saveData()
    {
        // code to set last date of task submission
        System.DateTime myDate = new System.DateTime();
        myDate = Convert.ToDateTime(DateTime.Now.ToShortDateString());

        System.DateTime fdate = myDate.AddDays(Convert.ToInt32(txtDays.Text));
        string last_date = fdate.ToString("dd/MM/yyyy");

      
        cn.Open();
        foreach (string uid in ar)
        {
            cmd.CommandText = "insert into Task(taskid,task,date1,username,user_status,admin_status,last_date) values (" + txtid.Text + ",'" + txttask.Text + "','" + d + "','" + uid + "','Pending','Pending','"+last_date+"' )";
            cmd.Connection = cn;
            cmd.ExecuteNonQuery();
        }
        cn.Close();

    }
    protected void generateID()
    {
        cn = new SqlConnection(ConfigurationManager.AppSettings["EMP"]);
        cmd = new SqlCommand();
        cn.Open();

        cmd.CommandText = "select taskid from Task order by taskid desc";
        cmd.Connection = cn;

        object obj = cmd.ExecuteScalar();
        if (obj == null)
        {
            txtid.Text = "1";
        }
        else
        {
            int n = Convert.ToInt32(obj);
            n = n + 1;
            txtid.Text = n.ToString();
        }
        cn.Close();

    }
    protected void ddlgroup_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlgroup.SelectedItem.ToString() == "All")
        {
            string q = "";
            q = "Select empid,empname from Registration";
            SqlDataGetEmp.SelectCommand = q;
        }
        else
        {
            string q = "";
            q = "Select empid,empname from Registration where groupname='" + ddlgroup.SelectedItem.ToString() + "'";
            SqlDataGetEmp.SelectCommand = q;
        }

    }
}