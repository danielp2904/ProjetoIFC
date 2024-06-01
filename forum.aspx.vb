Imports System.Net.Mail
Imports System.Data.SqlClient
Imports SendEmail

Partial Class forum
    Inherits System.Web.UI.Page
    Dim EnviarEmail As New SendEmail

    Protected Sub btnEnviar_Click(sender As Object, e As EventArgs) Handles btnEnviar.Click
        Dim ConnString As String = ConfigurationManager.ConnectionStrings("form").ConnectionString
        Dim ID As Integer = 0

        If Not IsNothing(Session("UserID")) Then
            ID = CInt(Session("UserID"))

            Using conexao As New SqlConnection(ConnString)
                conexao.Open()
                Dim adapter As New SqlDataAdapter
                Try
                    adapter.InsertCommand = New SqlCommand("INSERT INTO Forum (Assunto, Mensagem) VALUES (@assunto, @mensagem)", conexao)
                    adapter.InsertCommand.Parameters.AddWithValue("@assunto", txtAssunto.Text)
                    adapter.InsertCommand.Parameters.AddWithValue("@mensagem", txtMensagem.Text)
                    adapter.InsertCommand.ExecuteNonQuery()

                    adapter.SelectCommand = New SqlCommand("SELECT nome, email, instituicao, campus, cidade, curso FROM Usuario WHERE IDUsuario = @userID", conexao)
                    adapter.SelectCommand.Parameters.AddWithValue("@userID", ID)

                    Dim reader As SqlDataReader = adapter.SelectCommand.ExecuteReader()

                    If reader.Read() Then
                        Dim nome As String = reader("nome").ToString
                        Dim email As String = reader("email").ToString
                        Dim instituicao As String = reader("instituicao").ToString
                        Dim campus As String = reader("campus").ToString
                        Dim cidade As String = reader("cidade").ToString
                        Dim curso As String = reader("curso").ToString

                        Dim AssuntoEmail As String = txtAssunto.Text
                        Dim MensagemEmail As String = String.Format("Nome: {0} <br /> Email: {1} <br /> Instituição: {2} <br /> Campus: {3} <br /> Cidade: {4} <br /> Curso: {5} <br /> Mensagem: {6}", nome, email, instituicao, campus, cidade, curso, txtMensagem.Text)

                        EnviarEmail.SendEmail(AssuntoEmail, MensagemEmail)

                    End If

                    lblMensagem.Text = "Fórum cadastrado com sucesso!"

                Catch ex As Exception
                    lblMensagem.Text = "Fórum não cadastrado!"
                End Try
            End Using
        Else
            lblMensagem.Text = "Você precisa estar logado</br>postar no fórum."
        End If
    End Sub

End Class
