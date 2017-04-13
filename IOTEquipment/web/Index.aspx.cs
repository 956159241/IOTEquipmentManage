using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using RL.DBUtility;

namespace web
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();
            }
        }
        public void BindData() 
        {
            string sql = "select * from IOTEquipment";
            DataSet ds = DbHelperSQL.Query(sql);
            Boolean flag = (Convert.ToString(Session["Usertype"]) == "管理员");
            if (flag)
            {
                this.GridView1.Columns[4].Visible = false;
            }
            else 
            {
                this.GridView1.Columns[1].Visible = false;
                this.GridView1.Columns[2].Visible = false;
                this.GridView1.Columns[3].Visible = false;

            }
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        } 
    }
}