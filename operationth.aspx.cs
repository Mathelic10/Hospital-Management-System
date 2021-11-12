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

public partial class operationth : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        { 
        }
    }
    
    
    protected void pttypeddl_SelectedIndexChanged(object sender, EventArgs e)
    {

        cn.Open();
        if (pttypeddl.SelectedItem.Value == "In-Patient")
        {
            SqlCommand cmd = new SqlCommand("select patientid from hospital_inpatient", cn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            pidddl.DataSource = ds;
            pidddl.DataTextField = "patientid";
            pidddl.DataBind();
            pidddl.Items.Insert(0, "...Select...");
        }
        else
            if (pttypeddl.SelectedItem.Value == "Out-Patient")
        {
            SqlCommand cmd = new SqlCommand("select patientid from hospital_outpatient", cn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            pidddl.DataSource = ds;
            pidddl.DataTextField = "patientid";
            pidddl.DataBind();
            pidddl.Items.Insert(0, "...Select...");
        }
       
        cn.Close();
    }
    protected void pidddl_SelectedIndexChanged(object sender, EventArgs e)
    {
       
       
        if (pttypeddl.SelectedItem.Value == "In-Patient")
        {
            cn.Open();
            SqlCommand cmd = new SqlCommand("select patientname,doctor from hospital_inpatient where patientid='"+ pidddl.Text +"'", cn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                pntxt.Text = dr[0].ToString();
                doctxt.Text = dr[1].ToString();
            }

            cn.Close();
        }
        else if (pttypeddl.SelectedItem.Value == "Out-Patient")
        {
            cn.Open();
            SqlCommand cmd = new SqlCommand("select patientname,assigndoctor from hospital_outpatient where patientid='"+ pidddl.Text +"'", cn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                pntxt.Text = dr[0].ToString();
                doctxt.Text = dr[1].ToString();
            }
             cn.Close();
        }
       
    }
   
    protected void sbtn_Click(object sender, EventArgs e)
    {
        cn.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "sp_hospital_operation";
        cmd.Connection = cn;

        SqlParameter p = new SqlParameter("@patienttype", SqlDbType.VarChar, 20);
        p.Value = pttypeddl.Text;
        cmd.Parameters.Add(p);

        SqlParameter p1 = new SqlParameter("@patientid", SqlDbType.VarChar, 20);
        p1.Value = pidddl.Text;
        cmd.Parameters.Add(p1);

        SqlParameter p2 = new SqlParameter("@patientname", SqlDbType.VarChar, 20);
        p2.Value = pntxt.Text;
        cmd.Parameters.Add(p2);

        SqlParameter p3 = new SqlParameter("@refdoctor", SqlDbType.VarChar, 20);
        p3.Value = doctxt.Text;
        cmd.Parameters.Add(p3);

        SqlParameter p4 = new SqlParameter("@operationtype", SqlDbType.VarChar, 20);
        p4.Value = optddl.Text;
        cmd.Parameters.Add(p4);

        SqlParameter p5 = new SqlParameter("@operatonresult", SqlDbType.VarChar, 20);
        p5.Value = orddl.Text;
        cmd.Parameters.Add(p5);

        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("laborataries.aspx");
        
    }
}
