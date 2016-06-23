using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP229_300867968_KevinMa_LabTest01
{
    public partial class ValidationForm : System.Web.UI.Page
    {
        protected void submitButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                submissionMessageLabel.Text = "Successfully submitted!";
            }
        }
    }
}