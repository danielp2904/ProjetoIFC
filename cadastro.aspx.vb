
Imports System.Data.SqlClient
Imports System.Net.Mail

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        'configurando pra quem vai a mensagem
        Dim objEnvio As New SmtpClient
        'e qual é a mensagem
        Dim objEmail As New MailMessage()


        'está fazendo a configuração de onde está saindo o email 
        objEnvio.Port = 587
        objEnvio.Host = "smtp.armazemdc.inf.br"
        objEnvio.Credentials = New Net.NetworkCredential("daniel@inovea.io", "fTli1K0MUzWl8BQuC5WC")



        'pega a conexão da web confg
        Dim ConnString As String = ConfigurationManager.ConnectionStrings("form").ConnectionString

        'está criando uma conexao
        Using conexao As New SqlConnection(ConnString)
            conexao.Open()

            'pegando as informações dos inputs e mandando para o banco
            Dim nome As String = Request.Form("txtNome")
            Dim email As String = Request.Form("txtEmail")
            Dim instituicao As String = Request.Form("txtInstituicao")
            Dim cidade As String = Request.Form("txtCidade")
            Dim campus As String = Request.Form("txtCampus")
            Dim curso As String = Request.Form("txtCurso")
            Dim senha As String = Request.Form("txtSenha")

            'fazendo a inserção no banco
            Dim query As String = "INSERT INTO Usuario (Nome, Email, Curso, Senha, Instituicao, Cidade, Campus) VALUES (@nome, @email, @curso, @senha, @instituicao, @cidade, @campus)"

            Try
                'está configurando a mensagem, assunto, para quem vai e de que email está saindo
                objEmail.From = New MailAddress("daniel@inovea.io")
                objEmail.Subject = "IF para todos"
                objEmail.Body = "Seu cadastro foi realizado com sucesso, seja bem vindo!"
                objEmail.To.Add(txtEmail.Text)


                Using comando As New SqlCommand(query, conexao)
                    comando.Parameters.AddWithValue("@nome", nome)
                    comando.Parameters.AddWithValue("@email", email)
                    comando.Parameters.AddWithValue("@curso", curso)
                    comando.Parameters.AddWithValue("@instituicao", instituicao)
                    comando.Parameters.AddWithValue("@cidade", cidade)
                    comando.Parameters.AddWithValue("@campus", campus)
                    comando.Parameters.AddWithValue("@senha", senha)

                    comando.ExecuteNonQuery()
                    'está mandando o email
                    objEnvio.Send(objEmail)
                End Using

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

