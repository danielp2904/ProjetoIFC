Imports Microsoft.VisualBasic
Imports System.Net.Mail
Public Class SendEmail
    Public Sub SendEmail(Subject As String, Body As String)
        Dim objEnvio As New SmtpClient
        Dim objEmail As New MailMessage()

        objEnvio.Port = 587
        objEnvio.Host = "smtp.armazemdc.inf.br"
        objEnvio.Credentials = New Net.NetworkCredential("daniel@inovea.io", "fTli1K0MUzWl8BQuC5WC")

        objEmail.From = New MailAddress("daniel@inovea.io")
        objEmail.Subject = Subject
        objEmail.Body = Body
        objEmail.To.Add("daniel@inovea.io")

        objEmail.IsBodyHtml = True

        objEnvio.Send(objEmail)

    End Sub

End Class
