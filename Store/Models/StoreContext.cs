using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;

namespace Store.Models
{
    public class StoreContext : IdentityDbContext<User, Role, int>
    {

        public virtual DbSet<Gender> Genders { get; set; }
        public override DbSet<User> Users { get; set; }
        public virtual DbSet<Brand> Brands { get; set; }
        public virtual DbSet<Color> Colors { get; set; }
        public virtual DbSet<Product> Products { get; set; }
        public virtual DbSet<Sex> Sexes { get; set; }
        public virtual DbSet<Category> Categories { get; set; }
        public virtual DbSet<Stock> Stock { get; set; }
        public virtual DbSet<Order> Orders { get; set; }
        public virtual DbSet<OrderProduct> OrderProducts { get; set; }





        public StoreContext()
        {

        }

        public StoreContext(DbContextOptions<StoreContext> options)
            : base(options)
        {

        }




        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {

            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<User>(i =>
            {
                RelationalEntityTypeBuilderExtensions.ToTable((EntityTypeBuilder)i, "Users");
                i.HasKey(x => x.Id);
            });
            modelBuilder.Entity<Role>(i =>
            {
                RelationalEntityTypeBuilderExtensions.ToTable((EntityTypeBuilder)i, "Role");
                i.HasKey(x => x.Id);
            });
            modelBuilder.Entity<IdentityUserRole<int>>(i =>
            {
                i.ToTable("UserRole");
                i.HasKey(x => new { x.RoleId, x.UserId });
            });
            modelBuilder.Entity<IdentityUserLogin<int>>(i =>
            {
                i.ToTable("UserLogin");
                i.HasKey(x => new { x.ProviderKey, x.LoginProvider });
            });
            modelBuilder.Entity<IdentityRoleClaim<int>>(i =>
            {
                i.ToTable("RoleClaims");
                i.HasKey(x => x.Id);
            });
            modelBuilder.Entity<IdentityUserClaim<int>>(i =>
            {
                i.ToTable("UserClaims");
                i.HasKey(x => x.Id);
            });


            modelBuilder.Entity<Product>(c =>
            {
                c.Property(p => p.Id)
                    .ValueGeneratedOnAdd();
            });

            //modelBuilder.Entity<User>()
            //.HasMany(c => c.Orders)
            //.WithOne(e => e.User)
            //.HasForeignKey(s => s.UserId);



            modelBuilder.Entity<OrderProduct>()
                .HasKey(x => new { x.StockId, x.OrderId });

            modelBuilder.Entity<Gender>()
                .HasData(
                    new Gender
                    {
                        Id = 1,
                        Name = "Man"
                    },
                    new Gender
                    {
                        Id = 2,
                        Name = "Woman"
                    },
                    new Gender
                    {
                        Id = 3,
                        Name = "Unknown"
                    }
                );

            modelBuilder.Entity<Role>()
                .HasData(
                    new Role
                    {
                        Id = 1,
                        Name = "Admin",
                        NormalizedName = "ADMIN"
                    },
                    new Role
                    {
                        Id = 2,
                        Name = "User",
                        NormalizedName = "USER"
                    }
                );

           
            modelBuilder.Entity<Sex>()
                .HasData(
                    new Gender
                    {
                        Id = 1,
                        Name = "Man"
                    },
                    new Gender
                    {
                        Id = 2,
                        Name = "Woman"
                    },
                    new Gender
                    {
                        Id = 3,
                        Name = "Unisex"
                    }
                );

            modelBuilder.Entity<Category>()
                .HasData(
                    new Category
                    {
                        Id = 1,
                        Name = "Adult shower gel"
                    },
                    new Category
                    {
                        Id = 2,
                        Name = "Children's shower gel"
                    }
                );


            modelBuilder.Entity<Brand>()
                .HasData(
                    new Brand
                    {
                        Id = 1,
                        Name = "D’Oriente Lotus Flower",
                        PhotoPath = "OrienteLotusFlower.png"
                    },
                    new Brand
                    {
                        Id = 2,
                        Name = "Enchanteur",
                        PhotoPath = "Enchanteur-Logo.png"
                    },
                    new Brand
                    {
                        Id = 3,
                        Name = "Weilaiya",
                        PhotoPath = "Weilaiya.png"
                    },
                    new Brand
                    {
                        Id = 4,
                        Name = "Dove",
                        PhotoPath = "Dove.png"
                    }
                );

             modelBuilder.Entity<Color>()
                .HasData(
                    new Color
                    {
                        Id = 1,
                        Name = "White"
                    },
                    new Color
                    {
                        Id = 2,
                        Name = "Black"
                    },
                    new Color
                    {
                        Id = 3,
                        Name = "Blue"
                    },
                    new Color
                    {
                        Id = 4,
                        Name = "Yellow"
                    },
                    new Color
                    {
                        Id = 5,
                        Name = "Gray"
                    },
                    new Color
                    {
                        Id = 7,
                        Name = "Other"
                    },
                    new Color
                    {
                        Id = 6,
                        Name = "Red"
                    }
                );


            modelBuilder.Entity<Product>()
                .HasData(
                    new Product
                    {
                        Id = 1,
                        BrandId = 1,
                        ColorId = 2,
                        SexId = 3,
                        CategoryId = 1,
                        Name = "SHOWER OIL AMLA & SESAME OILS",
                        Price = 399.99m,
                        Description = "A precious formula created with Amla and Sesame Oils of inebriating fragrance, gently cleansing and nourishing, for a bright and silky-smooth skin.",
                        PhotoPath = "riso_0.png"
                    },
                    new Product
                    {
                        Id = 2,
                        BrandId = 1,
                        ColorId = 1,
                        SexId = 1,
                        CategoryId = 1,
                        Name = "SHOWER OIL ARGAN & CYPERUS OILS",
                        Price = 199.99m,
                        Description = "A truly regenerating formula enriched with Argan and Cyperus esculentus. Exquisitely perfumed, it cleanses and nourishes gently, for a velvety skin.",
                        PhotoPath = "cipero_0.png"
                    },
                    new Product
                    {
                        Id = 3,
                        BrandId = 1,
                        ColorId = 6,
                        SexId = 2,
                        CategoryId = 1,
                        Name = "SHOWER OIL RICE & TSUBAKI OIL",
                        Price = 599.99m,
                        Description = "A wonderfully softening formula enriched with the harmonic combination of Rice and Tsubaki oil, to gently deterge and nourish your skin, leaving it soft and smooth.",
                        PhotoPath = "amla_0.png"
                    },
                    new Product
                    {
                        Id = 4,
                        BrandId = 2,
                        ColorId = 6,
                        SexId = 1,
                        CategoryId = 2,
                        Name = "Moisturizing shower gel",
                        Price = 999.99m,
                        Description = "Enchanteur ST Iris perfume 510g & ST natural skin care!",
                        PhotoPath = "d4f5fdbd75fc46398f072f11c808bc17.png"
                    },
                    new Product
                    {
                        Id = 5,
                        BrandId = 3,
                        ColorId = 1,
                        SexId = 1,
                        CategoryId = 2,
                        Name = "WEILAIYA Damask Grand Rose Extracts Brightening Shower Gel",
                        Price = 599.99m,
                        Description = "Suitable for all skin types: Restores the skin's protective barrier, promotes collagen production for healthier skin!",
                        PhotoPath = "dmask_grand-4.png"
                    },
                    new Product
                    {
                        Id = 6,
                        BrandId = 3,
                        ColorId = 1,
                        SexId = 3,
                        CategoryId = 2,
                        Name = "Weilaiya Natural Care Shower Gel",
                        Price = 199.99m,
                        Description = "Weilaiya Natural Care Shower Gel!",
                        PhotoPath = "sua-tam-trung-ca-muoi-weilaiya-natural-care-shower-gel-9-700x700.jpg"
                    },
                    new Product
                    {
                        Id = 7,
                        BrandId = 4,
                        ColorId = 1,
                        SexId = 2,
                        CategoryId = 1,
                        Name = "Dove Gentle Exfoliating Nourishing Body Wash",
                        Price = 299.99m,
                        Description = "Dove Gentle Exfoliating Nourishing Body Wash!",
                        PhotoPath = "sua-tam-Dove-Gentle-Exfoliating-Nourishing-Body-Wash-beauty-garden-1.jpg"
                    }

                );

            //Dodanie marek do tabeli Brand
            modelBuilder.Entity<Stock>()
                .HasData(
                    new Stock
                    {
                        ProductId = 1,
                        Id = 1,
                        IsLastElementOrdered = false,
                        Name = "10",
                        Qty = 3
                    },
                    new Stock
                    {
                        ProductId = 1,
                        Id = 2,
                        IsLastElementOrdered = false,
                        Name = "11",
                        Qty = 2
                    },
                    new Stock
                    {
                        ProductId = 1,
                        Id = 3,
                        IsLastElementOrdered = false,
                        Name = "12",
                        Qty = 1
                    },
                    new Stock
                    {
                        ProductId = 4,
                        Id = 4,
                        IsLastElementOrdered = false,
                        Name = "S",
                        Qty = 2
                    },
                    new Stock
                    {
                        ProductId = 4,
                        Id = 5,
                        IsLastElementOrdered = false,
                        Name = "L",
                        Qty = 2
                    },
                    new Stock
                    {
                        ProductId = 4,
                        Id = 6,
                        IsLastElementOrdered = false,
                        Name = "XL",
                        Qty = 1
                    },
                     new Stock
                     {
                         ProductId = 7,
                         Id = 7,
                         IsLastElementOrdered = false,
                         Name = "9",
                         Qty = 1
                     },
                     new Stock
                     {
                         ProductId = 2,
                         Id = 8,
                         IsLastElementOrdered = false,
                         Name = "11",
                         Qty = 3
                     }
                );


            User adminUser = new User
            {
                UserName = "admin",
                Email = "admin@store.com",
                NormalizedEmail = "admin@store.com".ToUpper(),
                NormalizedUserName = "admin".ToUpper(),
                TwoFactorEnabled = false,
                EmailConfirmed = true,
                PhoneNumber = "123456789",
                PhoneNumberConfirmed = false,
                City = "admin",
                FirstName = "admin",
                LastName = "admin",
                GenderId = 3,
                Address1 = "admin",
                PostCode = "51-627",
                Id=1,
                SecurityStamp = Guid.NewGuid().ToString()
            };

            User user = new User
            {
                UserName = "user",
                Email = "user@store.com",
                NormalizedEmail = "user@store.com".ToUpper(),
                NormalizedUserName = "user".ToUpper(),
                TwoFactorEnabled = false,
                EmailConfirmed = true,
                PhoneNumber = "987654321",
                PhoneNumberConfirmed = false,
                City = "user",
                FirstName = "user",
                LastName = "user",
                GenderId = 1,
                Address1 = "user",
                PostCode = "51-627",
                Id=2,
                SecurityStamp = Guid.NewGuid().ToString()
            };


            PasswordHasher<User> ph = new PasswordHasher<User>();

            adminUser.PasswordHash = ph.HashPassword(adminUser, "admin");
            user.PasswordHash = ph.HashPassword(user, "user");

            var adminrole = new IdentityUserRole<int>
            { RoleId = 1, UserId = 1 };
            var userrole = new IdentityUserRole<int>
            { RoleId = 2, UserId = 2 };

            modelBuilder.Entity<User>().HasData(
                adminUser,
                user
            );

            modelBuilder.Entity<IdentityUserRole<int>>().HasData(
                adminrole,
                userrole
            );
        }
    }
}
