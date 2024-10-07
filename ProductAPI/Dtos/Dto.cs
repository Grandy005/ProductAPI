namespace ProductAPI.Dtos
{
    public class Dto
    {
        public record ProductDto(Guid Id, string Name, int Price, DateTime CreatedTime);
        public record CreateProductDto(string Name, int Price);
    }
}
