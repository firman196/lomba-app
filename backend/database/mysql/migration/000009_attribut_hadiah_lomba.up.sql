CREATE TABLE IF NOT EXISTS `attribut_hadiah_lomba` (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    lomba_id INTEGER NOT NULL,
    kategori_peserta_id INTEGER NOT NULL,
    kategori_name VARCHAR(100) NOT NULL,
    hadiah VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT (now()),
    updated_at TIMESTAMP DEFAULT (now())
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
