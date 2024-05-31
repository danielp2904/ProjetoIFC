Imports System.Net.Mail
Imports System.Data.SqlClient

Partial Class forum
    Inherits System.Web.UI.Page
    Protected Sub btnEnviar_Click(sender As Object, e As EventArgs) Handles btnEnviar.Click
        Dim ConnString As String = ConfigurationManager.ConnectionStrings("form").ConnectionString

        Dim objEnvio As New SmtpClient
        Dim objEmail As New MailMessage()

        objEnvio.Port = 587
        objEnvio.Host = "smtp.armazemdc.inf.br"
        objEnvio.Credentials = New Net.NetworkCredential("daniel@inovea.io", "D@N13l29")

        Dim assunto As String = Request.Form("txtAssunto")
        Dim mensagem As String = Request.Form("txtMensagem")

        Dim ID As Integer

        If Not IsNothing(Session("UserID")) Then
            ID = CInt(Session("UserID"))

            Using conexao As New SqlConnection(ConnString)
                conexao.Open()

                Dim sql As String = "SELECT nome, email, instituicao, campus, cidade, curso FROM contato WHERE idCadastro = @userID"

                Dim query As String = "INSERT INTO forum (assunto, mensagem) VALUES (@assunto, @mensagem)"

                Try
                    Using comando As New SqlCommand(query, conexao)
                        comando.Parameters.AddWithValue("@assunto", assunto)
                        comando.Parameters.AddWithValue("@mensagem", mensagem)

                        comando.ExecuteNonQuery()

                        lblMensagem.Text = "Fórum cadastrado com sucesso!"
                    End Using

                    Using comando As New SqlCommand(sql, conexao)
                        comando.Parameters.AddWithValue("@userID", ID)

                        Dim reader As SqlDataReader = comando.ExecuteReader()

                        If reader.Read() Then
                            Dim nome As String = reader("nome").ToString
                            Dim email As String = reader("email").ToString
                            Dim instituicao As String = reader("instituicao").ToString
                            Dim campus As String = reader("campus").ToString
                            Dim cidade As String = reader("cidade").ToString
                            Dim curso As String = reader("curso").ToString

                            objEmail.From = New MailAddress("daniel@inovea.io")
                            objEmail.Subject = txtAssunto.Text
                            objEmail.Body = "Nome: " & nome & "<br />" & "Email: " & email & "<br />" & "Instituição: " & instituicao & "<br />" & "Campus: " & campus & "<br />" & "Cidade: " & cidade & "<br />" & "Curso: " & curso & "<br />" & "Mensagem: " & txtMensagem.Text
                            objEmail.To.Add("daniel@inovea.io")

                            objEmail.IsBodyHtml = True

                            objEnvio.Send(objEmail)
                        End If

                    End Using

                Catch ex As Exception
                    lblMensagem.Text = "Fórum não cadastrado!"
                End Try
            End Using
        Else
            lblMensagem.Text = "Você precisa estar logado para postar no fórum."
        End If
    End Sub

End Class
