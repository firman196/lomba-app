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
    is_verified ENUM(0,1) DEFAULT 0 COMMENT '0:false, 1:true',
    status ENUM(0,1,2) DEFAULT 0 COMMENT '0:nonaktif, 1:aktif, 2:banned',
    created_at TIMESTAMP DEFAULT (now()),
    updated_at TIMESTAMP DEFAULT (now())
) ENGINE=InnoDB DEFAULT CHARSET=utf8;