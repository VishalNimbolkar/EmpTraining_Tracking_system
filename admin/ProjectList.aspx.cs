using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_ProjectList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("ProjectDetails.aspx?pname=" +Server.UrlEncode(GridView2.SelectedRow.Cells[2].Text) + "&pid=" + GridView2.SelectedRow.Cells[1].Text);
    }
}