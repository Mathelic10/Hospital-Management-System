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

public partial class dischargesummary : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            cn.Open();
            string qry = "select patientid from hospital_outpatient";
            SqlDataAdapter da = new SqlDataAdapter(qry, cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "hospital_outpatient");
            PID.DataSource = ds;
            PID.DataTextField = "patientid";
            PID.DataBind();
            cn.Close();
            Calendar1.Visible = false;
            PID.Items.Insert(0, "...Select..."); 
        }
      
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox3.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
    }
    protected void PID_SelectedIndexChanged(object sender, EventArgs e)
    {
        cn.Open();
        SqlCommand Cmd = new SqlCommand("select patientname,opdate from hospital_outpatient WHERE patientid ='" + PID.SelectedValue + "'", cn);
        SqlDataReader dr = Cmd.ExecuteReader();
        if (dr.Read())
        {
            TextBox1.Text = dr[0].ToString();
            TextBox2.Text = dr[1].ToString();
        }
        dr.Close();
        cn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "sp_hospital_dischargesummary";
        cmd.Connection = cn;

        SqlParameter p = new SqlParameter("@patientid", SqlDbType.Int);
        p.Value = PID.Text;
        cmd.Parameters.Add(p);
        SqlParameter p1 = new SqlParameter("@patientname", SqlDbType.VarChar, 20);
        p1.Value = TextBox1.Text;
        cmd.Parameters.Add(p1);
        SqlParameter p2 = new SqlParameter("@joindate", SqlDbType.VarChar, 20);
        p2.Value = TextBox2.Text;
        cmd.Parameters.Add(p2);
        SqlParameter p3 = new SqlParameter("@dischargedate", SqlDbType.VarChar, 20);
        p3.Value = TextBox3.Text;
        cmd.Parameters.Add(p3);
        cmd.ExecuteNonQuery();
        cn.Close();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        cn.Open();
        string qry = "select * from hospital_dischargesummary";
        SqlDataAdapter da = new SqlDataAdapter(qry, cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
            
        cn.Close();
    }
}
