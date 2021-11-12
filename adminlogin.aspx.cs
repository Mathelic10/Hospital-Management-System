using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class adminsignup : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("server=IPOG-A95E1056D3;user id=sa;password=sqlserver;database=Hospitalmanagement");
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        if (lidtxt.Text == "admin" && pwdtxt.Text == "admin")
        {
            Response.Redirect("administration.aspx");
        }
        else
        {
            pwdlb.Text = "Enter valid Username/Password";
        }
    }
}
