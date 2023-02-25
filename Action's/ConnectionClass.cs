using ArchiveTask.Database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ArchiveTask.Action_s
{
    internal class ConnectionClass
    {
        public static ArchiveTask17Entities ConnectionPoint { get; set; } = new ArchiveTask17Entities();
    }
}
