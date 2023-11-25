using System.ComponentModel.DataAnnotations;

namespace Store.Models
{
    public class Category
    {
        [Key]
        public int Id { get; set; }

        [Required(ErrorMessage = "Name is required")]
        [Display(Name = "Name")]
        public string Name { get; set; }

    }
}
