CREATE TABLE IF NOT EXISTS `attribut_peserta_lomba` (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    lomba_id INTEGER NOT NULL,
    kategori_peserta_id INTEGER NOT NULL,
    kategori_name VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT (now()),
    updated_at TIMESTAMP DEFAULT (now())
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--- Create foreign key constraints with table "lomba"---
ALTER TABLE `attribut_peserta_lomba` ADD FOREIGN KEY (`lomba_id`) REFERENCES `lomba` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--- Create foreign key constraints with table "kategori_peserta"---
ALTER TABLE `attribut_peserta_lomba` ADD FOREIGN KEY (`kategori_peserta_id`) REFERENCES `kategori_peserta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;