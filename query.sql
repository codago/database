-- create table jurusan 
CREATE TABLE jurusan(
        jurusan_id integer PRIMARY KEY,
        nama text NOT NULL
);

-- insert data jurusan

INSERT INTO jurusan (nama) 
VALUES ("Game Application");


-- create table Dosen
CREATE TABLE dosen(
        dosen_id integer PRIMARY KEY,
        nama text NOT NULL
);

-- insert data dosen


INSERT INTO dosen (nama) 
VALUES ("Michael Joseph");

-- create table Mahasiswa
CREATE TABLE mahasiswa(
        mahasiswa_id integer PRIMARY KEY,
        nim text NOT NULL,
        nama text NOT NULl,
        alamat text NOT NULL,
        jurusan REFERENCES jurusan (jurusan_id)
);

-- insert data mahasiswa

INSERT INTO mahasiswa (nim,nama,alamat,jurusan) 
VALUES ("1601271955","Toni","Kebayoran lama",1);

-- display data mahasiswa from jurusan using join
SELECT mahasiswa.nim,mahasiswa.nama,jurusan.nama FROM mahasiswa JOIN jurusan on mahasiswa.jurusan = jurusan.jurusan_id;

-- create table matakuliah
CREATE TABLE matakuliah(
        matakuliah_id integer PRIMARY KEY,
        nama text NOT NULL,
        sks integer NOT NULL
);

-- insert data matakuliah
INSERT INTO matakuliah (nama,sks) 
VALUES ("Game Design",6);

-- create table kontrak matakuliah
CREATE TABLE kontrak(
    kontrak_id integer PRIMARY KEY,
    nilai integer NOT NULL,
    dosen REFERENCES dosen (dosen_id),
    mahasiswa REFERENCES mahasiswa (mahasiswa_id),
    matakuliah REFERENCES matakuliah (matakuliah_id)
)

-- insert data kontrak
INSERT INTO kontrak (nilai,dosen,mahasiswa,matakuliah) 
VALUES (80,1,1,1);




-- display data kontrak from table mahasiswa,dosen

SELECT kontrak.nilai,mahasiswa.nim,mahasiswa.nama,dosen.nama 
FROM kontrak 
INNER JOIN mahasiswa on mahasiswa.mahasiswa_id = kontrak.mahasiswa
INNER JOIN dosen on dosen.dosen_id = kontrak.dosen;