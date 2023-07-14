CREATE TABLE IF NOT EXISTS `tags_lomba` (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    lomba_id INTEGER;
    tags_id INTEGER;
    created_at TIMESTAMP DEFAULT (now()),
    updated_at TIMESTAMP DEFAULT (now())
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--- Create foreign key constraints with table "tags"---
ALTER TABLE `tags_lomba` ADD FOREIGN KEY (`tags_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--- Create foreign key constraints with table "lomba"---
ALTER TABLE `tags_lomba` ADD FOREIGN KEY (`lomba_id`) REFERENCES `lomba` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;