CREATE TABLE jurusan(
   idjurusan INTEGER PRIMARY KEY AUTOINCREMENT,
   namajurusan VARCHAR(50) NOT NULL
);

--entry jurusan
INSERT INTO jurusan (namajurusan) VALUES
('komputer'),
('geologi');

CREATE TABLE mahasiswa(
   nim TEXT PRIMARY KEY NOT NULL,
   nama VARCHAR(50) NOT NULL,
   alamat TEXT,
   idjurusan INTEGER
);

--entry mahasiswa
INSERT INTO mahasiswa (nim, nama, alamat, idjurusan) VALUES
('00001', 'budi', 'dago', 1),
('00002', 'ali', 'tubagus', 2),
('00003', 'sarah', 'cisitu', 1),
('00004', 'eva', 'setiabudi', 2);

CREATE TABLE dosen(
   iddosen INTEGER PRIMARY KEY AUTOINCREMENT,
   namadosen VARCHAR(50) NOT NULL
);

--entry dosen
INSERT INTO dosen (namadosen) VALUES
('muhamad'),
('dewi'),
('iman');


CREATE TABLE matakuliah(
   idmk INTEGER PRIMARY KEY AUTOINCREMENT,
   namamk VARCHAR(50) NOT NULL,
   sks INTEGER
);

--entry matakuliah
INSERT INTO matakuliah (namamk, sks) VALUES
('matematika',4),
('fisika', 4),
('kimia', 3),
('komputer', 3);

CREATE TABLE kontrakmk(
   id INTEGER PRIMARY KEY AUTOINCREMENT,
   nim TEXT NOT NULL,
   iddosen INTEGER NOT NULL,
   idmk INTEGER NOT NULL,
   nilai VARCHAR(2)
);

--entry kontrakmk
INSERT INTO kontrakmk (nim, iddosen, idmk, nilai) VALUES
('00001', 2, 1, 'A'),
('00001', 2, 2, 'B'),
('00001', 3, 3, 'E'),
('00001', 3, 4, 'D');


select kontrakmk.id, mahasiswa.nama, matakuliah.namamk
from kontrakmk, mahasiswa, matakuliah
where kontrakmk.nim = mahasiswa.nim AND matakuliah.idmk = kontrakmk.idmk;
