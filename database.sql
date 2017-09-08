CREATE DATABASE university.db

CREATE TABLE `Mahasiswa` ( //membuat table untuk Mahasiswa
	`nim`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`nama`	TEXT NOT NULL,
	`alamat`	TEXT NOT NULL,
	`jurusan`	TEXT NOT NULL
);

CREATE TABLE `Jurusan` ( //membuat table untuk Jurusan
	`id_jurusan`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`nama_jurusan`	TEXT NOT NULL
);

CREATE TABLE `Dosen` ( //membuat table untuk Dosen
	`id_dosen`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`nama_dosen`	TEXT NOT NULL
);

CREATE TABLE `Mata_Kuliah` ( //membuat table untuk Mata_Kuliah
	`id_matkul`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`nama_matkul`	TEXT NOT NULL,
	`sks`	INTEGER NOT NULL
);

CREATE TABLE `Relationship` ( //membuat table untuk Relationship
	`id_relationship`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`id_dosen`	INTEGER NOT NULL,
	`nim`	INTEGER NOT NULL,
	`id_jurusan`	INTEGER NOT NULL,
	`nilai`	INTEGER NOT NULL,
);

//Tambah Mahasiswa
INSERT INTO `Mahasiswa`(`nim`,`nama`,`alamat`,`jurusan`) VALUES (012201300001,'Firmansyah','Jakarta','Sistem Informasi');
INSERT INTO `Mahasiswa`(`nim`,`nama`,`alamat`,`jurusan`) VALUES (012201300002,'Mikha','Bekasi','Hukum');
INSERT INTO `Mahasiswa`(`nim`,`nama`,`alamat`,`jurusan`) VALUES (012201300003,'Toni','Surabaya','DKV');

//Tambah Jurusan
INSERT INTO `Jurusan`(`id_jurusan`,`nama_jurusan`) VALUES (001,'','Sastra Indonesia');
INSERT INTO `Jurusan`(`id_jurusan`,`nama_jurusan`) VALUES (002,'','Sastra Jerman');
INSERT INTO `Jurusan`(`id_jurusan`,`nama_jurusan`) VALUES (003,'','Sastra Arab');

//Tambah Dosen
INSERT INTO `Dosen`(`id_dosen`,`nama_dosen`) VALUES (0001,'Nur',);
INSERT INTO `Dosen`(`id_dosen`,`nama_dosen`) VALUES (0002,'Rila Mandala',);
INSERT INTO `Dosen`(`id_dosen`,`nama_dosen`) VALUES (0003,'Antonius',);


//Tambah Mata_Kuliah
INSERT INTO `Mata_Kuliah`(`id_matkul`,`nama_matkul`,`sks`) VALUES (01,'Agama','4');
INSERT INTO `Mata_Kuliah`(`id_matkul`,`nama_matkul`,`sks`) VALUES (02,'Komputer','4');
INSERT INTO `Mata_Kuliah`(`id_matkul`,`nama_matkul`,`sks`) VALUES (03,'Bahasa Indonesia','3');

//Tambah Relationship
INSERT INTO `Relationship`(`id_relationship`,`id_dosen`,`nim`, `id_jurusan`,`nilai`) VALUES (1, 0001, 012201300001, 001, 80);
INSERT INTO `Relationship`(`id_relationship`,`id_dosen`,`nim`, `id_jurusan`,`nilai`) VALUES (2, 0002, 012201300002, 002, 100);
INSERT INTO `Relationship`(`id_relationship`,`id_dosen`,`nim`, `id_jurusan`,`nilai`) VALUES (3, 0003, 012201300003, 003, 100);

//untuk nilai
SELECT Mahasiswa.nama, Jurusan.nama_jurusan, Mahasiswa.nim, Mata_Kuliah.nama_matkul, Mata_Kuliah.sks, Dosen.nama_dosen, Relationship.nilai FROM Relationship, Mahasiswa, Dosen, Mata_Kuliah
WHERE Relationship.nim = Mahasiswa.nim and
Relationship.id_dosen = Dosen.id_dosen and
Mata_Kuliah.id_matkul = Relationship.id_matkul
