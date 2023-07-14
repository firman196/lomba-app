CREATE TABLE IF NOT EXISTS `peserta` (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(100) NOT NULL,
    lastname VARCHAR(100) NOT NULL,
    kategori_peserta_id INTEGER NOT NULL,
    alamat DEFAULT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    salt VARCHAR(100) NOT NULL,
    no_telp VARCHAR(100) NOT NULL,
    facebook VARCHAR(255) DEFAULT NULL,
    instagram VARCHAR(255) DEFAULT NULL,
    website VARCHAR(255) DEFAULT NULL,
    twitter VARCHAR(255) DEFAULT NULL,
    linkedin VARCHAR(255) DEFAULT NULL,
    foto VARCHAR(100) DEFAULT NULL,
    kota_id INTEGER NOT NULL,
    status ENUM(0,1,2) DEFAULT 0 COMMENT '0:panding, 1:aktif, 2:banned',
    created_at TIMESTAMP DEFAULT (now()),
    updated_at TIMESTAMP DEFAULT (now())
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--- Create foreign key constraints with table "kategori_peserta"---
ALTER TABLE `peserta` ADD FOREIGN KEY (`kategori_peserta_id`) REFERENCES `kategori_peserta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--- Create foreign key constraints with table "kategori_peserta"---
ALTER TABLE `peserta` ADD FOREIGN KEY (`kota_id`) REFERENCES `kota` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;