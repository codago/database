CREATE TABLE `Mahasiswa` (
	`Nim`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`Nama_Mahasiswa`	TEXT NOT NULL,
	`Alamat`	TEXT NOT NULL,
	`ID_Jurusan`	INTEGER NOT NULL,
	`Umur`	NUMERIC NOT NULL
);

CREATE TABLE `Jurusan` (
	`ID_Jurusan`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`Nama_Jurusan`	Type NOT NULL
);

CREATE TABLE `Dosen` (
	`ID_Dosen`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`Nama_Dosen`	Text NOT NULL
);

CREATE TABLE `MataKuliah` (
	`ID_Mata_Kuliah`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`Nama_Mata_Kuliah`	Text NOT NULL,
	`SKS`	Number NOT NULL
);

CREATE TABLE `Kontrak` (
	`ID_Kontrak`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`ID_Mata_Kuliah`	INTEGER NOT NULL,
	`Nim`	INTEGER NOT NULL,
	`ID_Dosen`	INTEGER NOT NULL,
	`Nilai`	TEXT NOT NULL
);

insert into Jurusan(Nama_Jurusan)values
  ('informatika'),
  ('jaringan'),
  ('database');

  insert into Mahasiswa(Nim, Nama_Mahasiswa, Alamat, ID_Jurusan)values
    ('00080676', 'william', 'bandung', 1),
    ('00080677', 'phillip', 'jakarta', 2);

    insert into Dosen(Nama_Dosen)values
      ('reky'),
      ('rubi');

      insert into MataKuliah(Nama_Mata_Kuliah, SKS)values
        ('data mining', 3),
        ('algoritma', 2);

        insert into Kontrak(Nim, ID_Dosen, ID_Mata_Kuliah, Nilai)values
          ('00080676', 1, 2, 'B');

--contoh query
SELECT Mahasiswa.Nim, Mahasiswa.Nama_Mahasiswa,  Dosen.Nama_Dosen as namadosen, MataKuliah.Nama_Mata_Kuliah, Kontrak.Nilai as matakuliah
FROM Kontrak, Mahasiswa, Dosen, MataKuliah
WHERE Kontrak.Nim = Mahasiswa.Nim AND Kontrak.ID_Dosen = Dosen.ID_Dosen AND Kontrak.ID_Mata_Kuliah = MataKuliah.ID_Mata_Kuliah
