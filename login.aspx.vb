Imports System.Data.SqlClient
Imports System.Data
Imports System.Web
Partial Class login
    Inherits System.Web.UI.Page


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        'pega a conexão da web confg
        Dim ConnString As String = ConfigurationManager.ConnectionStrings("form").ConnectionString

        'está criando uma conexao
        Using conexao As New SqlConnection(ConnString)
            conexao.Open()

            Dim query As String = "SELECT COUNT(1) from contato WHERE email=@email AND senha=@senha"

            Using comando As New SqlCommand(query, conexao)
                comando.Parameters.AddWithValue("@email", txtEmail.Text)
                comando.Parameters.AddWithValue("@senha", txtSenha.Text)

                Dim count As Integer = Convert.ToInt32(comando.ExecuteScalar())

                If count = 1 Then
                    Dim sql As String = "SELECT idCadastro FROM contato WHERE email=@email"
                    comando.CommandText = sql
                    Dim ID As Integer = Convert.ToInt32(comando.ExecuteScalar())
                    Session("UserID") = ID

                    Session("email") = txtEmail.Text

                    Response.Redirect("default.aspx")
                Else
                    lblMensagem.Text = "Email ou senha incorretos!"
                End If


            End Using

        End Using

    End Sub

End Class
