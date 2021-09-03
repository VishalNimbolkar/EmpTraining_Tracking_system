using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_ShowTask : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string eid = GridView1.SelectedRow.Cells[1].Text.ToString();
        string ename = GridView1.SelectedRow.Cells[2].Text.ToString();
        string uname = GridView1.SelectedRow.Cells[3].Text.ToString();
        string tid = GridView1.SelectedRow.Cells[5].Text.ToString();
        string task = GridView1.SelectedRow.Cells[6].Text.ToString();

        Session.Add("empid", eid);
        Session.Add("empname", ename);
        Session.Add("username", uname);
        Session.Add("taskid", tid);

        Session.Add("task", task);


        //Response.Redirect("Marks.aspx?id=" + GridView1.SelectedRow.Cells[1].Text.ToString());
        Response.Redirect("Marks.aspx");
    }
}