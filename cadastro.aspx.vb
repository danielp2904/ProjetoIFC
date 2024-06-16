Imports System.Data.SqlClient
Imports System.Net.Mail
Imports SendEmail

Partial Class _Default
    Inherits System.Web.UI.Page
    Dim EnviarEmail As New SendEmail

    Protected Sub BtnCadastrar_Click(sender As Object, e As EventArgs) Handles BtnCadastrar.Click
        Dim ConnString As String = ConfigurationManager.ConnectionStrings("form").ConnectionString
        Using conexao As New SqlConnection(ConnString)
            conexao.Open()
            Dim adapter As New SqlDataAdapter

            Dim query As String = <![CDATA[
                INSERT INTO Usuario 
                (Nome, Email, Curso, Senha, Instituicao, Cidade, Campus) 
                VALUES 
                (@nome, @email, @curso, @senha, @instituicao, @cidade, @campus)]]>.Value

            Try
                EnviarEmail.SendEmail("IF para todos", "Seu cadastro foi realizado com sucesso, seja bem vindo!", txtEmail.Value)
                adapter.InsertCommand = New SqlCommand(query, conexao)
                adapter.InsertCommand.Parameters.AddWithValue("@nome", txtNome.Value)
                adapter.InsertCommand.Parameters.AddWithValue("@email", txtEmail.Value)
                adapter.InsertCommand.Parameters.AddWithValue("@curso", txtCurso.Value)
                adapter.InsertCommand.Parameters.AddWithValue("@instituicao", txtInstituicao.Value)
                adapter.InsertCommand.Parameters.AddWithValue("@cidade", txtCidade.Value)
                adapter.InsertCommand.Parameters.AddWithValue("@campus", txtCampus.Value)
                adapter.InsertCommand.Parameters.AddWithValue("@senha", txtSenha.Value)
                adapter.InsertCommand.ExecuteNonQuery()

                Response.Redirect("login.aspx")

            Catch ex As Exception
                Dim x = ex
                lblMensagem1.Text = "email não foi mandado"
                lblMensagem.Text = "Algo deu errado tente novamente!"
                lblMensagem.Visible = True
            End Try
        End Using
    End Sub
End Class

