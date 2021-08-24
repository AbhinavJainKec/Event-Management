using EventManager.Concrete;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http.Features;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using EventManager.Interface;
using EventManager.Filters;

namespace EventManager
{
    public class Startup
    {
        public Startup(IConfiguration configuration, IWebHostEnvironment env)
        {
            Configuration = configuration;

            var builder = new ConfigurationBuilder()
                .SetBasePath(env.ContentRootPath)
                .AddJsonFile("appsettings.json", optional: false, reloadOnChange: true)
                .AddJsonFile($"appsettings.{env.EnvironmentName}.json", optional: true)
                .AddEnvironmentVariables();
            Configuration = builder.Build();
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddControllersWithViews();

            // Add framework services.
            services.AddMvc(options =>
            {
                options.Filters.Add(new CustomExceptionFilterAttribute());
                options.ReturnHttpNotAcceptable = true;
                // options.OutputFormatters = xml
            })
            .AddNewtonsoftJson(options =>
            {
                //For Maintaining Json Format 
                options.SerializerSettings.ContractResolver = new Newtonsoft.Json.Serialization.DefaultContractResolver();
            });

            // For FileUpload
            services.Configure<FormOptions>(x =>
            {
                x.ValueLengthLimit = int.MaxValue;
                x.MultipartBodyLengthLimit = int.MaxValue; // In case of multipart
                x.ValueLengthLimit = int.MaxValue; //not recommended value
                x.MemoryBufferThreshold = Int32.MaxValue;
            });

            services.AddSession(options => {
                options.IdleTimeout = TimeSpan.FromMinutes(30);
                options.Cookie.Name = ".EventManager";
            });

            //Getting Connection String From Database
            var connection = Configuration.GetConnectionString("DatabaseConnection");

            // UseRowNumberForPaging for Using Skip and Take in .Net Core
            services.AddDbContext<DatabaseContext>(options => options.UseSqlServer(connection));

            services.AddTransient<IRegistration, RegistrationConcrete>();
            services.AddTransient<ICountry, CountryConcrete>();
            services.AddTransient<IState, StateConcrete>();
            services.AddTransient<ICity, CityConcrete>();
            services.AddTransient<IRoles, RolesConcrete>();
            services.AddTransient<ILogin, LoginConcrete>();
            services.AddTransient<IVenue, VenueConcrete>();
            services.AddTransient<IEquipment, EquipmentConcrete>();
            services.AddTransient<IFood, FoodConcrete>();
            services.AddTransient<IDishtypes, DishtypesConcrete>();
            services.AddTransient<ILight, LightConcrete>();
            services.AddTransient<IFlower, FlowerConcrete>();
            services.AddTransient<IBookVenue, BookVenueConcrete>();
            services.AddTransient<IEvent, EventConcrete>();
            services.AddTransient<IBookEquipment, BookEquipmentConcrete>();
            services.AddTransient<IBookFood, BookFoodConcrete>();
            services.AddTransient<IBookFlower, BookFlowerConcrete>();
            services.AddTransient<IBookLight, BookLightConcrete>();
            services.AddTransient<ITotalBilling, TotalBillingConcrete>();
            services.AddApplicationInsightsTelemetry();

        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env, ILoggerFactory loggerFactory)
        {
            loggerFactory = LoggerFactory.Create(builder => builder.AddConsole());
            loggerFactory = LoggerFactory.Create(builder => builder.AddDebug());

            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseExceptionHandler("/Home/Error");
                // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
                app.UseHsts();
            }
            app.UseHttpsRedirection();
            app.UseStaticFiles();

            app.UseSession();

            app.UseRouting();

            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllerRoute(
                    name: "default",
                    pattern: "{controller=Home}/{action=Index}/{id?}");
            });
        }
    }
}
