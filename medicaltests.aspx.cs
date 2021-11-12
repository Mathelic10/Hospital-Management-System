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

public partial class medicaltests : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
           
            
        }
    }

    protected void mttddl_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (mttddl.SelectedValue == "Blood Test")
        {
            Panel1.Visible = true;
        }
        else
        {
            Panel2.Visible = true;
        }
    }
    protected void pidddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        cn.Open();
        if (pttypeddl.SelectedItem.Value == "In-Patient")
        {
            
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_hospital_medicaltestout";
            cmd.Connection = cn;

            SqlParameter p = new SqlParameter("@pid", SqlDbType.Int);
            p.Value = pidddl.SelectedValue.ToString();
            cmd.Parameters.Add(p);

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                pntxt.Text = dr[0].ToString();
            }
        }
        else if (pttypeddl.SelectedItem.Value == "Out-Patient")
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_hospital_medicaltestout";
            cmd.Connection = cn;

            SqlParameter p = new SqlParameter("@pid", SqlDbType.Int);
            p.Value = pidddl.SelectedValue.ToString();
            cmd.Parameters.Add(p);

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                pntxt.Text = dr[0].ToString();
            }
        }
        cn.Close();
    }
    protected void pttypeddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        cn.Open();
        if (pttypeddl.SelectedItem.Value == "In-Patient")
        {

            string qry;
            qry = "select patientid from hospital_inpatient";
            SqlDataAdapter da = new SqlDataAdapter(qry, cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "hospital_inpatient");
            pidddl.DataSource = ds;
            pidddl.DataTextField = "patientid";
            pidddl.DataBind();
            pidddl.Items.Insert(0, "...Select...");

        }
        else
            if (pttypeddl.SelectedItem.Value == "Out-Patient")
            {

                string qry;
                qry = "select patientid from hospital_outpatient";
                SqlDataAdapter da = new SqlDataAdapter(qry, cn);
                DataSet ds = new DataSet();
                da.Fill(ds, "hospital_outpatient");
                pidddl.DataSource = ds;
                pidddl.DataTextField = "patientid";
                pidddl.DataBind();
                pidddl.Items.Insert(0, "...Select...");


            }
            else
            {
                Response.Write("excute");
            }
        cn.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Panel1.Visible == true)
        {
            cn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_hospital_bloodtest";
            cmd.Connection = cn;

            SqlParameter p = new SqlParameter("@patienttype", SqlDbType.VarChar, 20);
            p.Value = pttypeddl.Text;
            cmd.Parameters.Add(p);

            SqlParameter p1 = new SqlParameter("@patientid", SqlDbType.Int);
            p1.Value = pidddl.Text;
            cmd.Parameters.Add(p1);

            SqlParameter p2 = new SqlParameter("@patientname", SqlDbType.VarChar, 20);
            p2.Value = pntxt.Text;
            cmd.Parameters.Add(p2);

            SqlParameter p3 = new SqlParameter("@mediclatestype", SqlDbType.VarChar, 20);
            p3.Value = mttddl.Text;
            cmd.Parameters.Add(p3);

            SqlParameter p4 = new SqlParameter("@bloodgroup", SqlDbType.VarChar, 20);
            p4.Value = bgtxt.Text;
            cmd.Parameters.Add(p4);

            SqlParameter p5 = new SqlParameter("@haemoglobin", SqlDbType.VarChar,20);
            p5.Value = hmtxt.Text;
            cmd.Parameters.Add(p5);

            SqlParameter p6 = new SqlParameter("@bloodsugar", SqlDbType.VarChar,20);
            p6.Value = bstxt.Text;
            cmd.Parameters.Add(p6);

            SqlParameter p7 = new SqlParameter("@sacid", SqlDbType.VarChar,20);
            p7.Value = suatxt.Text;
            cmd.Parameters.Add(p7);

            SqlParameter p8 = new SqlParameter("@description", SqlDbType.VarChar,20);
            p8.Value = rd1txt.Text;
            cmd.Parameters.Add(p8);

            cmd.ExecuteNonQuery();
            cn.Close();
        }
        else if (Panel2.Visible == true)
        {
            cn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_hospital_urintest";
            cmd.Connection = cn;

            SqlParameter p = new SqlParameter("@patienttype", SqlDbType.VarChar, 20);
            p.Value = pttypeddl.Text;
            cmd.Parameters.Add(p);

            SqlParameter p1 = new SqlParameter("@patientid", SqlDbType.Int);
            p1.Value = pidddl.Text;
            cmd.Parameters.Add(p1);

            SqlParameter p2 = new SqlParameter("@patientname", SqlDbType.VarChar, 20);
            p2.Value = pntxt.Text;
            cmd.Parameters.Add(p2);

            SqlParameter p3 = new SqlParameter("@mediclatestype", SqlDbType.VarChar, 20);
            p3.Value = mttddl.Text;
            cmd.Parameters.Add(p3);

            SqlParameter p4 = new SqlParameter("@color", SqlDbType.VarChar, 20);
            p4.Value = colortxt.Text;
            cmd.Parameters.Add(p4);

            SqlParameter p5 = new SqlParameter("@clarity", SqlDbType.VarChar,20);
            p5.Value = clartxt.Text;
            cmd.Parameters.Add(p5);

            SqlParameter p6 = new SqlParameter("@odor", SqlDbType.VarChar,20);
            p6.Value = odtxt.Text;
            cmd.Parameters.Add(p6);

            SqlParameter p7 = new SqlParameter("@specificgravity", SqlDbType.VarChar,20);
            p7.Value = sgtxt.Text;
            cmd.Parameters.Add(p7);

            SqlParameter p8 = new SqlParameter("@glucose", SqlDbType.VarChar,20);
            p8.Value = gltxt.Text;
            cmd.Parameters.Add(p8);

            SqlParameter p9 = new SqlParameter("@description", SqlDbType.VarChar,40);
            p9.Value = rd2txt.Text;
            cmd.Parameters.Add(p9);

            cmd.ExecuteNonQuery();
            cn.Close();
        }
        Response.Redirect("laborataries.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("laborataries.aspx");
    }
}
