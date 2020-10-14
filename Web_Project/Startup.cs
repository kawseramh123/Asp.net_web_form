using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Web_Project.Startup))]
namespace Web_Project
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
