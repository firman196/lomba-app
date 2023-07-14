CREATE TABLE IF NOT EXISTS `kategori_lomba` (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    kategori_id INTEGER,
    lomba_id INTEGER,
    is_deleted ENUM(0,1) DEFAULT 0 COMMENT '0: FALSE or 1:TRUE';
    created_at TIMESTAMP DEFAULT (now()),
    updated_at TIMESTAMP DEFAULT (now())
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--- Create foreign key constraints with table "kategori_lomba"---
ALTER TABLE `kategori_lomba` ADD FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--- Create foreign key constraints with table "lomba"---
ALTER TABLE `kategori_lomba` ADD FOREIGN KEY (`lomba_id`) REFERENCES `lomba` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;