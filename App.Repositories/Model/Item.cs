namespace Repositories.Model;

public class Item
{
    //id,RetaurantId,CategoryId,Name,Description,Price,Photo
    public int Id { get; set; }
    public int RestaurantId { get; set; }
    public int CategoryId { get; set; }
    public string Name { get; set; }
    public string Description { get; set; }
    //public decimal Price { get; set; } fiyat ekleme gelicek
    public string Photo { get; set; }
    
    public List<Pricing> Pricings { get; set; }
    public List<Content> Contents { get; set; }
    public Restaurant Restaurant { get; set; }
    public Category Category { get; set; }
    
}