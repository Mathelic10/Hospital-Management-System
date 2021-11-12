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

public partial class doctorforgot : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
    }
    protected void pwdbtn_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        cn.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "sp_hospital_doctorforgot";
        cmd.Connection = cn;

        SqlParameter p = new SqlParameter("@loginid",SqlDbType.VarChar,20);
        p.Value = lidtxt.Text;
        cmd.Parameters.Add(p);

        SqlParameter p1 = new SqlParameter("@password",SqlDbType.VarChar,20);
        p1.Direction = ParameterDirection.Output;
        cmd.Parameters.Add(p1);

        cmd.ExecuteReader();
        pwdtxt.Text = cmd.Parameters["@password"].Value.ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("doctorlogin.aspx");
    }
}
