Imports Microsoft.VisualBasic
Imports System.Net.Mail
Public Class SendEmail
    Public Sub SendEmail(Subject As String, Body As String, Recipient As String)
        Dim objEnvio As New SmtpClient
        Dim objEmail As New MailMessage()

        objEnvio.Port = 587
        objEnvio.Host = "smtp.armazemdc.inf.br"
        objEnvio.Credentials = New Net.NetworkCredential("email", "senha")

        objEmail.From = New MailAddress("email")
        objEmail.Subject = Subject
        objEmail.Body = Body
        objEmail.To.Add(Recipient)

        objEmail.IsBodyHtml = True

        objEnvio.Send(objEmail)

    End Sub

End Class
