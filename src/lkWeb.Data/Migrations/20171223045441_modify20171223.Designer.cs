﻿// <auto-generated />
using lkWeb.Data;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage;
using Microsoft.EntityFrameworkCore.Storage.Internal;
using System;

namespace lkWeb.Data.Migrations
{
    [DbContext(typeof(lkWebContext))]
    [Migration("20171223045441_modify20171223")]
    partial class modify20171223
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "2.0.1-rtm-125")
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("lkWeb.Entity.DepartmentEntity", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<DateTime>("CreateDateTime");

                    b.Property<int>("Creator");

                    b.Property<string>("Description")
                        .IsRequired()
                        .HasColumnType("varchar(100)");

                    b.Property<bool>("IsDeleted");

                    b.Property<int>("Modifier");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("varchar(20)");

                    b.HasKey("Id");

                    b.ToTable("Sys_Department");
                });

            modelBuilder.Entity("lkWeb.Entity.LoginLogEntity", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("ClientIP")
                        .HasColumnType("varchar(15)");

                    b.Property<string>("ClientMac")
                        .HasColumnType("varchar(40)");

                    b.Property<DateTime>("CreateDateTime");

                    b.Property<int>("Creator");

                    b.Property<bool>("IsDeleted");

                    b.Property<string>("LoginName")
                        .IsRequired()
                        .HasColumnType("varchar(20)");

                    b.Property<int>("Modifier");

                    b.Property<int>("UserId");

                    b.HasKey("Id");

                    b.ToTable("Sys_LoginLog");
                });

            modelBuilder.Entity("lkWeb.Entity.MenuEntity", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<DateTime>("CreateDateTime");

                    b.Property<int>("Creator");

                    b.Property<bool>("IsDeleted");

                    b.Property<int>("Modifier");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("varchar(18)");

                    b.Property<int>("Order");

                    b.Property<int>("ParentId");

                    b.Property<byte>("Type");

                    b.Property<string>("Url")
                        .IsRequired()
                        .HasColumnType("varchar(300)");

                    b.HasKey("Id");

                    b.ToTable("Sys_Menu");
                });

            modelBuilder.Entity("lkWeb.Entity.OperationLogEntity", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("ClientIP")
                        .IsRequired()
                        .HasColumnType("varchar(15)");

                    b.Property<string>("ClientMac")
                        .IsRequired()
                        .HasColumnType("varchar(40)");

                    b.Property<DateTime>("CreateDateTime");

                    b.Property<int>("Creator");

                    b.Property<bool>("IsDeleted");

                    b.Property<int>("Modifier");

                    b.Property<string>("OperationDesciption")
                        .IsRequired()
                        .HasColumnType("varchar(100)");

                    b.Property<string>("OperationUrl")
                        .HasColumnType("varchar(300)");

                    b.Property<int>("UserId");

                    b.HasKey("Id");

                    b.ToTable("Sys_OperationLog");
                });

            modelBuilder.Entity("lkWeb.Entity.RoleEntity", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<DateTime>("CreateDateTime");

                    b.Property<int>("Creator");

                    b.Property<string>("Description")
                        .IsRequired()
                        .HasColumnType("varchar(100)");

                    b.Property<bool>("IsDeleted");

                    b.Property<int>("Modifier");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("varchar(20)");

                    b.HasKey("Id");

                    b.ToTable("Sys_Role");
                });

            modelBuilder.Entity("lkWeb.Entity.RoleMenuEntity", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<DateTime>("CreateDateTime");

                    b.Property<int>("Creator");

                    b.Property<bool>("IsDeleted");

                    b.Property<int>("MenuId");

                    b.Property<int>("Modifier");

                    b.Property<int>("RoleId");

                    b.HasKey("Id");

                    b.HasIndex("RoleId");

                    b.ToTable("Sys_RoleMenu");
                });

            modelBuilder.Entity("lkWeb.Entity.UserDepartmentEntity", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<DateTime>("CreateDateTime");

                    b.Property<int>("Creator");

                    b.Property<int>("DepartmentID");

                    b.Property<bool>("IsDeleted");

                    b.Property<int>("Modifier");

                    b.Property<int>("UserID");

                    b.HasKey("Id");

                    b.HasIndex("DepartmentID");

                    b.HasIndex("UserID");

                    b.ToTable("Sys_UserDepartment");
                });

            modelBuilder.Entity("lkWeb.Entity.UserEntity", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<DateTime>("CreateDateTime");

                    b.Property<int>("Creator");

                    b.Property<string>("Email")
                        .IsRequired()
                        .HasColumnType("varchar(35)");

                    b.Property<bool>("IsDeleted");

                    b.Property<string>("LoginName")
                        .IsRequired()
                        .HasColumnType("varchar(20)");

                    b.Property<int>("Modifier");

                    b.Property<string>("Password")
                        .IsRequired()
                        .HasColumnType("varchar(35)");

                    b.Property<string>("RealName")
                        .IsRequired()
                        .HasColumnType("varchar(20)");

                    b.Property<byte>("Status");

                    b.HasKey("Id");

                    b.ToTable("Sys_User");
                });

            modelBuilder.Entity("lkWeb.Entity.UserRoleEntity", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<DateTime>("CreateDateTime");

                    b.Property<int>("Creator");

                    b.Property<bool>("IsDeleted");

                    b.Property<int>("Modifier");

                    b.Property<int>("RoleId");

                    b.Property<int>("UserId");

                    b.HasKey("Id");

                    b.HasIndex("RoleId");

                    b.HasIndex("UserId");

                    b.ToTable("Sys_UserRole");
                });

            modelBuilder.Entity("lkWeb.Entity.RoleMenuEntity", b =>
                {
                    b.HasOne("lkWeb.Entity.RoleEntity", "Role")
                        .WithMany("RoleMenus")
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("lkWeb.Entity.UserDepartmentEntity", b =>
                {
                    b.HasOne("lkWeb.Entity.DepartmentEntity", "Department")
                        .WithMany("UserDepartments")
                        .HasForeignKey("DepartmentID")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("lkWeb.Entity.UserEntity", "User")
                        .WithMany("UserDepartments")
                        .HasForeignKey("UserID")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("lkWeb.Entity.UserRoleEntity", b =>
                {
                    b.HasOne("lkWeb.Entity.RoleEntity", "Role")
                        .WithMany("UserRoles")
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("lkWeb.Entity.UserEntity", "User")
                        .WithMany("UserRoles")
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });
#pragma warning restore 612, 618
        }
    }
}
