CREATE TABLE mahasiswa(
  nim TEXT PRIMARY KEY,
  nama VARCHAR NOT NULL,
  alamat TEXT,
  idjurusan INTEGER
);

CREATE TABLE jurusan(
  idjurusan INTEGER PRIMARY KEY AUTOINCREMENT,
  namajurusan VARCHAR NOT NULL
);

CREATE TABLE dosen(
  iddosen INTEGER PRIMARY KEY AUTOINCREMENT,
  namadosen VARCHAR NOT NULL
);

CREATE TABLE matakuliah(
  idmk INTEGER PRIMARY KEY AUTOINCREMENT,
  namamk VARCHAR NOT NULL,
  sks TEXT
);

CREATE TABLE kontrak(
  idkontrak INTEGER PRIMARY KEY AUTOINCREMENT,
  nim INTEGER ,
  idjurusan INTEGER ,
  iddosen INTEGER ,
  idmk INTEGER,
  nilai INTEGER
);

INSERT INTO mahasiswa (nama,alamat,idjurusan)
VALUES ('fahmi', 'katapang', 20 );

INSERT INTO jurusan (namajurusan)
VALUES ('ipa');

INSERT INTO dosen (namadosen)
VALUES ('saya' );

INSERT INTO matakuliah (namamk,sks)
VALUES ('biologi','tes');

INSERT INTO kontrak (nim,idjurusan,iddosen,idmk,nilai)
VALUES (1, 20, 5,10 );


select mahasiswa.nama as nama_mahasiswa,
jurusan.namajurusan as nama_jurusan,
dosen.namadosen as nama_dosen,
matakuliah.namamk as nama_mk, nilai

from
kontrak
left join mahasiswa on mahasiswa.nim = kontrak.nim --left join buat biar dia bisa maksa keluarin meskipun datanya kurang
left join jurusan on jurusan.idjurusan = kontrak.idjurusan
left join dosen on dosen.iddosen = kontrak.iddosen
left join matakuliah on matakuliah.idmk = kontrak.idmk
