-- buat table dosen
CREATE TABLE "dosen" ("id_dosen" INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL , "nama" TEXT);
INSERT INTO "dosen" VALUES(1,'rubi');
INSERT INTO "dosen" VALUES(2,'reky');

-- buat table jurusan
CREATE TABLE "jurusan" ("id_jurusan" INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL , "nama_jurusan" TEXT);
INSERT INTO "jurusan" VALUES(1,'hukum_adat');
INSERT INTO "jurusan" VALUES(2,'hukum_islam');
INSERT INTO "jurusan" VALUES(3,'hukum_perdata');
INSERT INTO "jurusan" VALUES(4,'hukum_pidana');
INSERT INTO "jurusan" VALUES(5,'hukum_internasional');
-- buat table mahasiswa
CREATE TABLE "mahasiswa" ("nim" INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL  UNIQUE , "nama" TEXT, "alamat" TEXT, "jurusan" TEXT);
INSERT INTO "mahasiswa" VALUES(1,'abdul','padang','hukum_adat');
INSERT INTO "mahasiswa" VALUES(2,'radian','tuban','hukum_islam');
INSERT INTO "mahasiswa" VALUES(3,'william','bandung','hukum_perdata');
INSERT INTO "mahasiswa" VALUES(4,'firmansyah','bekasi','hukum_pidana');
INSERT INTO "mahasiswa" VALUES(5,'arry','bogor','hukum_internasional');
INSERT INTO "mahasiswa" VALUES(6,'toni','jakarta','hukum_pidana');
INSERT INTO "mahasiswa" VALUES(7,'bimo','jakarta','hukum_perdata');
INSERT INTO "mahasiswa" VALUES(8,'markus','karawang','hukum_pidana');
INSERT INTO "mahasiswa" VALUES(9,'mikha','karawang','hukum_perdata');
INSERT INTO "mahasiswa" VALUES(10,'fahmi','bandung','hukum_islam');
INSERT INTO "mahasiswa" VALUES(11,'zulkarnain','makassar','hukum_adat');
INSERT INTO "mahasiswa" VALUES(12,'agung','bogor','hukum_perdata');
-- buat table mata kuliah
CREATE TABLE "mata_kuliah" ("id_mata_kuliah" INTEGER PRIMARY KEY  NOT NULL , "nama" TEXT, "sks" INTEGER);
INSERT INTO "mata_kuliah" VALUES(1,'antropologi_budaya',2);
INSERT INTO "mata_kuliah" VALUES(2,'mawaris',2);
INSERT INTO "mata_kuliah" VALUES(3,'munakahah',3);
INSERT INTO "mata_kuliah" VALUES(4,'kepailitan',4);
INSERT INTO "mata_kuliah" VALUES(5,'kontrak',4);
INSERT INTO "mata_kuliah" VALUES(6,'peradilan_pidana',2);
INSERT INTO "mata_kuliah" VALUES(7,'perjanjian_internasional',2);
