-- Table Untuk Mahasiswa
CREATE TABLE `Mahasiswa` (
	`MahasiswaID`	INTEGER NOT NULL,
	`Nama_Mahasiswa`	TEXT NOT NULL,
	`NIM`	TEXT NOT NULL,
	`JurusanID`	INTEGER NOT NULL,
	`Alamat`	TEXT NOT NULL,
	PRIMARY KEY(`MahasiswaID`)
);

INSERT INTO Mahasiswa(MahasiswaID, Nama_Mahasiswa, NIM, JurusanID, Alamat) VALUES(1, 'Mikha', '0122013', 2, 'Karawang');

INSERT INTO Mahasiswa(MahasiswaID, Nama_Mahasiswa, NIM, JurusanID, Alamat) VALUES(2, 'Markus', '0122014', 1, 'Karawang Barat Daya');

-- Table untuk Dosen
CREATE TABLE `Dosen` (
	`DosenID`	INTEGER NOT NULL,
	`Nama_Dosen`	TEXT NOT NULL,
	PRIMARY KEY(`DosenID`)
);

INSERT INTO Dosen(DosenID, Nama_Dosen) VALUES(1, 'Tjong Wan Sen');

INSERT INTO Dosen(DosenID, Nama_Dosen) VALUES(2, 'Rila Mandala');

-- Table untuk Jurusan
CREATE TABLE `Jurusan` (
	`Jurusan ID`	INTEGER NOT NULL,
	`Nama_Jurusan`	TEXT NOT NULL,
	PRIMARY KEY(`Jurusan ID`)
);

INSERT INTO Jurusan(JurusanID, Nama_Jurusan) VALUES(1, 'IT');

INSERT INTO Jurusan(JurusanID, Nama_Jurusan) VALUES(2, 'IS');

-- Table untuk
CREATE TABLE `MataKuliah` (
	`MataKuliahID`	INTEGER NOT NULL,
	`SKS`	TEXT NOT NULL,
	`Nama_Matkul`	INTEGER NOT NULL,
	PRIMARY KEY(`MataKuliahID`)
);

INSERT INTO MataKuliah(MataKuliahID, SKS, Nama_Matkul) VALUES(1, 3, 'Programming Concept');

INSERT INTO MataKuliah(MataKuliahID, SKS, Nama_Matkul) VALUES(2, 2, 'Web Design');

-- Table untuk relationship
CREATE TABLE `Relationship` (
	`RelationshipID`	INTEGER NOT NULL,
	`MahasiswaID`	INTEGER NOT NULL,
	`DosenID`	INTEGER NOT NULL,
	`MataKuliahID`	INTEGER NOT NULL,
	`Nilai`	INTEGER NOT NULL,
	PRIMARY KEY(`RelationshipID`)
);

INSERT INTO Relationship(RelationshipID, MahasiswaID, DosenID, MataKuliahID,Nilai) VALUES(1,1,1,1,95);
INSERT INTO Relationship(RelationshipID, MahasiswaID, DosenID, MataKuliahID,Nilai) VALUES(2,2,2,2,94);

SELECT Mahasiswa.Nama_Mahasiswa, Jurusan.Nama_Jurusan, Mahasiswa.NIM, MataKuliah.Nama_Matkul, MataKuliah.SKS, Dosen.Nama_Dosen, Relationship.Nilai
FROM Relationship
INNER JOIN Mahasiswa ON Relationship.MahasiswaID = Mahasiswa.MahasiswaID;
INNER JOIN MataKuliah ON Relationship.MataKuliahID = MataKuliah.MataKuliahID;
INNER JOIN Dosen ON Relationship.DosenID = Dosen.DosenID;
INNER JOIN Jurusan ON Mahasiswa.JurusanID = Jurusan.JurusanID;
