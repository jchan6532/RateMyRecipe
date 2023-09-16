using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace RecipeSharingPlatform.Models
{
    public class Recipe
    {
        public int ID { get; set; }

        public string Content { get; set; }

        public int NumberOfSteps { get; set; }

        public int BelongsToUserID { get; set; }

        public DateTime PostedTime { get; set; }
    }
}
