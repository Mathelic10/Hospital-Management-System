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

public partial class viewtests : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            pttyddl.Items.Insert(0, "---Select---");
            pttyddl.Items.Insert(1, "In-Patient");
            pttyddl.Items.Insert(2, "Out-Patient");
            testddl.Items.Insert(0,"---Select---");
            testddl.Items.Insert(1,"Blood Test");
            testddl.Items.Insert(2,"Urine Test");
        }
       
    }
   
  
    protected void pttyddl_SelectedIndexChanged(object sender, EventArgs e)
    {
        {
            
                
                if (pttyddl.SelectedItem.Value == "In-Patient")
                {
                    SqlCommand cmd = new SqlCommand("select patientid from hospital_inpatient", cn);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    pidddl.DataSource = ds;
                    pidddl.DataTextField = "patientid";
                    pidddl.DataBind();
                    pidddl.Items.Insert(0,"---Select---");
                }
                else
                    if (pttyddl.SelectedItem.Value == "Out-Patient")
                    {
                        SqlCommand cmd = new SqlCommand("select patientid from hospital_outpatient", cn);
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        pidddl.DataSource = ds;
                        pidddl.DataTextField = "patientid";
                        pidddl.DataBind();
                        pidddl.Items.Insert(0, "---Select---");
                       
                    }

                
                
        }
       
    }
    protected void appbtn_Click(object sender, EventArgs e)
    {
        
        if (testddl.SelectedItem.Value == "Blood Test")
        {
            
            string qry = "select * from hospital_bloodtest where patientid="+pidddl.SelectedItem.Value+" ";
            SqlDataAdapter da = new SqlDataAdapter(qry, cn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            
        }
        else if (testddl.SelectedItem.Value == "Urine Test")
        {
            
            string qry = "select * from hospital_urintest where patientid=" + pidddl.SelectedItem.Value + " ";
            SqlDataAdapter da = new SqlDataAdapter(qry, cn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            
        }
    }
    protected void backbtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("doctorsden.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("doctorsden.aspx");
    }
}
