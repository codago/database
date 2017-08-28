"use strict";

const fs        = require("fs");
const readline  = require('readline');
let input       = process.argv;
let panjang     = input.length;
let fungsi      = input[2];
let table       = input[3];

const rl = readline.createInterface({
      input: process.stdin,
      output: process.stdout
      });

const sqlite3 = require('sqlite3').verbose();

let db = new sqlite3.Database('university.db', (err) => {
  if (err) {
    return console.error(err.message);
  }
  //console.log('Connected to university.db database.');
});


  function create() {
    switch (table) {

      case "mahasiswa":
              db.run('CREATE TABLE IF NOT EXISTS table_mahasiswa(nim INTEGER PRIMARY KEY AUTOINCREMENT, nama TEXT NOT NULL, alamat  NOT NULL, jurusan NOT NULL) ;');
              db.close();
              process.exit(0);
              break;

      case "jurusan":
              db.run('CREATE TABLE IF NOT EXISTS table_jurusan(id_jurusan INTEGER PRIMARY KEY AUTOINCREMENT, nama_jurusan TEXT NOT NULL) ;');
              db.close();
              process.exit(0);
              break;

      case "dosen":
              db.run('CREATE TABLE IF NOT EXISTS table_dosen(id_dosen INTEGER PRIMARY KEY AUTOINCREMENT, nama_dosen TEXT NOT NULL) ;');
              db.close();
              process.exit(0);
              break;

      case "matakuliah":
              db.run('CREATE TABLE IF NOT EXISTS table_matakuliah(id_matakuliah INTEGER PRIMARY KEY AUTOINCREMENT, nama_matakuliah TEXT NOT NULL, sks  NOT NULL) ;');
              db.close();
              process.exit(0);
              break;

      default:
            console.log("ada salah memasukkan perintah, pelajari dokumentasi ya");
    }
  }


  function  insert() {

    switch (table) {
      case "mahasiswa":

            let a = 0;
            let nim,nama,alamat,jurusan;

            console.log("ketik nama mahasiswa");
            rl.on('line', (input) => {
                if (a===0){
                  nama = input;
                  a=a+1;
                  console.log("Ketik alamat mahasiswa");
                }
                else if (a===1) {
                  alamat = input;
                  a=a+1;

                  console.log("Ketik jurusan mahasiswa");
                }
                else if (a===2) {
                  jurusan = input;
                  a=a+1;
                  console.log("simpan? ya/tidak");
                }else if(a===3 && input === "ya"){
                    db.run('INSERT INTO table_mahasiswa (nama, alamat, jurusan) VALUES(?,?,?)',[nama,alamat,jurusan]), function(err) {
                    if(err){
                      console.log("g kesimpan");
                    }else{
                      console.log("berhasil");
                      db.close();
                      process.exit(0);
                    }
                  }}
                 });
                 break;

       case "jurusan":
       let b = 0;
       let id_jurusan,nama_jurusan;
       console.log("ketik nama jurusan");
       rl.on('line', (input) => {
           if (b===0){
             nama_jurusan = input;
             b=b+1;
             console.log("simpan? ya/tidak");
           }else if(b===1 && input === "ya"){
               db.run('INSERT INTO table_jurusan (nama_jurusan) VALUES(?)',[nama_jurusan]), function(err){
               if(err){
                 console.log("g kesimpan");
               }else{
                 console.log("berhasil disimpan");
                 db.close();
                 process.exit(0);
               }
             }}
            });
           break;

       case "dosen":
       let c = 0;
       let nama_dosen;
       console.log("ketik nama dosen");
       rl.on('line', (input) => {
           if (c===0){
             nama_dosen = input;
             c=c+1;
             console.log("simpan? ya/tidak");
           }else if(c===1 && input === "ya"){
               db.run('INSERT INTO table_dosen (nama_dosen) VALUES(?)',[nama_dosen]), function(err){
               if(err){
                 console.log("g kesimpan");
               }else{
                 console.log("berhasil disimpan");
                 db.close();
                 process.exit();
               }
             }}
            });
           break;

       case "matakuliah":
       let d = 0;
       let nama_matakuliah, sks;
       console.log("ketik mata kuliah");
       rl.on('line', (input) => {
           if (d===0){
             nama_matakuliah = input;
             d=d+1;
             console.log("ketik jumlah sks");
           }else if (d===1) {
               sks = input;
               d=d+1;
               console.log("simpan? ya/tidak");

           }else if(d===2 && input === "ya"){
               db.run('INSERT INTO table_matakuliah (nama_matakuliah,sks) VALUES(?,?)',[nama_matakuliah,sks]), function(err){
               if(err){
                 console.log("g kesimpan");
               }else{
                 console.log("berhasil disimpan");
                 db.close();
                 process.exit(0);
               }
             }}
            });
           break;
     }
   }



  if (fungsi== "create"){
        create();
    }
    else if (fungsi == "insert"){
      insert();
    }
