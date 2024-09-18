namespace Repositories.Model;

public class Restaurant
{
    public int Id { get; set; }
    //name,address,phone,website,description
    public string Name { get; set; }
    public string Description { get; set; }
    public string Address { get; set; }
    public string Phone { get; set; }
    //email,website
    public string Website { get; set; }
    public List<Menu> Menus { get; set; }
    
    
}