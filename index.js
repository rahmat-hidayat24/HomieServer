const http = require('http');
const express = require('express');
const app = express()
const mysql = require('mysql')
const bodyParser = require('body-parser')



const jwt = require('jsonwebtoken')
const fs = require('fs')

var secret_key = 'carikos'

const conn = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'homie'
})



// app.use(bodyParser.urlencoded({ extended: false }));
// app.use(bodyParser.json());

app.use(bodyParser.json({limit:'5mb'})); 
app.use(bodyParser.urlencoded({extended:true, limit:'5mb'}));

app.use((req, res, next) => {
    res.setHeader('Access-Control-Allow-Origin', '*')
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, PATCH, DELETE');
    if (req.method === "OPTIONS") {
        res.setHeader('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept, Authorization');
        return res.status(200).json({});
    }
    next();
})

// Load Image

app.use('/images', express.static(__dirname + '/images/user/'));
app.use('/images/hunian', express.static('./images/hunian/'));
app.use('/images/icon', express.static('./images/icon/'));
app.use('/images/user', express.static('./images/user/'));

// // Komponen Login

app.post('/login', (req, res) => {
    conn.query(`select * from tbl_user where username ='${req.body.username}' and password = '${req.body.password}'`, (err, rows) => {
        if (err) { res.status(500).json(err) }
        else {
            if (rows[0] === undefined || rows[0].password !== req.body.password) {
                res.json(false)
            }
            else if (rows[0].password === req.body.password) {
                var payload = {
                    username: rows[0].username,
                    password: rows[0].password
                }
                var token = jwt.sign(payload, secret_key, { expiresIn: '2d' })
                res.status(200).json({
                    username: rows[0].username,
                    password: rows[0].password,
                    nama: rows[0].nama,
                    tel: rows[0].tel,
                    jenis: rows[0].jenis,
                    token: token
                })
            }
        }
    })
})

// Tambah User

app.post('/register', (req, res) => {
    var username = req.body.username
    var password = req.body.password
    var pin = req.body.pin
    var nama = req.body.nama
    var email = req.body.email
    var alamat = req.body.alamat
    var tel = req.body.tel
    var kota = req.body.kota
    var jk = req.body.jk
    var jenis = req.body.jenis
    var poto = req.body.poto
    var queryCheck = `select username from tbl_user where username='${username}'`
    var queryStr = `INSERT INTO tbl_user (id, username, password, pin, nama, email,alamat ,kota ,tel ,jk ,jenis ,poto) VALUES ('', '${username}', '${password}','${pin}','${nama}','${email}','${alamat}','${kota}','${tel}','${jk}','${jenis}','${poto}') `;
    var queryStr1 = `INSERT INTO tbl_homiepay (id, username, nama, pin, tel, saldo) VALUES ('', '${username}', '${nama}','${pin}','${tel}','0');`
    console.log(username)
    console.log(password)
    console.log(jenis)
    conn.query(queryCheck, (err, rows) => {
        if (rows.length >= 1) res.status(400).json(err), console.log(err)
        else if (req.body === null) { res.status(400).json(err), console.log(err) }
        else conn.query(queryStr, (err, rows) => {
            if (err) res.status(400).json(err), console.log(err)
            else conn.query(queryStr1, (err, rows) => {
                if (err) res.status(400).json(err), console.log(err)
                else res.status(200).json(rows), console.log(rows)
            })
        })

    })
})

// Layanan

// Tampilkan Homie Pay
// SELECT * FROM tbl_homiepay as hp INNER JOIN tbl_bank as b on hp.nomorKartu = b.nomorKartu WHERE username='${req.params.username}'
app.get('/homiepay/:username', (req, res) => {
    conn.query(`SELECT * FROM tbl_homiepay WHERE username='${req.params.username}'`, (err, rows) => {
        if (err) res.status(400).json(err), console.log(err)
        else res.status(200).json(rows[0]), console.log(rows[0])
    })
})

// Tambah Saldo / Edit Saldo HomiePay

app.put(`/homiepay/saldo/:username`, (req, res) => {
    conn.query(`UPDATE tbl_homiepay SET saldo = '${req.body.saldo}' WHERE username = '${req.params.username}'`, (err, rows) => {
        if (err) {
            res.status(500).json(err),
                console.log(err)
        }
        else {
            res.status(200).json(rows)
        }
    })
})


// Tambah Kartu Debit

app.put(`/homiepay/tambah-debit/:username`, (req, res) => {
    var queryCheckDebit = `select * from tbl_bank where nomorKartu='${req.body.nomorKartu}'`
    var queryStr = `UPDATE tbl_homiepay SET nomorKartu = '${req.body.nomorKartu}', maxTopUp='${req.body.maxTopUp}' WHERE username = '${req.params.username}'`
    conn.query(queryCheckDebit, (err, rows) => {
        if (rows.length === 0) res.status(400).json(err), console.log(err)
        else if (req.body === null) { res.status(400).json(err), console.log(err) }
        else {
            conn.query(queryStr, (err, rows) => {
                if (err) {
                    res.status(500).json(err),
                        console.log(err)
                }
                else {
                    res.status(200).json(rows), console.log(rows)
                }
            })
        }
    })
})


// Tampil tbl_air

app.get('/layanan/air/:nomorPelanggan/:kota', (req, res) => {
    conn.query(`select * from tbl_air where noPelanggan='${req.params.nomorPelanggan}' and lokasi='${req.params.kota}'`, (err, rows) => {
        if (err) { res.status(500).json(err), console.log(err) }
        else { res.status(200).json(rows), console.log(rows) }
    })
})

// Tampil tbl_pln
app.get('/layanan/pln/:nomorPelanggan/:jenisListrik', (req, res) => {
    conn.query(`select * from tbl_pln where noPelanggan='${req.params.nomorPelanggan}' and jenisListrik='${req.params.jenisListrik}'`, (err, rows) => {
        if (err) { res.status(500).json(err), console.log(err) }
        else { res.status(200).json(rows), console.log(rows) }
    })
})


// Tampil tbl_pulsa
app.get('/layanan/pulsa/:tel', (req, res) => {
    conn.query(`select * from tbl_pulsa where tel='${req.params.tel}'`, (err, rows) => {
        if (err) { res.status(500).json(err), console.log(err) }
        else { res.status(200).json(rows), console.log(rows) }
    })
})



// Tambah Survei

app.post('/survei/add',(req,res)=>{
    var { nomorSurvei, username, nama_hunian, tanggalSurvei, waktuSurvei, pesan, usernamePenerima, namaPenerima, tanggalBuat, status, nama } = req.body
    conn.query(`INSERT INTO tbl_survei (id, nomor_survei, username, nama_hunian, tanggalSurvei, waktuSurvei, pesan, usernamePenerima, namaPenerima, tanggalBuat, status, nama) VALUES ('', '${nomorSurvei}', '${username}','${nama_hunian}','${tanggalSurvei}','${waktuSurvei}','${pesan}','${usernamePenerima}','${namaPenerima}','${tanggalBuat}','${status}','${nama}')`,(err, rows)=>{
        if (err) res.status(400).json(err), console.log(err)
        else res.status(200).json(rows), console.log(rows)
    })
})

// Tampilkan Survei
app.get('/survei/list/:username',(req,res)=>{
    conn.query(`select * from tbl_survei where username = '${req.params.username}'`,(err, rows)=>{
        if(err) res.status(400).json(err), console.log(err)
        else res.status(200).json(rows), console.log(rows)
    })
})


// Tambah Detail Transaksi
app.post(`/transaksi/add`, (req, res) => {
    var no_transaksi = req.body.no_transaksi
    var jenisTransaksi = req.body.jenisTransaksi
    var kategoriTransaksi = req.body.kategoriTransaksi
    var pemilik = req.body.pemilik
    var nama_hunian = req.body.nama_hunian
    var username = req.body.username
    var nama = req.body.nama
    var no_kamar = req.body.no_kamar
    var tgl_masuk = req.body.tgl_masuk
    var tgl_keluar = req.body.tgl_keluar
    var tgl_transaksi = req.body.date
    var kodePromo = req.body.kodePromo
    var nominal = req.body.nominal
    var metode = req.body.metode
    conn.query(`INSERT INTO tbl_transaksi (id, no_transaksi, jenisTransaksi, kategoriTransaksi, pemilik,nama_hunian,username, nama, no_kamar, tgl_masuk, tgl_keluar, tgl_transaksi, kodePromo, nominal, metode) VALUES ('','${no_transaksi}','${jenisTransaksi}','${kategoriTransaksi}','${pemilik}', '${nama_hunian}','${username}','${nama}', '${no_kamar}', '${tgl_masuk}', '${tgl_keluar}','${tgl_transaksi}', '${kodePromo}','${nominal}', '${metode}')`, (err, rows) => {
        if (err) res.status(400).json(err), console.log(err)
        else res.status(200).json(rows), console.log(rows)
    })
})



// Tambah Hunian

app.post('/hunian/add', (req, res) => {
    var namaHunian = req.body.namaHunian
    var username = req.body.username
    var pemilik = req.body.pemilik
    var alamatHunian = req.body.alamatHunian
    var tipeHunian = req.body.tipeHunian
    var luasHunian = req.body.luasHunian
    var jenisListrik = req.body.jenisListrik
    var penghuni = req.body.penghuni
    var pet = req.body.pet
    var luasTanah = req.body.luasTanah
    var luasKamar = req.body.luasKamar
    var jlhLantai = req.body.jlhLantai
    var jlhKT = req.body.jlhKT
    var jlhKM = req.body.jlhKM
    var fasilitasHunian = req.body.fasilitasHunian
    var hargaHunianDay = req.body.hargaHunianDay
    var hargaHunianWeek = req.body.hargaHunianWeek
    var hargaHunianMonth = req.body.hargaHunianMonth
    var hargaHunianYear = req.body.hargaHunianYear
    var poto = req.body.poto
    var deskripsi = req.body.deskripsi
    var lang = req.body.lang
    var long = req.body.long
    var datePost = req.body.datePost
    var queryStr = `INSERT INTO tbl_hunian (id, nm_hunian, username,pemilik ,alamat_hunian, tipe_hunian, luasHunian, jenisListrik, penghuni, pet,luasTanah ,luasKamar ,jlhLantai ,jlhKT ,jlhKM ,nama_fasilitas ,harga_hunian_day ,harga_hunian_week ,harga_hunian_month ,harga_hunian_year ,poto , deskripsi,langtitude,longtitude,datePost) VALUES ('', '${namaHunian}', '${username}','${pemilik}','${alamatHunian}','${tipeHunian}','${luasHunian}','${jenisListrik}', '${penghuni}','${pet}','${luasTanah}','${luasKamar}','${jlhLantai}','${jlhKT}','${jlhKM}', '${fasilitasHunian}','${hargaHunianDay}' ,'${hargaHunianWeek}' ,'${hargaHunianMonth}' ,'${hargaHunianYear}' ,'${poto}', '${deskripsi}', '${lang}', '${long}', '${datePost}')`;
    conn.query(queryStr, (err, rows) => {
        if (err) res.status(400).json(err), console.log(err)
        else res.status(200).json(rows), console.log(rows)
    })
})

// Upload Foto

app.post('/upload-foto/:username', (req, res) => {
    var poto = req.body.poto;
    var d = Date.now();
    var filename = d + "_IMAGE.jpg";

    console.log(req.body)

    var binaryData = new Buffer(poto, 'base64').toString('binary');
    fs.writeFile(__dirname + '/images/user/' + filename, binaryData, 'binary',
        (err) => {
            if (err) res.status(400).json(err), console.log(err)
            else res.status(200).json({ message: 'success' }), console.log(res)
        })
        console.log(filename)
    conn.query(`UPDATE tbl_user SET poto = '${filename}' WHERE username ='${req.params.username}'`)
})


// Edit Profil

app.put('/profile/edit/:username', (req, res) => {
    conn.query(`UPDATE tbl_user SET nama = '${req.body.nama}', alamat = '${req.body.alamat}' , kota = '${req.body.kota}' , email = '${req.body.email}' , tel = '${req.body.tel}' WHERE username = '${req.params.username}'`, (err, rows) => {
        if (err) {
            res.status(500).json(err),
            console.log(err)
        }
        else {
            res.status(200).end()
        }
    })
})


// Tambah Kamar

app.post('/kamar/add', (req, res) => {
    var no_kamar = req.body.no_kamar
    var nama_hunian = req.body.nama_hunian
    var pemilik = req.body.pemilik
    var username = req.body.username
    var nama = req.body.nama
    var status = req.body.status
    var nama_kamar = req.body.nama_kamar
    var lokasi_kamar = req.body.lokasi_kamar
    var maxPerson = req.body.kapasitas_kamar
    var namaFasilitas = req.body.namaFasilitas
    var queryStr = `INSERT INTO tbl_kamar (id, no_kamar,nama_kamar, nama_hunian, pemilik, username, nama, maxPerson, status, nama_fasilitas, lokasi_kamar) VALUES ('', '${no_kamar}','${nama_kamar}','${nama_hunian}','${pemilik}','${username}','${nama}','${maxPerson}','${status}','${namaFasilitas}','${lokasi_kamar}')`;
    conn.query(queryStr, (err, rows) => {
        if (err) res.status(400).json(err), console.log(err)
        else res.status(200).json(rows), console.log(rows)
    })
})

// Tampil Fasilitas Kamar dan Hunian 


app.get('/fasilitas/:tipe_fasilitas', (req, res) => {
    conn.query(`SELECT * FROM tbl_fasilitas where tipe_fasilitas = '${req.params.tipe_fasilitas}'`, (err, rows) => {
        if (err) { res.status(500).json(err) }
        else { res.status(200).json(rows) }
    })
})

// Menampilkan Fasilitas Hunian dan Kamar Berdasarkan Nama Hunian
app.get('/:nama_hunian/kamar', (req, res) => {
    conn.query(`SELECT  k.nama_hunian, h.luasKamar , GROUP_CONCAT(DISTINCT k.nama_fasilitas SEPARATOR ',') AS Fasilitas FROM tbl_kamar AS k INNER JOIN tbl_hunian as h on k.nama_hunian = h.nm_hunian JOIN tbl_kamar on k.nama_hunian = h.nm_hunian WHERE k.nama_hunian = '${req.params.nama_hunian}'`, (err, rows) => {
        if (err) { res.status(500).json(err) }
        else { res.status(200).json(rows[0]) }
    })
})


// Menampilkan Semua Hunian Untuk Dashboard Pemilik Hunian

app.get('/hunian/:pemilik', (req, res) => {
    conn.query(`SELECT * FROM tbl_hunian where pemilik = '${req.params.pemilik}'`, (err, rows) => {
        if (err) { res.status(500).json(err) }
        else { res.status(200).json(rows) }
    })
})

app.get('/hunian/:pemilik/:nm_hunian', (req, res) => {
    conn.query(`SELECT * FROM tbl_hunian where pemilik = '${req.params.pemilik}' AND nm_hunian ='${req.params.nm_hunian}'`, (err, rows) => {
        if (err) { res.status(500).json(err) }
        else { res.status(200).json(rows[0]) }
    })
})


// Menampilkan Kamar

app.get('/kamar/:nm_hunian', (req, res) => {
    conn.query(`SELECT * FROM tbl_kamar where nama_hunian = '${req.params.nm_hunian}' GROUP BY nama_kamar`, (err, rows) => {
        if (err) { res.status(500).json(err) }
        else { res.status(200).json(rows) }
    })
})

// Menampilkan SemuaHunian Penghuni / Calon Penghuni

app.get('/hunian', (req, res) => {
    conn.query(`select * from tbl_hunian order by datePost desc`, (err, rows) => {
        if (err) { res.status(500).json(err) }
        else { res.status(200).json(rows) }
    })
})



app.get('/profil/:username', (req, res) => {
    conn.query(`select * from tbl_user where username = '${req.params.username}'`, (err, rows) => {
        if (err) { res.status(500).json(err) }
        else { res.status(200).json(rows[0]) }
    })
})

// Chat

app.post('/Chat/add', (req, res) => {
    var username = req.body.username
    var jenis = req.body.jenis
    var nama = req.body.nama
    var pemilik = req.body.pemilik
    var namaHunian = req.body.namaHunian
    var message = req.body.message
    var date = req.body.date
    var time = req.body.time
    var status = req.body.status
    var queryStr = `INSERT INTO tbl_chat (id, username, jenis, nama, pemilik, nama_hunian, message, date, time, status) VALUES ('', '${username}', '${jenis}', '${nama}','${pemilik}', '${namaHunian}','${message}', '${date}','${time}','${status}')`;
    conn.query(queryStr, (err, rows) => {
        if (err) res.status(400).json(err)
        else res.status(200).json(rows)
    })
})

// List dan Detail Chat Pemilik

app.get('/Chat/:pemilik', (req, res) => {
    conn.query(`SELECT tbl_chat.id,  tbl_chat.username,  tbl_chat.nama,  tbl_chat.pemilik,  tbl_chat.nama_hunian,  tbl_chat.message,  tbl_chat.date, tbl_chat.time, tbl_chat.status, tbl_user.poto FROM tbl_chat INNER JOIN tbl_user ON tbl_user.username = tbl_chat.username WHERE tbl_chat.id IN (SELECT MAX(tbl_chat.id) FROM tbl_chat WHERE pemilik = '${req.params.pemilik}'  GROUP BY nama_hunian, nama)`, (err, rows) => {
        if (err) { res.status(500).json(err) }
        else res.status(200).json(rows)
    })
})

app.get('/Chat/:pemilik/detail/:nama/:hunian', (req, res) => {
    conn.query(`SELECT * FROM tbl_chat WHERE pemilik='${req.params.pemilik}' and nama = '${req.params.nama}' and nama_hunian = '${req.params.hunian}'`, (err, rows) => {
        if (err) { res.status(500).json(err) }
        else { res.status(200).json(rows), console.log(rows) }
    })
})

// List dan Detail Chat Penghuni

app.get('/Chat/:pemilik/:hunian/:nama', (req, res) => {
    conn.query(`select * from tbl_chat where pemilik ='${req.params.pemilik}' and nama_hunian = '${req.params.hunian}' and nama = '${req.params.nama}'`, (err, rows) => {
        if (err) { res.status(500).json(err) }
        else res.status(200).json(rows)
    })
})

app.get('/Chat/list/penghuni/:nama', (req, res) => {
    conn.query(`SELECT tbl_chat.id,  tbl_chat.username,  tbl_chat.nama,  tbl_chat.pemilik,  tbl_chat.nama_hunian,  tbl_chat.message,  tbl_chat.date, tbl_chat.time, tbl_chat.status, tbl_user.poto FROM tbl_chat INNER JOIN tbl_user ON tbl_user.username = tbl_chat.username WHERE tbl_chat.id IN (SELECT MAX(tbl_chat.id) FROM tbl_chat WHERE nama = '${req.params.nama}'  GROUP BY nama_hunian)`, (err, rows) => {
        if (err) { res.status(500).json(err) }
        else { res.status(200).json(rows), console.log(rows) }
    })
})


// Ulasan

// Tambah Ulasan

app.post('/Ulasan/add', (req, res) => {
    var namaHunian = req.body.namaHunian
    var pemilik = req.body.pemilik
    var username = req.body.username
    var nama = req.body.nama
    var jenis = req.body.jenis
    var ulasan = req.body.ulasan
    var poto = req.body.poto
    var date = req.body.date
    var starFasilitas = req.body.starFasilitas
    var starHarga = req.body.starHarga
    var starKeamanan = req.body.starKeamanan
    var starKebersihan = req.body.starKebersihan
    var starKenyamanan = req.body.starKenyamanan
    var queryStr = `INSERT INTO tbl_ulasan(id, nama_hunian, pemilik, username, nama, jenis, ulasan, poto, date, starFasilitas, starHarga, starKeamanan, starKebersihan, starKenyamanan) VALUES ('','${namaHunian}','${pemilik}','${username}','${nama}','${jenis}','${ulasan}','${poto}','${date}','${starFasilitas}','${starHarga}','${starKeamanan}','${starKebersihan}','${starKenyamanan}')`;
    conn.query(queryStr, (err, rows) => {
        if (err) res.status(400).json(err), console.log(err)
        else res.status(200).json(rows), console.log(rows)
    })
})

// Tampilkan Ulasan

app.get('/Ulasan/:nama_hunian/:pemilik', (req, res) => {
    conn.query(`SELECT * FROM tbl_ulasan WHERE nama_hunian = '${req.params.nama_hunian}' and pemilik = '${req.params.pemilik}'`, (err, rows) => {
        if (err) res.status(400).json(err), console.log(err)
        else res.status(200).json(rows), console.log(rows)
    })
})

const server = http.createServer(app);
server.listen(8000, () => {
    console.log('Connect With Port 8000')
})
