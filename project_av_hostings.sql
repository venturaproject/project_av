/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : localhost:3306
 Source Schema         : project_av_hostings

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 28/12/2019 12:31:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for rom
-- ----------------------------
DROP TABLE IF EXISTS `rom`;
CREATE TABLE `rom` (
  `romnr` smallint(4) NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `town` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stars` char(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `persons` char(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`romnr`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of rom
-- ----------------------------
BEGIN;
INSERT INTO `rom` VALUES (1, 'Individual', 'Almeria', 'Hotel Real', 'Almeria', '4', 'image-1', '1');
INSERT INTO `rom` VALUES (2, 'Individual', 'Toledo', 'Hotel Leon', 'Toledo', '3', 'image-1', '1');
INSERT INTO `rom` VALUES (3, 'Individual', 'Madrid', 'Hotel Cameo', 'Getafe', '4', 'image-1', '1');
INSERT INTO `rom` VALUES (4, 'Individual', 'Madrid', 'Hotel Guerra', 'Majadahonda', '4', 'image-1', '1');
INSERT INTO `rom` VALUES (5, 'Habitación doble', 'Baleares', 'Hotel Wellington', 'Mallorca', '2', 'image-1', '3');
INSERT INTO `rom` VALUES (6, 'Habitación doble', 'Sevilla', 'Hotel Navas', 'Sevilla', '3', 'image-1', '3');
INSERT INTO `rom` VALUES (7, 'Habitación doble', 'Baleares', 'Hotel Giroud', 'Formentera', '4', 'image-1', '3');
INSERT INTO `rom` VALUES (8, 'Habitación doble', 'Madrid', 'Hotel Baren', 'Madrid', '3', 'image-1', '3');
INSERT INTO `rom` VALUES (9, 'Habitación doble', 'Gijon', 'Hotel Preciado', 'Gijon', '3', 'image-1', '4');
INSERT INTO `rom` VALUES (10, 'Individual', 'Huesca', 'Hotel Casas', 'Huesca', '4', 'image-1', '2');
INSERT INTO `rom` VALUES (11, 'Apartamento', 'Teruel', 'Apartamentos Prieto', 'Teruel', '3', 'image-2', '4');
INSERT INTO `rom` VALUES (12, 'Apartamento', 'Almeria', 'Apartamentos Leize', 'Almeria', '4', 'image-2', '4');
INSERT INTO `rom` VALUES (13, 'Habitación doble', 'Baleares', 'Hotel Matas', 'Ibiza', '2', 'image-1', '3');
INSERT INTO `rom` VALUES (14, 'Habitación doble', 'Badajoz', 'Hotel Pancorbo', 'Badajoz', '2', 'image-1', '3');
INSERT INTO `rom` VALUES (15, 'Apartamento', 'Cadiz', 'Apartamentos La Luz', 'Cadiz', '3', 'image-2', '5');
INSERT INTO `rom` VALUES (16, 'Individual', 'Cadiz', 'Hotel Campoamor', 'Cadiz', '4', 'image-1', '2');
INSERT INTO `rom` VALUES (17, 'Individual', 'Guipúzcoa', 'Hotel Rubio', 'San Sebastián', '4', 'image-1', '2');
INSERT INTO `rom` VALUES (18, 'Habitación doble', 'Santander', 'Hotel Lluch', 'Santander', '3', 'image-1', '3');
INSERT INTO `rom` VALUES (19, 'Habitación doble', 'La Coruña', 'Hotel Girauta', 'Santiago de Compostela', '4', 'image-1', '4');
INSERT INTO `rom` VALUES (20, 'Apartamento', 'Madrid', 'Apartamentos Roverson', 'Madrid', '3', 'image-2', '4');
INSERT INTO `rom` VALUES (21, 'Suite', 'Madrid', 'Hotel Felis', 'Brunete', '2', 'image-1', '4');
INSERT INTO `rom` VALUES (22, 'Suite', 'Madrid', 'Hotel Fenix', 'Madrid', '4', 'image-1', '4');
INSERT INTO `rom` VALUES (23, 'Habitación doble', 'Madrid', 'Hotel Fenix', 'Madrid', '4', 'image-1', '3');
INSERT INTO `rom` VALUES (24, 'Individual', 'Madrid', 'Hotel Fenix', 'Madrid', '4', 'image-1', '2');
INSERT INTO `rom` VALUES (25, 'Individual', 'Zamora', 'Hotel  Hayward', 'Zamora', '3', 'image-1', '1');
INSERT INTO `rom` VALUES (26, 'Habitación doble', 'Málaga', 'Hotel Godwin', 'Málaga', '3', 'image-1', '3');
INSERT INTO `rom` VALUES (27, 'Habitación doble', 'Málaga', 'Hotel Huerter', 'Málaga', '4', 'image-1', '3');
INSERT INTO `rom` VALUES (28, 'Habitación doble', 'Málaga', 'Hotel Jones', 'Málaga', '3', 'image-1', '3');
INSERT INTO `rom` VALUES (29, 'Habitación doble', 'Málaga', 'Hotel Parsons', 'Málaga', '2', 'image-1', '3');
INSERT INTO `rom` VALUES (30, 'Habitación doble', 'Málaga', 'Hotel Len', 'Marbella', '4', 'image-1', '3');
INSERT INTO `rom` VALUES (31, 'Habitación doble', 'Málaga', 'Hotel Bruno', 'Marbella', '4', 'image-1', '3');
INSERT INTO `rom` VALUES (32, 'Habitación doble', 'Málaga', 'Hotel Parker', 'Marbella', '4', 'image-1', '3');
INSERT INTO `rom` VALUES (33, 'Habitación doble', 'Cantabria', 'Hotel Sterling', 'Santander', '3', 'image-1', '3');
INSERT INTO `rom` VALUES (34, 'Habitación doble', 'Cantabria', 'Hotel Bender', 'Santander', '3', 'image-1', '3');
INSERT INTO `rom` VALUES (35, 'Habitación doble', 'Cantabria', 'Hotel Middleton', 'Santander', '3', 'image-1', '3');
INSERT INTO `rom` VALUES (36, 'Habitación doble', 'Cantabria', 'Hotel Wilson', 'Santander', '3', 'image-1', '3');
INSERT INTO `rom` VALUES (37, 'Habitación doble', 'Cantabria', 'Hotel Mattheus', 'Santander', '3', 'image-1', '3');
INSERT INTO `rom` VALUES (38, 'Habitación doble', 'Cantabria', 'Hotel Reynolds', 'Santander', '2', 'image-1', '3');
INSERT INTO `rom` VALUES (39, 'Habitación doble', 'Cantabria', 'Hotel Cameron', 'Santander', '2', 'image-1', '3');
INSERT INTO `rom` VALUES (40, 'Habitación doble', 'Cantabria', 'Hotel Donte', 'Santander', '2', 'image-1', '3');
INSERT INTO `rom` VALUES (41, 'Habitación doble', 'Pontevedra', 'Hotel Burke', 'Pontevedra', '3', 'image-1', '3');
INSERT INTO `rom` VALUES (42, 'Suite', 'Ourense', 'Hotel PO´Quinn', 'Ourense', '4', 'image-1', '4');
INSERT INTO `rom` VALUES (43, 'Suite', 'Ourense', 'Hotel Neto', 'Ourense', '4', 'image-1', '4');
INSERT INTO `rom` VALUES (44, 'Suite', 'Ourense', 'Hotel Scott', 'Ourense', '4', 'image-1', '4');
INSERT INTO `rom` VALUES (45, 'Suite', 'Ourense', 'Hotel Richardson', 'Ourense', '4', 'image-1', '4');
INSERT INTO `rom` VALUES (46, 'Suite', 'Ourense', 'Hotel Shayok', 'Ourense', '4', 'image-1', '4');
INSERT INTO `rom` VALUES (47, 'Suite', 'Ourense', 'Hotel Simmons', 'Ourense', '4', 'image-1', '4');
INSERT INTO `rom` VALUES (48, 'Suite', 'Madrid', 'Hotel Thybulle', 'Madrid', '3', 'image-1', '5');
INSERT INTO `rom` VALUES (49, 'Suite', 'Madrid', 'Hotel Harris', 'Madrid', '4', 'image-1', '5');
INSERT INTO `rom` VALUES (50, 'Suite', 'Madrid', 'Hotel Milton', 'Madrid', '4', 'image-1', '5');
INSERT INTO `rom` VALUES (51, 'Suite', 'Valencia', 'Hotel Horford', 'Valencia', '4', 'image-1', '5');
INSERT INTO `rom` VALUES (52, 'Suite', 'Valencia', 'Hotel Bolden', 'Valencia', '4', 'image-1', '5');
INSERT INTO `rom` VALUES (53, 'Suite', 'Valencia', 'Hotel Ennis', 'Valencia', '4', 'image-1', '5');
INSERT INTO `rom` VALUES (54, 'Suite', 'Valencia', 'Hotel Furkan', 'Valencia', '4', 'image-1', '5');
INSERT INTO `rom` VALUES (55, 'Suite', 'Valencia', 'Hotel Marial', 'Valencia', '4', 'image-1', '5');
INSERT INTO `rom` VALUES (56, 'Apartamento', 'León', 'Apartamentos Tafarel', 'León', '3', 'image-2', '5');
INSERT INTO `rom` VALUES (57, 'Apartamento', 'León', 'Apartamentos Bledsoe', 'León', '3', 'image-2', '6');
INSERT INTO `rom` VALUES (58, 'Apartamento', 'León', 'Apartamentos DiVicenzo', 'León', '3', 'image-2', '6');
INSERT INTO `rom` VALUES (59, 'Apartamento', 'Lérida', 'Apartamentos Hill', 'Lérida', '3', 'image-2', '6');
INSERT INTO `rom` VALUES (60, 'Apartamento', 'Lérida', 'Apartamentos Korver', 'Lérida', '3', 'image-2', '6');
INSERT INTO `rom` VALUES (61, 'Apartamento', 'Lérida', 'Apartamentos Lopez', 'Lérida', '3', 'image-2', '6');
INSERT INTO `rom` VALUES (62, 'Apartamento', 'Lérida', 'Apartamentos Mason', 'Lérida', '3', 'image-2', '6');
INSERT INTO `rom` VALUES (63, 'Individual', 'Las Palmas', 'Hotel Pelle', 'Las Palmas', '3', 'image-1', '2');
INSERT INTO `rom` VALUES (64, 'Individual', 'Las Palmas', 'Hotel Tobias', 'Las Palmas', '4', 'image-1', '2');
INSERT INTO `rom` VALUES (65, 'Individual', 'Las Palmas', 'Hotel Jusuf', 'Las Palmas', '4', 'image-1', '2');
INSERT INTO `rom` VALUES (66, 'Individual', 'Las Palmas', 'Hotel Collum', 'Las Palmas', '4', 'image-1', '2');
INSERT INTO `rom` VALUES (67, 'Individual', 'Las Palmas', 'Hotel Damian', 'Las Palmas', '4', 'image-1', '2');
INSERT INTO `rom` VALUES (68, 'Individual', 'Girona', 'Hotel Hoard', 'Girona', '3', 'image-1', '2');
INSERT INTO `rom` VALUES (69, 'Individual', 'Girona', 'Hotel Nassir', 'Girona', '3', 'image-1', '2');
INSERT INTO `rom` VALUES (70, 'Individual', 'Girona', 'Hotel Rodney', 'Girona', '2', 'image-1', '2');
INSERT INTO `rom` VALUES (71, 'Individual', 'Girona', 'Hotel Little', 'Girona', '2', 'image-1', '2');
INSERT INTO `rom` VALUES (72, 'Individual', 'Girona', 'Hotel Hood', 'Girona', '2', 'image-1', '2');
INSERT INTO `rom` VALUES (73, 'Individual', 'Girona', 'Hotel Anfernee', 'Girona', '2', 'image-1', '2');
INSERT INTO `rom` VALUES (74, 'Individual', 'Granada', 'Hotel Trent', 'Granada', '2', 'image-1', '2');
INSERT INTO `rom` VALUES (75, 'Individual', 'Granada', 'Hotel Hassan ', 'Granada', '3', 'image-1', '2');
INSERT INTO `rom` VALUES (76, 'Habitación doble', 'Granada', 'Hotel Skal', 'Granada', '3', 'image-1', '3');
INSERT INTO `rom` VALUES (77, 'Habitación doble', 'Barcelona', 'Hotel Hoard', 'Barcelona', '3', 'image-1', '3');
INSERT INTO `rom` VALUES (78, 'Habitación doble', 'Barcelona', 'Hotel Jaylen', 'Barcelona', '3', 'image-1', '3');
INSERT INTO `rom` VALUES (79, 'Habitación doble', 'Barcelona', 'Hotel Bazemore', 'Barcelona', '3', 'image-1', '3');
INSERT INTO `rom` VALUES (80, 'Habitación doble', 'Barcelona', 'Hotel Barnes', 'Barcelona', '4', 'image-1', '3');
INSERT INTO `rom` VALUES (81, 'Habitación doble', 'Barcelona', 'Hotel Fox', 'Barcelona', '4', 'image-1', '3');
INSERT INTO `rom` VALUES (82, 'Habitación doble', 'Barcelona', 'Hotel Ferrell', 'Barcelona', '4', 'image-1', '3');
INSERT INTO `rom` VALUES (83, 'Habitación doble', 'Barcelona', 'Hotel Bagley', 'Barcelona', '4', 'image-1', '3');
INSERT INTO `rom` VALUES (84, 'Habitación doble', 'Barcelona', 'Hotel Hield', 'Barcelona', '4', 'image-1', '3');
INSERT INTO `rom` VALUES (85, 'Habitación doble', 'Barcelona', 'Hotel Holes', 'Barcelona', '4', 'image-1', '3');
INSERT INTO `rom` VALUES (86, 'Habitación doble', 'Barcelona', 'Hotel Kyle', 'Barcelona', '4', 'image-1', '3');
INSERT INTO `rom` VALUES (87, 'Habitación doble', 'Barcelona', 'Hotel Dedmon', 'Barcelona', '3', 'image-1', '3');
INSERT INTO `rom` VALUES (88, 'Apartamento', 'Cuenca', 'Apartamentos Tafarel', 'Cuenca', '3', 'image-2', '4');
INSERT INTO `rom` VALUES (89, 'Apartamento', 'Burgos', 'Apartamentos Bone', 'Burgos', '3', 'image-2', '4');
INSERT INTO `rom` VALUES (90, 'Apartamento', 'Burgos', 'Apartamentos Brown', 'Burgos', '3', 'image-2', '4');
INSERT INTO `rom` VALUES (91, 'Apartamento', 'Soria', 'Apartamentos Galloway', 'Soria', '3', 'image-2', '4');
INSERT INTO `rom` VALUES (92, 'Apartamento', 'Soria', 'Apartamentos Griffin', 'Soria', '3', 'image-2', '4');
INSERT INTO `rom` VALUES (93, 'Apartamento', 'Soria', 'Apartamentos Maker', 'Soria', '3', 'image-2', '4');
INSERT INTO `rom` VALUES (94, 'Apartamento', 'Soria', 'Apartamentos Rose', 'Soria', '3', 'image-2', '6');
INSERT INTO `rom` VALUES (95, 'Apartamento', 'Soria', 'Apartamentos Snell', 'Soria', '3', 'image-2', '6');
INSERT INTO `rom` VALUES (96, 'Apartamento', 'Soria', 'Apartamentos Thomas', 'Soria', '3', 'image-2', '6');
INSERT INTO `rom` VALUES (97, 'Apartamento', 'Valladolid', 'Apartamentos Wood', 'Valladolid', '3', 'image-2', '6');
INSERT INTO `rom` VALUES (98, 'Apartamento', 'Valladolid', 'Apartamentos Frazier', 'Valladolid', '3', 'image-2', '6');
INSERT INTO `rom` VALUES (99, 'Apartamento', 'Valladolid', 'Apartamentos Allen', 'Valladolid', '3', 'image-2', '6');
INSERT INTO `rom` VALUES (100, 'Apartamento', 'Valladolid', 'Apartamentos Crowder', 'Valladolid', '3', 'image-2', '6');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
