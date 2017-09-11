CREATE DATABASE university.db

	CREATE TABLE `mahasiswa` ( --membuat table untuk Mahasiswa
		`idmahasiswa`	INTEGER NOT NULL,
		`nim`	INTEGER NOT NULL,
		`nama`	TEXT NOT NULL,
		`alamat`	TEXT NOT NULL,
		`jurusan`	TEXT NOT NULL
		PRIMARY KEY(idmahasiswa,nim)
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

	CREATE TABLE `relationship` (
	`idrelationship`	INTEGER NOT NULL,
	`iddosen`	INTEGER NOT NULL,
	`nim`	INTEGER NOT NULL,
	`idmatkul`	INTEGER NOT NULL,
	`nilai`	INTEGER NOT NULL,
	PRIMARY KEY(idrelationship,iddosen,nim,idmatkul)
);


--Tambah Mahasiswa
INSERT INTO `mahasiswa`(`nim`, `nama`,`alamat`,`jurusan`) VALUES ('01','Firmansyah','Jakarta','Sistem Informasi');
INSERT INTO `mahasiswa`(`nim`, `nama`,`alamat`,`jurusan`) VALUES ('02','Mikha','Bekasi','Hukum');
INSERT INTO `mahasiswa`(`nim`, `nama`,`alamat`,`jurusan`) VALUES ('03','Toni','Jakarta','Komputer');


--Tambah Jurusan
INSERT INTO `jurusan`(`nama`) VALUES ('Sastra Indonesia');
INSERT INTO `jurusan`(`nama`) VALUES ('Sastra Jerman');
INSERT INTO `jurusan`(`nama`) VALUES ('Sastra Arab');

--Tambah Dosen
INSERT INTO `dosen`(`nama`) VALUES ('Nur');
INSERT INTO `dosen`(`nama`) VALUES ('Rila Mandala');
INSERT INTO `dosen`(`nama`) VALUES ('Antonius');


--Tambah Mata_Kuliah
INSERT INTO `matakuliah`(`nama`,`sks`) VALUES (Agama,'4');
INSERT INTO `matakuliah`(`nama`,`sks`) VALUES ('Bahasa Indonesia','3');
INSERT INTO `matakuliah`(`nama`,`sks`) VALUES ('Komputer','4');

--Tambah Relationship
INSERT INTO `Relationship`(`iddosen`,`nim`, `idmatkul`,`nilai`) VALUES ('0002', '01', '002', 100);
INSERT INTO `Relationship`(`iddosen`,`nim`, `idmatkul`,`nilai`) VALUES ('0001', '02', '001', 80);
INSERT INTO `Relationship`(`iddosen`,`nim`, `idmatkul`,`nilai`) VALUES ('0003', '03', '003', 100);

--untuk nilai
select mahasiswa.nama, matakuliah.nama as nama_mata_kuliah, dosen.nama as dosen, nilai from relationship,
mahasiswa, dosen, matakuliah
where relationship.nim=mahasiswa.nim and
relationship.iddosen=dosen.iddosen and
matakuliah.idmatkul = relationship.idmatkul
