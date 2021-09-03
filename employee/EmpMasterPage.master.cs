using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class employee_EmpMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["userid"] == null)
        {
           // Response.Write("You are already logout !");
            Response.Redirect("../Invalid.aspx");
        }
        else
        {
            DataView dv = (DataView)SqlDataGetPhoto.Select(new DataSourceSelectArguments());
            if (dv.Count == 1)
            {
                string name = dv[0][1].ToString();
                string photo = dv[0][2].ToString();

                // string upath = Server.MapPath("photos");

                Image2.ImageUrl = "photos/" + photo;

                Label1.Text = "Welcome " + name;

            }
        }
    }
}
