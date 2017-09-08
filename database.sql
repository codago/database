CREATE DATABASE university.db

	CREATE TABLE `mahasiswa` ( --membuat table untuk Mahasiswa
		`nim`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
		`nama`	TEXT NOT NULL,
		`alamat`	TEXT NOT NULL,
		`jurusan`	TEXT NOT NULL
	);

	CREATE TABLE `jurusan` ( --membuat table untuk Jurusan
		`idjurusan`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
		`nama`	TEXT NOT NULL
	);

	CREATE TABLE `dosen` ( --membuat table untuk Dosen
		`iddosen`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
		`nama`	TEXT NOT NULL
	);

	CREATE TABLE `matakuliah` ( --membuat table untuk Mata_Kuliah
		`idmatkul`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
		`nama`	TEXT NOT NULL,
		`sks`	INTEGER NOT NULL
	);

	CREATE TABLE `relationship` ( --membuat table untuk Relationship
		`idrelationship`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
		`iddosen`	INTEGER NOT NULL,
		`nim`	INTEGER NOT NULL,
		`idmatkul`	INTEGER NOT NULL,
		`nilai`	INTEGER NOT NULL
	);


--Tambah Mahasiswa
INSERT INTO `mahasiswa`(`nim`,`nama`,`alamat`,`jurusan`) VALUES (012201300001,'Firmansyah','Jakarta','Sistem Informasi');
INSERT INTO `mahasiswa`(`nim`,`nama`,`alamat`,`jurusan`) VALUES (012201300002,'Mikha','Bekasi','Hukum');
INSERT INTO `mahasiswa`(`nim`,`nama`,`alamat`,`jurusan`) VALUES (012201300003,'Toni','Surabaya','DKV');

--Tambah Jurusan
INSERT INTO `jurusan`(`idjurusan`,`nama`) VALUES ('001','Sastra Indonesia');
INSERT INTO `jurusan`(`idjurusan`,`nama`) VALUES ('002','Sastra Jerman');
INSERT INTO `jurusan`(`idjurusan`,`nama`) VALUES ('003','Sastra Arab');

--Tambah Dosen
INSERT INTO `dosen`(`iddosen`,`nama`) VALUES ('0001','Nur');
INSERT INTO `dosen`(`iddosen`,`nama`) VALUES ('0002','Rila Mandala');
INSERT INTO `dosen`(`iddosen`,`nama`) VALUES ('0003','Antonius');


--Tambah Mata_Kuliah
INSERT INTO `matakuliah`(`idmatkul`,`nama`,`sks`) VALUES (01,'Agama','4');
INSERT INTO `matakuliah`(`idmatkul`,`nama`,`sks`) VALUES (03,'Bahasa Indonesia','3');
INSERT INTO `matakuliah`(`idmatkul`,`nama`,`sks`) VALUES (02,'Komputer','4');

--Tambah Relationship
INSERT INTO `Relationship`(`idrelationship`,`iddosen`,`nim`, `idmatkul`,`nilai`) VALUES (2, 0002, 012201300002, 002, 100);
INSERT INTO `Relationship`(`idrelationship`,`iddosen`,`nim`, `idmatkul`,`nilai`) VALUES (1, 0001, 012201300001, 001, 80);
INSERT INTO `Relationship`(`idrelationship`,`iddosen`,`nim`, `idmatkul`,`nilai`) VALUES (3, 0003, 012201300003, 003, 100);

--untuk nilai
select mahasiswa.nama, matakuliah.nama as nama_mata_kuliah, dosen.nama as dosen, nilai from relationship,
mahasiswa, dosen, matakuliah
where relationship.nim=mahasiswa.nim and
relationship.iddosen=dosen.iddosen and
matakuliah.idmatkul = relationship.idmatkul
