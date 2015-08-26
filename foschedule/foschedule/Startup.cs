using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(foschedule.Startup))]
namespace foschedule
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
