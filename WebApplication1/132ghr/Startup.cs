using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(_132ghr.Startup))]
namespace _132ghr
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
