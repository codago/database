--Buat Tabel

CREATE TABLE mahasiswa (
	nim text primary key not null,
  nama varchar(50),
  alamat text,
  id_jurusan integer
);


CREATE TABLE jurusan (
  id_jurusan integer primary key autoincrement,
  namajurusan varchar(50)
);

CREATE TABLE dosen (
	id_dosen integer primary key autoincrement,
  nama varchar(50)
);

CREATE TABLE mata_kuliah (
	id_matkul integer primary key autoincrement,
  nama varchar(50),
  sks integer
);

CREATE TABLE kontrak (
	id_kontrak integer primary key autoincrement,
  nim integer,
  id_dosen integer,
  id_matkul integer,
  nilai varchar(2)
);

--ENTRY DATA KE TABEl
insert into mahasiswa (nim, nama, alamat, id_jurusan)
  values ('30110064', 'Rian', 'Dago','1');

insert into mahasiswa (nim, nama, alamat, id_jurusan)
    values ('30110070', 'Ria', 'Bandung','2');

insert into jurusan(id_jurusan, namajurusan)
  values ('1', 'Seni Rupa');

insert into jurusan(id_jurusan, namajurusan)
  values ('2', 'Komunikasi');

insert into jurusan(id_jurusan, namajurusan)
  values ('3', 'Manajemen');

insert into dosen(id_dosen, nama)
  values ('11', 'Budi');

insert into dosen(id_dosen, nama)
  values ('12', 'Rudi');


insert into mata_kuliah(id_matkul, nama, sks)
  values('20', 'Pemrograman Berorientasi Objek', '3');

insert into mata_kuliah(id_matkul, nama, sks)
  values ('21', 'Rekayasa Perangkat Lunak', '2')

insert into kontrak(id_kontrak,nim,id_dosen,id_matkul, nilai)
  values('50','30110020','13','22','70')

  insert into kontrak(id_kontrak,nim,id_dosen,id_matkul, nilai)
    values('51','30110021','14','23','80')

  --Contoh Query Menampilkan data TABEl
select * from mahasiswa where nama='Rian'
select mahasiswa.nama, jurusan.id_jurusan from mahasiswa,jurusan
