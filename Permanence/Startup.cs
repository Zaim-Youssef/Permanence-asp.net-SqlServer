using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Permanence.Startup))]
namespace Permanence
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
