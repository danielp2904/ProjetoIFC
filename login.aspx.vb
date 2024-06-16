Imports System.Data.SqlClient
Partial Class login
    Inherits System.Web.UI.Page
    Protected Sub BtnLogin_Click(sender As Object, e As EventArgs) Handles BtnLogin.Click
        Dim ConnString As String = ConfigurationManager.ConnectionStrings("form").ConnectionString
        Using conexao As New SqlConnection(ConnString)
            conexao.Open()
            Dim adapter As New SqlDataAdapter

            adapter.SelectCommand = New SqlCommand("SELECT top(1) COUNT(*) from Usuario WHERE Email=@email AND Senha=@senha", conexao)
            adapter.SelectCommand.Parameters.AddWithValue("@email", txtEmail.Value)
            adapter.SelectCommand.Parameters.AddWithValue("@senha", txtSenha.value)

            Dim count As Integer = CInt(adapter.SelectCommand.ExecuteScalar())

            If count = 1 Then
                adapter.SelectCommand = New SqlCommand("SELECT IDUsuario FROM Usuario WHERE Email=@email", conexao)
                adapter.SelectCommand.Parameters.AddWithValue("@email", txtEmail.Value)
                Dim ID As Integer = CInt(adapter.SelectCommand.ExecuteScalar())
                Session("UserID") = ID

                Session("email") = txtEmail.Value

                Response.Redirect("default.aspx")
            Else
                lblMensagem.Text = "<br>Email ou senha incorretos!"
            End If
        End Using
    End Sub
End Class
