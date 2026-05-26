using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace crub
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\Users\emely\OneDrive\Documentos\EstudiantesDB.accdb");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            RadioButtonList1.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            OleDbDataAdapter da = new OleDbDataAdapter("insert into estudiantes (Id, Nombre, Genero, Email, Ciudad) values (" + TextBox1.Text + ", '" + TextBox2.Text + "', '" + RadioButtonList1.SelectedItem.Text + "', '" + TextBox3.Text + "', '" + TextBox4.Text + "')", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Datos Guardados')", true);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            OleDbDataAdapter da = new OleDbDataAdapter("delete from Estudiantes where Id='"+TextBox1.Text+"'", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Student Deleted')", true);
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            OleDbDataAdapter da = new OleDbDataAdapter("select * from Estudiantes", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            bool temp = false;
            con.Open();
            OleDbCommand cmd = new OleDbCommand("select * from Estudiantes where Id='" + TextBox1.Text.Trim() + "'", con);
            OleDbDataReader dr= cmd.ExecuteReader();
            while(dr.Read())
            {
                TextBox2.Text = dr["Nombre"].ToString();
                RadioButtonList1.Text = dr["Genero"].ToString();
                TextBox3.Text = dr["Email"].ToString();
                TextBox4.Text = dr["Ciudad"].ToString();
                temp = true;
            }
            if (temp==false)
            {
                Label1.Text = "Student Not Found";
                //Se puede implementar con alert tambien: ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Student Not Found')", true);
            }
            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            OleDbDataAdapter da = new OleDbDataAdapter("update Estudiantes set Id='" + TextBox1.Text + "', Nombre='" + TextBox2.Text + "', Genero='" + RadioButtonList1.SelectedItem.Text + "', Email='" + TextBox3.Text + "', Ciudad='" + TextBox4.Text + "' where Id='" + TextBox1.Text + "'", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Student Updated')", true);
        }
    }
}