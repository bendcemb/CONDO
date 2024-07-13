using Microsoft.AspNetCore.Mvc;

namespace CD02.Controllers
{
    public class CompanyController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
