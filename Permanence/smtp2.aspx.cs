using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace Permanence
{
    public partial class smtp2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                MailMessage ms = new MailMessage();
                ms.From = new MailAddress(TextBox4.Text, "Agenda Permanence");
                ms.To.Add(TextBox1.Text);
                ms.Subject = TextBox2.Text;
                ms.Body = TextBox3.Text;
                if (FileUpload1.HasFile)
                {
                    HttpFileCollection fc = Request.Files;
                    for (int i = 0; i < fc.Count; i++)
                    {
                        HttpPostedFile pf = fc[i];
                        Attachment attach = new Attachment(pf.InputStream, pf.FileName);
                        ms.Attachments.Add(attach);
                    }
                }
                SmtpClient sc = new SmtpClient("smtp.gmail.com", 587);
                sc.Port = 587;
                sc.Credentials = new NetworkCredential("youssef61719@gmail.com", "Ms3bd@1993");
                sc.EnableSsl = true;
                sc.Send(ms);
                Response.Write("Message sent");
            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }

}