namespace Repositories.Model;

public class Pricing
{
    //Id,ItemId,Quantity,PortionSize,Price
    public int Id { get; set; }
    public int ItemId { get; set; }
    public int Quantity { get; set; }
    public string PortionSize { get; set; }
    public decimal Price { get; set; }
    
    public Item Item { get; set; }
}