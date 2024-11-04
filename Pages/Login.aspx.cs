using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using System.Windows;
using System.Data.Sql;
using System.Web.Services.Description;



namespace AppListaDeCompras
{
    public partial class Login : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection sqlConnection = new SqlConnection();
                sqlConnection.ConnectionString = "Server = DESKTOP-16LA907; Database = AppListaDeComprasDB; Trusted_Connection = True;";
                sqlConnection.Open();



                ///////
                SqlCommand sqlCommand = new SqlCommand();
                sqlCommand.Connection = sqlConnection;
                sqlCommand.CommandType = CommandType.Text;
                sqlCommand.CommandText =
                      "SELECT [USERS_NAME], " +
                           "[PASSWORDS] " +
                      "FROM [dbo].[USERS] " +
                     "WHERE " +
                           "   [USERS_NAME] = '" + UserName.Text + "' AND" +
                           "   [PASSWORDS] = '" + Password.Text + "'";


         
                SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();

                if (sqlDataReader.HasRows)
                {

                    Response.Redirect("Index.aspx");
                    //MessageBox.Show("Datos Correctos");
                    //return;
                }
                else
                {
                    Response.Write("<script>alert('Los balores ingresados son incorecto no se encuentra ese usuario el base de datos')</script>");
                    //MessageBox.Show("Datos invalido porfavor introdusca de nuebo");
                    //return;
                }


            } catch (Exception ex)
            {
                
                Response.Write(ex.Message);
            }

          


        }



    }
}