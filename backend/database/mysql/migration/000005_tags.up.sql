CREATE TABLE IF NOT EXISTS `kategori_lomba` (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    tags_name VARCHAR(255),
    slug VARCHAR(255),
    is_deleted ENUM(0,1) DEFAULT 0 COMMENT '0: FALSE or 1:TRUE';
    created_at TIMESTAMP DEFAULT (now()),
    updated_at TIMESTAMP DEFAULT (now())
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
