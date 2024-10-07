using Google.Protobuf.WellKnownTypes;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using MySql.Data.MySqlClient;
using MySqlX.XDevAPI.Common;
using ProductAPI.Model;
using Swashbuckle.AspNetCore.SwaggerUI;
using System.Reflection.Metadata.Ecma335;

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

            return new { response };
        }

        [HttpPost]

        public object Post(string id, string name, int price, DateTime createdTime)
        {
            Connect conn = new Connect();

            conn.Connection.Open();

            try
            {
                string query = "INSERT INTO products(`Id`, `Name`, `Price`, `CreatedTime`) VALUES (@id, @name, @price, @createdTime)";

                MySqlCommand cmd = new MySqlCommand(query, conn.Connection);

                cmd.Parameters.AddWithValue("@id", id);
                cmd.Parameters.AddWithValue("@name", name);
                cmd.Parameters.AddWithValue("@price", price);
                cmd.Parameters.AddWithValue("@createdTime", createdTime);

                cmd.ExecuteNonQuery();

                return Ok( new { message = "Fasza lefutott" });
            }
            
            catch
            {
                return StatusCode(500, new { message = "Nem fasza, nem futott" });
            }
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
