CREATE TABLE IF NOT EXISTS `peserta` (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(100) NOT NULL,
    lastname VARCHAR(100) NOT NULL,
    kategori_peserta_id INTEGER NOT NULL,
    alamat TEXT DEFAULT NULL,
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
    status ENUM("0","1","2") DEFAULT "0" COMMENT '0:panding, 1:aktif, 2:banned',
    created_at TIMESTAMP DEFAULT (now()),
    updated_at TIMESTAMP DEFAULT (now())
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `penyelenggara` (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    deskripsi text DEFAULT NULL,
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
    is_verified ENUM("0","1") DEFAULT "0" COMMENT '0:false, 1:true',
    status ENUM("0","1","2") DEFAULT "0" COMMENT '0:panding, 1:aktif, 2:banned',
    created_at TIMESTAMP DEFAULT (now()),
    updated_at TIMESTAMP DEFAULT (now())
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `kategori_lomba` (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    kategori_id INTEGER NOT NULL,
    lomba_id INTEGER NOT NULL,
    is_deleted ENUM("0","1") DEFAULT "0" COMMENT '0: FALSE or 1:TRUE',
    created_at TIMESTAMP DEFAULT (now()),
    updated_at TIMESTAMP DEFAULT (now())
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `kategori` (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    icon VARCHAR(255) DEFAULT NULL,
    gambar VARCHAR(255) DEFAULT NULL,
    is_popular ENUM("0","1") DEFAULT "0" COMMENT '0: FALSE or 1:TRUE',
    is_deleted ENUM("0","1") DEFAULT "0" COMMENT '0: FALSE or 1:TRUE',
    created_at TIMESTAMP DEFAULT (now()),
    updated_at TIMESTAMP DEFAULT (now())
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tags_lomba` (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    lomba_id INTEGER NOT NULL,
    tags_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT (now()),
    updated_at TIMESTAMP DEFAULT (now())
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tags` (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    tags_name VARCHAR(255),
    slug VARCHAR(255),
    is_deleted ENUM("0","1") DEFAULT "0" COMMENT '0: FALSE or 1:TRUE',
    created_at TIMESTAMP DEFAULT (now()),
    updated_at TIMESTAMP DEFAULT (now())
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `attribut_peserta_lomba` (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    lomba_id INTEGER NOT NULL,
    kategori_peserta_id INTEGER NOT NULL,
    kategori_name VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT (now()),
    updated_at TIMESTAMP DEFAULT (now())
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `kategori_peserta` (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    is_deleted ENUM("0","1") DEFAULT "0" COMMENT '0: FALSE or 1:TRUE',
    created_at TIMESTAMP DEFAULT (now()),
    updated_at TIMESTAMP DEFAULT (now())
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `attribut_hadiah_lomba` (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    lomba_id INTEGER NOT NULL,
    kategori_peserta_id INTEGER NOT NULL,
    kategori_name VARCHAR(100) NOT NULL,
    hadiah VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT (now()),
    updated_at TIMESTAMP DEFAULT (now())
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `lomba` (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    judul VARCHAR(255) NOT NULL,
    is_online ENUM("0","1") DEFAULT "0" COMMENT "0: false, 1:true",
    kota_id INTEGER NOT NULL,
    mulai_pendaftaran DATE NOT NULL,
    selesai_pendaftaran DATE NOT NULL,
    mulai_pelaksanaan DATE NOT NULL,
    selesai_pelaksanaan DATE NOT NULL,
    kuota_pendaftar INTEGER DEFAULT 0,
    total_pendaftar INTEGER DEFAULT 0,
    deskripsi TEXT DEFAULT NULL,
    poster VARCHAR(255) DEFAULT NULL,
    timeline TEXT DEFAULT NULL,
    harga INTEGER DEFAULT 0,
    is_free ENUM("0","1") DEFAULT "0" COMMENT "0: false, 1:true",
    penyelenggara_id INTEGER NOT NULL,
    syarat_ketentuan TEXT DEFAULT NULL,
    link_pendaftaran VARCHAR(255) DEFAULT NULL,
    created_at TIMESTAMP DEFAULT (now()),
    updated_at TIMESTAMP DEFAULT (now())
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `attribut_hadiah_lomba` ADD FOREIGN KEY (`lomba_id`) REFERENCES `lomba` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `lomba` ADD FOREIGN KEY (`penyelenggara_id`) REFERENCES `penyelenggara` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `attribut_hadiah_lomba` ADD FOREIGN KEY (`kategori_peserta_id`) REFERENCES `kategori_peserta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `attribut_peserta_lomba` ADD FOREIGN KEY (`kategori_peserta_id`) REFERENCES `kategori_peserta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `tags_lomba` ADD FOREIGN KEY (`tags_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `kategori_lomba` ADD FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
