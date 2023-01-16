DROP TABLE IF EXISTS `myTable`;

CREATE TABLE `myTable` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `numberrange` mediumint default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `myTable` (`numberrange`)
VALUES
  (42),
  (64),
  (43),
  (28),
  (13),
  (28),
  (60),
  (37),
  (18),
  (54);
INSERT INTO `myTable` (`numberrange`)
VALUES
  (32),
  (59),
  (34),
  (53),
  (2),
  (16),
  (31),
  (36),
  (67),
  (69);
INSERT INTO `myTable` (`numberrange`)
VALUES
  (22),
  (19),
  (64),
  (28),
  (9),
  (32),
  (64),
  (40),
  (17),
  (5);
