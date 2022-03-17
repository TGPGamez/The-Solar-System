using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using Website.Extensions;
using Website.Models;

namespace Website.Data
{
    public partial class ContextDB : DbContext
    {
        private List<PlanetModel> planetsInDatabase;

        public List<PlanetModel> PlanetInDatabase
        {
            get { return planetsInDatabase; }
            set { planetsInDatabase = value; }
        }


        public void UpdatePlanetsFromCulture(string culture)
        {
            planetsInDatabase.Clear();

            //var result = (from p in Planets
            //              join pInfo in PlanetInfos on p.Id equals pInfo.PlanetId
            //              join lp in LanguagesPlanets on p.Id equals lp.PlanetId
            //              join psr in PlanetStringResources on lp.PsrId equals psr.Id
            //              join l in Languages on lp.LanguageId equals l.Id
            //              where l.Culture == culture
            //              select new
            //              {
            //                  Culture = l.Culture,
            //                  Search_Name = p.Name,
            //                  Name = psr.Name,
            //                  ShortDescription = psr.ShortDescription,
            //                  StateOfMatter = psr.StateOfMatter,
            //                  LengthFromSun = pInfo.LengthFromSun,
            //                  Diameter = pInfo.Diameter,
            //                  TravelTimeAroundSun = pInfo.TravelTimeAroundSun,
            //                  Temperature = pInfo.Temperature,
            //                  AtmosphericPressure = pInfo.AtmosphericPressure,
            //                  NumberOfMoons = pInfo.NumberOfMoons
            //              }).ToList();
            var result = (from p in Planets
                          join pInfo in PlanetInfos on p.Id equals pInfo.PlanetId
                          join lp in LanguagesPlanets on p.Id equals lp.PlanetId
                          join psr in PlanetStringResources on lp.PsrId equals psr.Id
                          select new
                          {
                              LanguageID = lp.LanguageId,
                              Search_Name = p.Name,
                              Name = psr.Name,
                              ShortDescription = psr.ShortDescription,
                              StateOfMatter = psr.StateOfMatter,
                              LengthFromSun = pInfo.LengthFromSun,
                              Diameter = pInfo.Diameter,
                              TravelTimeAroundSun = pInfo.TravelTimeAroundSun,
                              Temperature = pInfo.Temperature,
                              AtmosphericPressure = pInfo.AtmosphericPressure,
                              NumberOfMoons = pInfo.NumberOfMoons
                          }).ToList();
            foreach (var item in result)
            {
                PlanetModel pModel = new PlanetModel();
                pModel.Search_Name = item.Search_Name;
                pModel.LanguageID = item.LanguageID;
                pModel.General.Name = item.Name;
                pModel.Info.LengthFromSun = item.LengthFromSun;
                pModel.Info.ShortDescription = item.ShortDescription;
                pModel.Info.StateOfMatter = item.StateOfMatter;
                pModel.Info.Diameter = item.Diameter;
                pModel.Info.TravelTimeAroundSun = item.TravelTimeAroundSun;
                pModel.Info.Temperature = item.Temperature;
                pModel.Info.AtmosphericPressure = item.AtmosphericPressure;
                pModel.Info.NumberOfMoons = item.NumberOfMoons;
                pModel.FormatDesc();
                planetsInDatabase.Add(pModel);
            }
        }

        public ContextDB()
        {
            planetsInDatabase = new List<PlanetModel>();
        }

        public ContextDB(DbContextOptions<ContextDB> options)
            : base(options)
        {
            planetsInDatabase = new List<PlanetModel>();
        }

        public virtual DbSet<Language> Languages { get; set; } = null!;
        public virtual DbSet<LanguagesPlanet> LanguagesPlanets { get; set; } = null!;
        public virtual DbSet<Planet> Planets { get; set; } = null!;
        public virtual DbSet<PlanetInfo> PlanetInfos { get; set; } = null!;
        public virtual DbSet<PlanetStringResource> PlanetStringResources { get; set; } = null!;
        public virtual DbSet<StringResource> StringResources { get; set; } = null!;

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Language>(entity =>
            {
                entity.Property(e => e.Id).HasColumnName("ID");

                entity.Property(e => e.Culture)
                    .HasMaxLength(6)
                    .IsUnicode(false);

                entity.Property(e => e.Name)
                    .HasMaxLength(60)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<LanguagesPlanet>(entity =>
            {
                entity.HasKey(e => new { e.LanguageId, e.PlanetId })
                    .HasName("PK__Language__0E5F15CFF7CC9F79");

                entity.ToTable("Languages_Planet");

                entity.HasIndex(e => e.PsrId, "UQ__Language__64AF3D0588C04C5D")
                    .IsUnique();

                entity.Property(e => e.LanguageId).HasColumnName("Language_ID");

                entity.Property(e => e.PlanetId).HasColumnName("Planet_ID");

                entity.Property(e => e.PsrId).HasColumnName("PSR_ID");

                entity.HasOne(d => d.Language)
                    .WithMany(p => p.LanguagesPlanets)
                    .HasForeignKey(d => d.LanguageId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__Languages__Langu__300424B4");

                entity.HasOne(d => d.Planet)
                    .WithMany(p => p.LanguagesPlanets)
                    .HasForeignKey(d => d.PlanetId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__Languages__Plane__30F848ED");

                entity.HasOne(d => d.Psr)
                    .WithOne(p => p.LanguagesPlanet)
                    .HasForeignKey<LanguagesPlanet>(d => d.PsrId)
                    .HasConstraintName("FK__Languages__PSR_I__31EC6D26");
            });

            modelBuilder.Entity<Planet>(entity =>
            {
                entity.ToTable("Planet");

                entity.Property(e => e.Id).HasColumnName("ID");

                entity.Property(e => e.ImagePath).IsUnicode(false);

                entity.Property(e => e.Name)
                    .HasMaxLength(70)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<PlanetInfo>(entity =>
            {
                entity.HasKey(e => e.PlanetId)
                    .HasName("PK__Planet_I__9067ADCAD76686A3");

                entity.ToTable("Planet_Info");

                entity.Property(e => e.PlanetId)
                    .ValueGeneratedNever()
                    .HasColumnName("Planet_ID");

                entity.Property(e => e.AtmosphericPressure).HasColumnType("decimal(18, 0)");

                entity.Property(e => e.Diameter).HasDefaultValueSql("((0))");

                entity.Property(e => e.LengthFromSun)
                    .HasColumnType("decimal(18, 0)")
                    .HasDefaultValueSql("((0))");

                entity.Property(e => e.NumberOfMoons).HasDefaultValueSql("((0))");

                entity.Property(e => e.ShortDescription)
                    .IsUnicode(false)
                    .HasDefaultValueSql("('N/A')");

                entity.Property(e => e.StateOfMatter)
                    .HasMaxLength(30)
                    .IsUnicode(false)
                    .HasDefaultValueSql("('N/A')");

                entity.Property(e => e.Temperature)
                    .HasColumnType("decimal(18, 0)")
                    .HasDefaultValueSql("((0))");

                entity.Property(e => e.TravelTimeAroundSun).HasDefaultValueSql("((0))");

                entity.HasOne(d => d.Planet)
                    .WithOne(p => p.PlanetInfo)
                    .HasForeignKey<PlanetInfo>(d => d.PlanetId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__Planet_In__Plane__3C69FB99");
            });

            modelBuilder.Entity<PlanetStringResource>(entity =>
            {
                entity.ToTable("Planet_StringResources");

                entity.Property(e => e.Id).HasColumnName("ID");

                entity.Property(e => e.Name)
                    .HasMaxLength(70)
                    .IsUnicode(false)
                    .HasDefaultValueSql("('N/A')");

                entity.Property(e => e.ShortDescription).IsUnicode(false);

                entity.Property(e => e.StateOfMatter)
                    .HasMaxLength(30)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<StringResource>(entity =>
            {
                entity.Property(e => e.Id).HasColumnName("ID");

                entity.Property(e => e.LanguageId).HasColumnName("Language_ID");

                entity.Property(e => e.Name)
                    .HasMaxLength(80)
                    .IsUnicode(false);

                entity.Property(e => e.Value)
                    .HasColumnType("text")
                    .HasDefaultValueSql("('N/A')");

                entity.HasOne(d => d.Language)
                    .WithMany(p => p.StringResources)
                    .HasForeignKey(d => d.LanguageId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__StringRes__Langu__276EDEB3");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
