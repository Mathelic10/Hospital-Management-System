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

public partial class reception : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
            filldrop();
            pidddl.Items.Insert(0, "...Select...");
        }
     
    }
    void filldrop()
    {
        cn.Open();
        string qry;
        qry = "select patientid from hospital_inpatient";
        SqlDataAdapter da = new SqlDataAdapter(qry, cn);
        DataSet ds = new DataSet();
        da.Fill(ds, "hospital_inpatient");
        pidddl.DataSource = ds;
        pidddl.DataTextField = "patientid";
        pidddl.DataBind();

        cn.Close();
    }


    protected void pidddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        {
            cn.Open();
            SqlCommand cmd = new SqlCommand("select patientname,age,department,doctor from hospital_inpatient where patientid='" + pidddl.Text + "'", cn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                pntxt.Text = dr[0].ToString();
                agtxt.Text = dr[1].ToString();
                deptxt.Text = dr[2].ToString();
                doctxt.Text = dr[3].ToString();
            }

            cn.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "sp_hospital_patientinfoenter";
        cmd.Connection = cn;

        SqlParameter pd = new SqlParameter("@pid", SqlDbType.VarChar, 20);
        pd.Value = pidddl.SelectedItem.Text;
        cmd.Parameters.Add(pd);

        SqlParameter pname = new SqlParameter("@patientname", SqlDbType.VarChar, 20);
        pname.Value = pntxt.Text;
        cmd.Parameters.Add(pname);

        SqlParameter age = new SqlParameter("@age", SqlDbType.Int);
        age.Value = agtxt.Text;
        cmd.Parameters.Add(age);

        SqlParameter dep = new SqlParameter("@department", SqlDbType.VarChar, 20);
        dep.Value = deptxt.Text;
        cmd.Parameters.Add(dep);

        SqlParameter doct = new SqlParameter("@doctor", SqlDbType.VarChar, 20);
        doct.Value = doctxt.Text;
        cmd.Parameters.Add(doct);

        cmd.ExecuteNonQuery();
        cn.Close();

        Response.Redirect("receptionhome.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("receptionhome.aspx");
    }
}
