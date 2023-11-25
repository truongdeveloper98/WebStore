using System.ComponentModel.DataAnnotations;

namespace Store.Models
{
    public class Stock
    {
        public int Id { get; set; }

        [Required]
        [Display(Name="Name")]
        public string Name { get; set; }

        [Required]
        [Display(Name = "Quantity")]
        public int Qty { get; set; }

        [Required]
        [Display(Name = "ProductId")]
        public int ProductId { get; set; }

        public Product Product { get; set; }

        public bool IsLastElementOrdered { get; set; } = false;


    }
}
