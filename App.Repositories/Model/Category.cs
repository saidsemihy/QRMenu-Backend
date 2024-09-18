namespace Repositories.Model;

public class Category
{
    //id,RestaurantId,Name,Description,Photo
    public int Id { get; set; }
    public int RestaurantId { get; set; }
    public int MenuId { get; set; }
    public string Name { get; set; }
    public string Description { get; set; }
    public string Photo { get; set; }
    
    public Menu Menu { get; set; }
    public Restaurant Restaurant { get; set; }
}