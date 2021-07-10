using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPageExample
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DCDataContext dc = new DCDataContext();
            grd.DataSource = dc.commande.ToList();
            grd.DataBind();
            if (!IsPostBack)
                afficher(dc);
        }

        private void afficher(DCDataContext dc)
        {
            id_article.DataTextField = "Id";
            id_article.DataSource = dc.articles.ToList();
            id_article.DataBind();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        DCDataContext dc = new DCDataContext();

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            commande commande = new commande();

           /// commande.Id = Convert.ToInt32(TextId.Text);
            commande.nom_commande = TextName.Text;
            commande.quantite_article = Convert.ToInt32(TextQtt.Text);
            commande.date_commande = DateTime.Now;
            commande.article_id = Convert.ToInt32(id_article.SelectedValue);

            dc.commande.InsertOnSubmit(commande);
            dc.SubmitChanges();
            lblAlert.Text = "Inserted Successfully";
            LoadData();
            TextId.Text = "";
            TextName.Text = "";
            TextQtt.Text = "";
           
        }
        void LoadData()
        {
            var st = from s in dc.commande select s;
            grd.DataSource = st;
            grd.DataBind();


        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

            commande commande = (from ob in dc.commande
                                   where ob.Id == Convert.ToInt32(TextId.Text)
                                   select ob).First();


            commande.Id = Convert.ToInt32(TextId.Text);
            commande.nom_commande = TextName.Text;
            commande.date_commande = DateTime.Now;
            commande.quantite_article = Convert.ToInt32(TextQtt.Text);
          
            commande.article_id = Convert.ToInt32(id_article.SelectedValue);
            dc.SubmitChanges();
            LoadData();
            lblAlert.Text = "updated Successfully";
            TextId.Text = "";
            TextName.Text = "";
            TextQtt.Text = "";
         
        }



        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                commande commande = (from ob in dc.commande
                                     where ob.Id == Convert.ToInt32(TextId.Text)
                                     select ob).First();
                dc.commande.DeleteOnSubmit(commande);
                dc.SubmitChanges();
                LoadData();
                lblAlert.Text = "deleted Successfully";
                TextId.Text = "";
                TextName.Text = "";
                TextQtt.Text = "";
            }
            catch
            {
                lblAlert.Text = "cette commend n'exist pas";
            }
         
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
             commande commande = (from ob in dc.commande
                                   where ob.Id == Convert.ToInt32(TextId.Text)
                                   select ob).First();
            TextId.Text = commande.Id.ToString();
            TextName.Text = commande.nom_commande.ToString();
            TextQtt.Text = commande.quantite_article.ToString();
            id_article.SelectedValue = commande.article_id.ToString();


            LoadData();
            }
            catch
            {
                lblAlert.Text = "cette commend n'exist pas";
            }
            

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}