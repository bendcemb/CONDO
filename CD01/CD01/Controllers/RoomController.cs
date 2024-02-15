using CD01.Data;
using CD01.Models;
using Microsoft.AspNetCore.Mvc;

namespace CD01.Controllers
{
    public class RoomController : Controller
    {
        private readonly ApplicationDBContext _db;

        public RoomController(ApplicationDBContext db)
        {
            _db = db;
        }

        public IActionResult Index()
        {
            
            return View();
        }

        public IActionResult RoomIndex()
        {
            IEnumerable<Room> allrooms = _db.Rooms;
            return View(allrooms);
        }

        public IActionResult RoomCreate() 
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult RoomCreate(Room obj)
        { 
            _db.Rooms.Add(obj);
            _db.SaveChanges();
            return RedirectToAction("RoomIndex");
        }
    }
}
