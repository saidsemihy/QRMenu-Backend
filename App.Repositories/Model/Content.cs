namespace Repositories.Model;

public class Content
{
    //id,ItemId,Name,Description
    public int Id { get; set; }
    public int ItemId { get; set; }
    public string Name { get; set; }
    public string Description { get; set; }
    
    public Item Item { get; set; }
}