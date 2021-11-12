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

public partial class pharmacy : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        
        
           
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "sp_hospital_pharmacy";
        cmd.Connection = cn;
        SqlParameter p = new SqlParameter("@patienttype", SqlDbType.VarChar, 20);
        p.Value = ptntyp.Text;
        cmd.Parameters.Add(p);
        SqlParameter p1 = new SqlParameter("@patientid", SqlDbType.Int);
        p1.Value = ptntid.Text;
        cmd.Parameters.Add(p1);
        SqlParameter p2 = new SqlParameter("@department", SqlDbType.VarChar, 20);
        p2.Value =dpt.Text;
        cmd.Parameters.Add(p2);
        SqlParameter p3 = new SqlParameter("@patientname", SqlDbType.VarChar, 20);
        p3.Value =ptntname.Text;
        cmd.Parameters.Add(p3);
        SqlParameter p4 = new SqlParameter("@medicine", SqlDbType.VarChar, 20);
        p4.Value =mdcnusd.Text;
        cmd.Parameters.Add(p4);
        cmd.ExecuteNonQuery();
        cn.Close();

    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        cn.Open();
        if (ptntyp.SelectedItem.Value == "In-Patient")
        {

            string qry = "select patientid from hospital_inpatient";
            //qry = qry + " union all select '...select...' order by 1";
            SqlDataAdapter da = new SqlDataAdapter(qry, cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "hospital_inpatient");
            ptntid.DataSource = ds;
            ptntid.DataTextField = "patientid";
            ptntid.DataBind();
            ptntid.Items.Insert(0, "...Select...");



        }
        else if (ptntyp.SelectedItem.Value == "Out-Patient")
        {
            string qry = "select patientid from hospital_outpatient";
            SqlDataAdapter da = new SqlDataAdapter(qry, cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "hospital_outpatient");
            ptntid.DataSource = ds;
            ptntid.DataTextField = "patientid";
            ptntid.DataBind();
            ptntid.Items.Insert(0, "...Select...");
        }
        else if (ptntyp.SelectedItem.Value == "...Select...")
        {
            Response.Redirect("pharmacy.aspx");
        }
        cn.Close();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
         
        if (ptntyp.SelectedItem.Value == "In-Patient")
        {
            cn.Open();
            SqlCommand Cmd = new SqlCommand("select department,patientname  from hospital_inpatient WHERE patientid ='" + ptntid.SelectedValue + "'", cn);
            SqlDataReader dr = Cmd.ExecuteReader();
            if (dr.Read())
            {
                dpt.Text = dr[0].ToString();
                ptntname.Text = dr[1].ToString();
            }
            dr.Close();
            cn.Close();
        }
        else if (ptntyp.SelectedItem.Value == "Out-Patient")
        {
            cn.Open();
            SqlCommand Cmd = new SqlCommand("select department,patientname  from hospital_outpatient WHERE patientid ='" + ptntid.SelectedValue + "'", cn);
            SqlDataReader dr = Cmd.ExecuteReader();
            if (dr.Read())
            {
                dpt.Text = dr[0].ToString();
                ptntname.Text = dr[1].ToString();
            }
            dr.Close();
            cn.Close();
        }
        
        
               
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("pharmacy.aspx");
    }
}
