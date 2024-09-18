namespace Repositories.Model;

public class Menu
{
    //id,restaurant_id,name,description
    public int Id { get; set; }
    public int RestaurantId { get; set; }
    public string Name { get; set; }
    public string Description { get; set; }
    
    public Restaurant Restaurant { get; set; }
    public List<Category> Categories { get; set; }
    
}