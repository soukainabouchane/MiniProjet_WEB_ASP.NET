using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPageExample
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DCDataContext dc = new DCDataContext();
            grd.DataSource = dc.categorie.ToList();
            grd.DataBind();
          
        }
      

   

        DCDataContext dc = new DCDataContext();

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            categorie categorie = new categorie();

            categorie.Id = Convert.ToInt32(TextId.Text);
            categorie.nom_categorie = TextName.Text;
            categorie.descrption = TextDesc.Text;
            

            dc.categorie.InsertOnSubmit(categorie);
            dc.SubmitChanges();
            lblAlert.Text = "Inserted Successfully";
            LoadData();
            TextId.Text = "";
            TextName.Text = "";
            TextDesc.Text = "";

        }
        void LoadData()
        {
            var st = from s in dc.categorie select s;
            grd.DataSource = st;
            grd.DataBind();


        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

            categorie categorie = (from ob in dc.categorie
                                 where ob.Id == Convert.ToInt32(TextId.Text)
                                 select ob).First();


            categorie.Id = Convert.ToInt32(TextId.Text);
            categorie.nom_categorie = TextName.Text;
            categorie.descrption= TextDesc.Text;

         
            dc.SubmitChanges();
            LoadData();
            lblAlert.Text = "updated Successfully";
            TextId.Text = "";
            TextName.Text = "";
            TextDesc.Text = "";

        }



        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                categorie categorie = (from ob in dc.categorie
                                       where ob.Id == Convert.ToInt32(TextId.Text)
                                       select ob).First();
                dc.categorie.DeleteOnSubmit(categorie);

                dc.SubmitChanges();
                LoadData();
                lblAlert.Text = "deleted Successfully";
                TextId.Text = "";
                TextName.Text = "";
                TextDesc.Text = "";
            }
            catch
            {
                lblAlert.Text = "cette categorie est déja exist dans un article ou n'exist pas dans le table des categories";
            }
            

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
            categorie categorie = (from ob in dc.categorie
                                 where ob.Id == Convert.ToInt32(TextId.Text)
                                 select ob).First();
            TextId.Text = categorie.Id.ToString();
            TextName.Text = categorie.nom_categorie.ToString();
            TextDesc.Text = categorie.descrption.ToString();



            LoadData();
            }
            catch
            {
       lblAlert.Text = "cette categorie n'exist pas";
            }


            
        }

    



    }
}