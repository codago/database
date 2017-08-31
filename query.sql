CREATE TABLE mahasiswa (
  nim text primary key not null,
  nama varchar(50),
  alamat text,
  idjurusan integer
);

CREATE TABLE jurusan (
  idjurusan integer primary key autoincrement,
  namajurusan varchar(50)
);

CREATE TABLE dosen (
  iddosen integer primary key autoincrement,
  nama varchar(50)
);

CREATE TABLE matakuliah (
  idmatakuliah integer primary key autoincrement,
  nama varchar(50),
  sks integer
);

CREATE TABLE kontrak (
  idkontrak integer primary key autoincrement,
  nim integer,
  iddosen integer,
  idmatakuliah integer,
  nilai varchar(2)
);


insert into jurusan(namajurusan)values
  ('informatika'),
  ('jaringan'),
  ('database');

  insert into mahasiswa(nim, nama, alamat, idjurusan)values
    ('00080676', 'radian', 'tuban', 1),
    ('00080677', 'rudi', 'jakarta', 2);

    insert into dosen(nama)values
      ('reky'),
      ('rubi');

      insert into matakuliah(nama, sks)values
        ('data mining', 3),
        ('algoritma', 2);

        insert into kontrak(nim, iddosen, idmatakuliah, nilai)values
          ('00080676', 1, 2, 'B');

--contoh query
SELECT mahasiswa.nim, mahasiswa.nama,  dosen.nama as namadosen, matakuliah.nama, kontrak.nilai as matakuliah
FROM kontrak, mahasiswa, dosen, matakuliah
WHERE kontrak.nim = mahasiswa.nim AND kontrak.iddosen = dosen.iddosen AND kontrak.idmatakuliah = matakuliah.idmatakuliah
