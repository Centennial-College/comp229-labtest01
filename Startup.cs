using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(COMP229_300867968_KevinMa_LabTest01.Startup))]
namespace COMP229_300867968_KevinMa_LabTest01
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
