using CD01.Models;
using Microsoft.EntityFrameworkCore;

namespace CD01.Data
{
    public class ApplicationDBContext : DbContext
    {
        public ApplicationDBContext(DbContextOptions<ApplicationDBContext>options):base(options) { 
        
        }

        public DbSet<Room> Rooms { get; set; }
        public DbSet<Room> CMM_ROOMs { get; set; }
    }
}
