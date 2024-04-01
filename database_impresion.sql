create table Impresora (
	ImpresoraId SERIAL,
	Nombre varchar(50),
	Modelo varchar(20),
	Serie varchar(20),
	Ip varchar(20),
	Mac varchar(20),
	Edificio varchar(20),
	Ubicacion varchar(20),
    PRIMARY KEY(ImpresoraId)
);
create table RefaccionImpresora (
    RefaccionId SERIAL,
    NoParte varchar(20)
    Nombre varchar(50),
    Descripcion varchar(50),
    ModeloImpresora varchar(20),
    Tipo varchar(20),
    VidaUtil integer,
    Cantidad integer,
    PRIMARY KEY(RefaccionId)
);
create table RegCambioRefaImp (
	RegCambioRefaImpId SERIAL,
	Cantidad integer,
	Fecha date, 
	IdRefaccion integer,
	IdImpresora integer,
	Cont102 integer,
	Cont109 integer,
	Cont124 integer
    PRIMARY KEY(RegCambioRefaImpId),
    FOREIGN KEY(IdRefaccion) REFERENCES RefaccionImpresora(RefaccionId),
    FOREIGN KEY(IdImpresora) REFERENCES Impresora(ImpresoraId)
);