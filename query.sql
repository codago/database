CREATE TABLE mahasiswa(
  nim TEXT PRIMARY KEY NOT NULL,
  nama VARCHAR(50) NOT NULL,
  alamat TEXT,
  idjurusan INTEGER
);

CREATE TABLE jurusan(
  idjurusan INTEGER PRIMARY KEY AUTOINCREMENT,
  namajurusan VARCHAR(50) NOT NULL
);

CREATE TABLE dosen(
  iddosen INTEGER PRIMARY KEY AUTOINCREMENT,
  nama VARCHAR(50) NOT NULL
);

CREATE TABLE matakuliah(
  idmatakuliah INTEGER PRIMARY KEY AUTOINCREMENT,
  nama VARCHAR(50) NOT NULL,
  sks INTEGER NOT NULL
);

CREATE TABLE kontrak(
  idkontrak INTEGER PRIMARY KEY AUTOINCREMENT,
  nim TEXT NOT NULL,
  iddosen INTEGER NOT NULL,
  idmatakuliah INTEGER NOT NULL,
  nilai VARCHAR(2)
);

--entrydata
INSERT INTO jurusan(namajurusan) VALUES
('management'),
('teknik');

INSERT INTO mahasiswa(nim, nama, alamat, idjurusan) VALUES
('001', 'Markus', 'Karawang', 1),
('002', 'Mikha', 'Karawang', 2);

INSERT INTO dosen(nama) VALUES
('Suresh'),
('Witono');

INSERT INTO matakuliah(nama, sks) VALUES
('Intro to Management', 3),
('Calculus', 4);

INSERT INTO kontrak(nim, iddosen, idmatakuliah, nilai) VALUES
('001', 1, 1, 'A'),
('001', 1, 2, 'B'),
('002', 2, 2, 'B');

select mahasiswa.nama, matakuliah.nama as nama_mata_kuliah, dosen.nama as dosen, nilai from kontrak,
mahasiswa, dosen, matakuliah
where kontrak.nim=mahasiswa.nim and
kontrak.iddosen=dosen.iddosen and
matakuliah.idmatakuliah = kontrak.idmatakuliah
