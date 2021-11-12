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

public partial class ipregister : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            filldrop();
           DropDownList5.Items.Insert(0, "...Select...");
        }
        string dt = DateTime.Now.ToShortDateString();
        string dtm = DateTime.Now.ToShortTimeString();
        TextBox9.Text = dt;
        TextBox10.Text = dtm;


    }
    void filldrop()
    {
        cn.Open();
        string qry = "select name from hospital_doctorsignup";
        SqlDataAdapter da = new SqlDataAdapter(qry, cn);
        DataSet ds = new DataSet();
        da.Fill(ds, "hospital_doctorsignup");
        DropDownList5.DataSource = ds;
        DropDownList5.DataTextField = "name";
        DropDownList5.DataBind();
        cn.Close();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "sp_hospital_inpatient";
        cmd.Connection = cn;

        SqlParameter p = new SqlParameter("@patientname",SqlDbType.VarChar,20);
        p.Value = TextBox1.Text;
        cmd.Parameters.Add(p);


        SqlParameter p1 = new SqlParameter("@gender", SqlDbType.VarChar, 20);
        p1.Value = DropDownList1.Text;
        cmd.Parameters.Add(p1);

        SqlParameter p2 = new SqlParameter("@age", SqlDbType.Int);
        p2.Value = TextBox3.Text;
        cmd.Parameters.Add(p2);

        SqlParameter p3 = new SqlParameter("@address", SqlDbType.VarChar, 20);
        p3.Value = TextBox4.Text;
        cmd.Parameters.Add(p3);

        SqlParameter p4 = new SqlParameter("@phoneres", SqlDbType.BigInt);
        p4.Value = TextBox5.Text;
        cmd.Parameters.Add(p4);

        SqlParameter p5 = new SqlParameter("@phonemob", SqlDbType.BigInt);
        p5.Value = TextBox6.Text;
        cmd.Parameters.Add(p5);

        SqlParameter p6 = new SqlParameter("@maritual", SqlDbType.VarChar, 20);
        p6.Value = DropDownList2.Text;
        cmd.Parameters.Add(p6);

        SqlParameter p7 = new SqlParameter("@occupation", SqlDbType.VarChar, 20);
        p7.Value = TextBox7.Text;
        cmd.Parameters.Add(p7);

        SqlParameter p9 = new SqlParameter("@admdate", SqlDbType.DateTime);
        p9.Value = TextBox9.Text;
        cmd.Parameters.Add(p9);

        SqlParameter p10 = new SqlParameter("@admtime", SqlDbType.DateTime);
        p10.Value = TextBox10.Text;
        cmd.Parameters.Add(p10);

        SqlParameter p11 = new SqlParameter("@status", SqlDbType.VarChar, 20);
        p11.Value = DropDownList4.Text;
        cmd.Parameters.Add(p11);

        SqlParameter p12 = new SqlParameter("@symtoms", SqlDbType.VarChar, 20);
        p12.Value = TextBox12.Text;
        cmd.Parameters.Add(p12);

        SqlParameter p13 = new SqlParameter("@department", SqlDbType.VarChar, 20);
        p13.Value = DropDownList3.Text;
        cmd.Parameters.Add(p13);

        SqlParameter p14 = new SqlParameter("@wardno", SqlDbType.Int);
        p14.Value = TextBox14.Text;
        cmd.Parameters.Add(p14);

        SqlParameter p15 = new SqlParameter("@bedno", SqlDbType.Int);
        p15.Value = TextBox15.Text;
        cmd.Parameters.Add(p15);

        SqlParameter p16 = new SqlParameter("@doctor", SqlDbType.VarChar,20);
        p16.Value = DropDownList5.Text;
        cmd.Parameters.Add(p16);

        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("doctorsden.aspx");

    }
}
