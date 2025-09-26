Create Database Tp_WinForms;
Go
Use Tp_WinForms;
go

Create Table Categorias(
    IdCategoria int PRIMARY KEY IDENTITY(1,1),
    Nombre varchar(100) NOT NULL,
)
go

Create Table Marcas(
    IdMarca int PRIMARY KEY IDENTITY(1,1),
    Nombre varchar(100) NOT NULL,
)

go

Create Table Articulos(
    CodigoArticulo int PRIMARY KEY IDENTITY(1,1),
    Nombre varchar(100) NOT NULL,
    Descripcion varchar(255) NOT NULL,
    IdCategoria int NOT NULL,
    IdMarca int NOT NULL,
    ImagenUrl varchar(255) NOT NULL,
    Precio decimal(10,2) NOT NULL,

    FOREIGN KEY (IdCategoria) REFERENCES Categorias(IdCategoria),
    FOREIGN KEY (IdMarca) REFERENCES Marcas(IdMarca),

)