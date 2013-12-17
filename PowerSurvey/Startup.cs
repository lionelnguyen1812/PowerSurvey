using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(PowerSurvey.Startup))]
namespace PowerSurvey
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
