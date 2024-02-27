CREATE TABLE `Metals`
(
    `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `metal` NVARCHAR(160) NOT NULL,
    `price` NUMERIC(5,2) NOT NULL
);
CREATE TABLE `Styles`
(
    `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `style` NVARCHAR(160) NOT NULL,
    `price` NUMERIC(5,2) NOT NULL
);
CREATE TABLE `Sizes`
(
    `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `carets` NVARCHAR(160) NOT NULL,
    `price` NUMERIC(5,2) NOT NULL
);
CREATE TABLE `Types`
(
    `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `name` NVARCHAR(160) NOT NULL
);
CREATE TABLE `Orders`
(
    `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    [metal_id] INTEGER NOT NULL,
    [style_id] INTEGER NOT NULL,
    [type_id] INTEGER NOT NULL,
    [size_id] INTEGER NOT NULL,
    FOREIGN KEY(`metal_id`) REFERENCES `Metals`(`id`),
    FOREIGN KEY(`style_id`) REFERENCES `Styles`(`id`),
    FOREIGN KEY(`size_id`) REFERENCES `Sizes`(`id`),
    FOREIGN KEY(`type_id`) REFERENCES `Types`(`id`)
);

INSERT INTO `Metals` VALUES (null, '14K Gold', 700);
INSERT INTO `Metals` VALUES (null, 'Platinum', 795);
INSERT INTO `Metals` VALUES (null, 'Sterling Silver', 100);
INSERT INTO `Styles` VALUES (null, 'Modern', 700);
INSERT INTO `Styles` VALUES (null, 'Classic', 500);
INSERT INTO `Styles` VALUES (null, 'Vintage', 965);
INSERT INTO `Sizes` VALUES (null, 1.5, 1350);
INSERT INTO `Sizes` VALUES (null, .5, 405);
INSERT INTO `Sizes` VALUES (null, 1, 1997);
INSERT INTO `Types` VALUES (null, 'Necklace');
INSERT INTO `Types` VALUES (null, 'Earring');
INSERT INTO `Types` VALUES (null, 'Ring');

INSERT INTO `Orders` VALUES(null, 1, 1, 1, 3);
INSERT INTO `Orders` VALUES(null, 2, 1, 3, 2);
INSERT INTO `Orders` VALUES(null, 3, 3, 2, 1);

