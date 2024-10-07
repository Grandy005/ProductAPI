using Google.Protobuf.WellKnownTypes;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using MySql.Data.MySqlClient;
using MySqlX.XDevAPI.Common;
using ProductAPI.Model;
using ProductAPI.Dtos;
using Swashbuckle.AspNetCore.SwaggerUI;
using System.Reflection.Metadata.Ecma335;
using static ProductAPI.Dtos.Dto;

namespace ProductAPI.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class ProductController : ControllerBase
    {
        [HttpGet]

        public object Get()
        {
            Connect conn = new Connect();

            string query = "SELECT * FROM Products";

            MySqlCommand cmd = new MySqlCommand(query, conn.Connection);

            conn.Connection.Open();

            List<Product> response = new List<Product>();

            using (MySqlDataReader reader = cmd.ExecuteReader())
            {
                while (reader.Read())
                {
                    Product product = new Product();
                    product.Id = reader.GetGuid(0);
                    product.Name = reader.GetString(1);
                    product.Price = reader.GetInt32(2);
                    product.CreatedTime = reader.GetDateTime(3);

                    response.Add(product);
                }
            }

            conn.Connection.Close();

            return new { response };
        }

        [HttpPost]

        public ActionResult<Product> Post(CreateProductDto product)
        {
            Connect conn = new Connect();

            conn.Connection.Open();

            string query = "INSERT INTO `products`(`Id`, `Name`, `Price`, `CreatedTime`) VALUES (@Id,@Name,@Price,@CreatedTime)";
            Product result = new Product
            {
                Id = Guid.NewGuid(),
                Name = product.Name,
                Price = product.Price,
                CreatedTime = DateTime.Now
            };

            MySqlCommand cmd = new MySqlCommand(query, conn.Connection);

            cmd.Parameters.AddWithValue("@Id", result.Id);
            cmd.Parameters.AddWithValue("@Name", result.Name);
            cmd.Parameters.AddWithValue("@Price", result.Price);
            cmd.Parameters.AddWithValue("@CreatedTime", result.CreatedTime);

            cmd.ExecuteNonQuery();

            conn.Connection.Close();

            return StatusCode(201, new { message = "Fasza lefutott" });
            
        }

        [HttpPut]

        public object Put()
        {
            Connect conn = new Connect();

            conn.Connection.Open();

            try
            {
                
            }
            catch
            {

            }

            return 1;
        }
    }
}
