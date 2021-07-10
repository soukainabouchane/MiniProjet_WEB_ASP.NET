using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPageExample
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DCDataContext dc = new DCDataContext();
            Object nom = Session["nom"];
            if (nom == null)
            {
                Response.Redirect("WebForm4.aspx");
            }
            else
            {
                grd.DataSource = dc.articles.ToList();
                grd.DataBind();
                if (!IsPostBack)
                    afficher(dc);
            }
           
        }

        private void afficher(DCDataContext dc)
        {
            id_categorie.DataTextField = "Id";
            id_categorie.DataSource = dc.categorie.ToList();
            id_categorie.DataBind();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        DCDataContext dc = new DCDataContext();

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
           
            articles articles = new articles();
          
           /// articles.Id = Convert.ToInt32(TextId.Text);
            articles.nom_article = TextName.Text;
            articles.prix_unitaire = Convert.ToInt32(TextPrix.Text);
            articles.descreption = TextDesc.Text;
            articles.categorie_id = Convert.ToInt32(id_categorie.SelectedValue);

            dc.articles.InsertOnSubmit(articles);
            dc.SubmitChanges();
            lblAlert.Text = "Inserted Successfully";
            LoadData();
            TextId.Text = "";
            TextName.Text = "";
            TextPrix.Text = "";
            TextDesc.Text = "";
        }
           void LoadData()
        {
            var st = from s in dc.articles select s;
            grd.DataSource = st;
            grd.DataBind();
           

        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

       protected void btnUpdate_Click(object sender, EventArgs e)
        {

            articles articles = (from ob in dc.articles
           where ob.Id == Convert.ToInt32(TextId.Text) select ob).First();

           
            articles.Id = Convert.ToInt32(TextId.Text);
            articles.nom_article = TextName.Text;
            articles.prix_unitaire = Convert.ToInt32(TextPrix.Text);
            articles.descreption = TextDesc.Text;
            articles.categorie_id = Convert.ToInt32(id_categorie.SelectedValue);
            dc.SubmitChanges();
            LoadData();
            lblAlert.Text = "updated Successfully";
            TextId.Text = "";
            TextName.Text = "";
            TextPrix.Text = "";
            TextDesc.Text = "";

        }

      

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            ///ajouté vérification
            try
            {
            articles articles = (from ob in dc.articles
                                 where ob.Id == Convert.ToInt32(TextId.Text)
                                 select ob).First();

            dc.articles.DeleteOnSubmit(articles);
            dc.SubmitChanges();  
            LoadData();
            lblAlert.Text = "deleted Successfully";
                TextId.Text = "";
                TextName.Text = "";
                TextPrix.Text = "";
              TextDesc.Text = "";
            }
            catch
            {
                lblAlert.Text = "cette article est déja existe d'un commend (impossible de supprimer cette article) ou n'exist pas dans le table des articles";
            }
           
            }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
            articles articles = (from ob in dc.articles
                                 where ob.Id == Convert.ToInt32(TextId.Text)
                                 select ob).First();
            TextId.Text = articles.Id.ToString();
           TextName.Text=  articles.nom_article.ToString();
            TextPrix.Text = articles.prix_unitaire.ToString();
            TextDesc.Text = articles.descreption.ToString();
            id_categorie.SelectedValue = articles.categorie_id.ToString();


            LoadData();
            }
            catch
            {
                lblAlert.Text = "cette article n'exist pas";
            }

          
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void id_categorie_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}