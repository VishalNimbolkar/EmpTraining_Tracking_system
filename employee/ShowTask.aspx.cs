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

public partial class employee_ShowTask : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        getFeedback_Allow_Date();

    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("SubmitTask.aspx?id=" + GridView2.SelectedRow.Cells[1].Text.ToString());
    }

    public void getFeedback_Allow_Date()
    {
        //Response.Write("getFeedaback Date");
        string taskid;
        string task;
        string last_date;

        SqlConnection cn;
        SqlCommand cmd;
        cn = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        cn.Open();
        cmd.CommandText = "select taskid, task, last_date from Task where username=@u";
        cmd.Parameters.AddWithValue("@u",Session["userid"].ToString());
        cmd.Connection = cn;
        SqlDataReader dr= cmd.ExecuteReader();
       

        while (dr.Read())
        {
            
            taskid=dr.GetInt32(0).ToString();
            task=dr.GetString(1).ToString();
            last_date= dr.GetString(2).ToString();

            //Response.Write(DateTime.Now.ToShortDateString());

            checkUserBlockTime(taskid, task, last_date);
        }
         cn.Close();
        
    }

    protected void checkUserBlockTime(string taskid, string task,string dt)
    {
        DateTime d = DateTime.Now;
        int d1 = d.Day;
        int m = d.Month;
        int y = d.Year;

        String td = d.ToShortDateString();

        String vd = dt; // Block date by admin
        DateTime td1 = Convert.ToDateTime(td);
        DateTime vd1 = Convert.ToDateTime(vd);

        int result = DateTime.Compare(td1, vd1);

        if (result > 0)
        {
            UpdataTask(taskid);
            SaveMarks(task);
        }
        else
        {
           
        }

    }

    public void UpdataTask(string taskid)
    {
        
        SqlConnection cn;
        SqlCommand cmd;
        cn = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        cn.Open();
        cmd.CommandText = "update Task set user_status=@us,admin_status=@as,doc_path=@p where username=@username and taskid=@taskid";

        cmd.Parameters.AddWithValue("@us", "Done");
        cmd.Parameters.AddWithValue("@as", "Done");
        cmd.Parameters.AddWithValue("@p","DummyFile");

        cmd.Parameters.AddWithValue("@username", Session["userid"].ToString());

        cmd.Parameters.AddWithValue("@taskid", taskid);

        cmd.Connection = cn;

        int n = cmd.ExecuteNonQuery();

        cn.Close();

    }
    public void SaveMarks(string task)
    {
        
        SqlConnection cn;
        SqlCommand cmd;
        cn = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        cn.Open();
        cmd.CommandText = "INSERT INTO [Marks] ([empid], [username], [task], [analysis], [designing], [coding], [testing], [obtain_marks], [total_marks]) VALUES (@empid, @username, @task, @analysis, @designing, @coding, @testing, @obtain_marks, @total_marks)";
        cmd.Parameters.AddWithValue("@empid", Session["userid"].ToString());
        cmd.Parameters.AddWithValue("@username", Session["userid"].ToString());
        cmd.Parameters.AddWithValue("@task", task);
        cmd.Parameters.AddWithValue("@analysis", 0);

        cmd.Parameters.AddWithValue("@designing",0);
        cmd.Parameters.AddWithValue("@coding", 0);
        cmd.Parameters.AddWithValue("@testing", 0);
        cmd.Parameters.AddWithValue("@obtain_marks", 0);

        cmd.Parameters.AddWithValue("@total_marks", 40);
        
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();

        cn.Close();

    }

}