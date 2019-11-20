-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 20-11-2019 a las 04:58:33
-- Versión del servidor: 5.7.19
-- Versión de PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `alquiler5`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alquiladora`
--

DROP TABLE IF EXISTS `alquiladora`;
CREATE TABLE IF NOT EXISTS `alquiladora` (
  `id_alquiladora` int(10) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(70) NOT NULL,
  `capacidad_mesa` int(12) NOT NULL,
  `diseño` text NOT NULL,
  `modelo_silla` varchar(20) NOT NULL,
  `num_sillas` int(40) NOT NULL,
  `foto` varchar(250) NOT NULL,
  `precio` float NOT NULL,
  `forro` varchar(20) NOT NULL,
  `loza` varchar(20) NOT NULL,
  `cristaleria` varchar(20) NOT NULL,
  `mesero` int(50) NOT NULL,
  `comentario` varchar(256) DEFAULT NULL,
  `id_cuenta` int(11) NOT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_alquiladora`),
  KEY `id_cuenta` (`id_cuenta`),
  KEY `id_categoria` (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=531 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alquiladora`
--

INSERT INTO `alquiladora` (`id_alquiladora`, `Nombre`, `capacidad_mesa`, `diseño`, `modelo_silla`, `num_sillas`, `foto`, `precio`, `forro`, `loza`, `cristaleria`, `mesero`, `comentario`, `id_cuenta`, `id_categoria`) VALUES
(501, 'Los Angeles', 12, 'cuadrada,redonda,redonda cristal', 'Sillas de madera', 12, 'angel.jpg', 3500, 'Sin forro', 'Ceramica', 'Cristal cortado', 24, 'Excelente servicio', 6, 3),
(502, 'Collection', 20, 'cuadrada cristal,tablon,redonda', 'Sillas de metal ', 20, 'collection.jpg', 3000, 'Tela', 'Barro', 'Copas', 25, 'Calidad en los servicios', 2, 3),
(503, 'Gumpy', 24, 'vintage rectangulares, cuadradas, cristal, de espejo.', 'Silla Tiffany', 24, 'gumpy.jpg', 4000, 'Textil color morado', 'Vajillas de vidrio', 'Vados de vidrio', 24, 'Calidad y comodidad ', 3, 3),
(504, 'Alkila', 8, 'vintage rectangulares, cuadradas, cristal, de espejo,tablon,redonda', 'Silla de madera', 8, 'alkila.jpg', 1500, 'Sin forro', 'Vajilla porcelana ', 'Vaso tequilero', 10, 'Excelente servicio', 3, 3),
(505, 'Maryflex', 10, 'vintage rectangulares, cuadradas, cristal, de espejo,tablones', 'Phoenix dorada, cris', 600, 'maryflex.jpg', 180, 'azul,rojo,amarillo,v', 'cristal,porcelana', 'copas,jaiboleros,teq', 80, 'Excelente servicio por parte de los meseros.', 179, 3),
(506, 'AlaBio', 9, 'cuadrada cristal,cuadrada vintage,cuadrada madera', 'Cross Back, Phoenix,', 450, 'alabio.jpg', 250, 'azul,negro,dorado,ro', 'porcelana,cristal,ta', 'copa,jaibolero', 70, 'Buen servicio, precio acccesible', 180, 3),
(507, 'Renttable', 10, 'vintage color gris, color café, periquera, redonda', 'metal blanca,cross b', 400, 'rentable.jpg', 210, 'rojo,rosa,azul', 'porcelana,talavera', 'copa,tequilero', 90, 'buen servicio', 181, 3),
(508, 'Marron', 8, 'cuadradas, infantiles y redondas', 'acojinada,negra', 300, 'marron.JPG', 150, 'verde,amarillo,naran', 'barro,talavera', 'haibolero,tequilero', 60, 'buen servicio', 182, 3),
(509, 'Teyssier', 9, 'redondas madera, cuadradas cristal y rectangulares', 'Tiffany acojinadas', 450, 'teyssier.jpg', 230, 'verde,azul,amarillo', 'barro, cristal', 'tequilero,jaibolero', 90, 'Servicio inigualable ', 183, 3),
(510, 'Valery', 510, 'cuadrada cristal,rectangular espejo, madera rectangular', 'Infantil, Phoenix', 350, 'valery.jpg', 225, 'verde,rosa,morado', 'cristal,talavera', 'copa,tequilero', 50, 'precio accesible', 191, 3),
(511, 'Irresistible Encanto', 10, 'vintage color gris,color café,periquera, redonda', 'Tiffany de herreria', 430, 'irresistible encanto.jpg', 250, 'fiusha,verde,negro', 'cuadrada cristal,por', 'old fashion, tarro', 70, 'servicio de calidad', 192, 3),
(512, 'D\'Event', 12, 'redondas, cuadradas (10 o 12 personas), cuadrada de cristal rectangulares.', 'Cross Back', 400, 'D\'Event.jpg', 180, 'violeta,azul,rosa', 'talavera,porcelana', 'martinero,jaibolero', 110, 'servicio inigualable', 193, 3),
(513, 'Rentame Plus', 12, 'vintage rectangulares, cuadradas, cristal, de espejo,redondas,tablones', 'Avant garden blancas', 650, 'rentame plus.jpg', 240, 'naranja,amarillo,ver', 'cristal ', 'jugo martinera, old ', 100, 'buen servicio', 194, 3),
(514, 'Cocktail Mobiliario', 8, 'vintage rectangulares, cuadradas, cristal, de espejo,redondas', 'Phoenix doradas, cri', 700, 'coctail mobiliario.jpg', 280, 'forro bordado', 'cristal,talavera', 'copa,old fashion', 55, 'servicio de calidad', 195, 3),
(515, 'La Alquiladora', 8, 'vintage rectangulares, cuadradas, cristal, de espejo', 'versalles plata y bl', 800, 'la alquiladora.jpg', 250, 'rosa,violeta,magenta', 'cristal,porcelana', 'old fashion,martiner', 120, 'buen servicio', 196, 3),
(516, 'Vital Sounnd', 9, 'vintage color gris, color café, periquera, redonda', 'cross back de madera', 760, 'vital sounnd.jpg', 245, 'shantung color lila', 'policarbonato', 'flauta,agua,vino', 120, 'Excelente servicio', 197, 3),
(517, 'Conceptosbal', 9, 'vintage color gris, color café, periquera, redonda.', 'cristal, blancas', 850, 'conceptosbal.jpg', 300, 'bordado, shantung ', 'mepol,cristal', 'agua,vino,tequilero', 150, 'sin palabras', 198, 3),
(518, 'DILAFE Corporativo', 14, 'tablones,rectangulares,cristal cuadradas', 'banco periquero', 750, 'DILAFE.jpg', 280, 'verde,rosa,violeta', 'porcelana,polietiren', 'agua,tequilero,jaibo', 90, 'impecable', 199, 3),
(519, 'CONTORNO Catering', 12, 'vintage color gris,color café,periquera, redonda,rectangular', 'acojinada negra', 450, 'CONTORNO.jpg', 310, 'shantung', 'policarbonato,crista', 'agua,tequilero,jaibo', 115, 'servicio excepcional', 200, 3),
(520, 'Vergara Millan', 12, 'redondas,cuadradas (10 o 12 personas), cuadrada de cristal rectangulares,vintage rectangulares,de espejo', 'Phoenix, Avant ', 900, 'vergara milan.jpg', 315, 'rojo,fiusha.lila', 'policarbonato, crist', 'agua,old fashion, ta', 130, 'buen servicio', 201, 3),
(521, 'Mon Plus', 10, 'redondas,cuadradas (10 o 12 personas), cuadrada de cristal rectangulares,tablones', 'Phoenix dorada, cris', 870, 'mon plus.jpg', 215, 'bordado, shantung', 'porcelana,policarbon', 'agua,vino,jaibolero', 210, 'buen servicio', 202, 3),
(522, 'Marketing C Creativo', 9, 'rectangulares madera,vingate, cristal cuadradas.', 'periquera,madera,cri', 860, 'marketing.jpg', 300, 'violeta,fiusha,rojo', 'polietireno,talavera', 'agua,vino,jaibolero', 130, 'excelente', 203, 3),
(523, 'Jara', 10, 'redondas, cuadradas (10 o 12 personas), cuadrada de cristal rectangulares', 'crossback, cian', 500, 'jara.jpg', 290, 'shantung', 'policarbonato,crista', 'vino,agua,old fashio', 140, 'bueno', 204, 3),
(524, 'Barrientos', 14, 'tabloides,rectangular larga,cuadrada', 'acojinada negra', 680, 'barrientos.jpg', 300, 'violeta,amarillo,ros', 'porcelana,polietiren', 'agua,vino,flauta', 160, 'bueno', 205, 3),
(525, 'Pilota', 12, 'vintage color gris, color café, periquera, redonda,cristal, de espejo', 'versalles plata y bl', 700, 'pilota.jpg', 280, 'bordado, shantung', 'cristal,porcelana,ta', 'jaibolero,vino,jugo,', 80, 'bien', 206, 3),
(526, 'Sweet Weding', 8, 'cuadradas, rectangulares, redondas, cuadradas (10 o 12 personas),cuadrada de cristal.\r\n', 'cristal, doradas, ve', 600, 'sweet.jpg', 310, 'bordado,varicolor', 'talavera,polietireno', 'jaibolero, cubero, t', 85, 'regular', 207, 3),
(527, 'Nitrobeatmx', 14, 'tabloides,rectangulares madera,rectangulares vingate', 'Tiffany de herreria', 655, 'nitrobeatmx.jpg', 330, 'bordado,liso', 'porcelana,talavera', 'jaibolero,vino,jugo,', 100, 'regular', 208, 3),
(528, 'Casa Duarte', 9, 'redondas, cuadradas (10 o 12 personas), cuadrada de cristal rectangulares.', 'Phoenix, Avant', 590, 'casa duarte.jpg', 270, 'amarillo,verde,rojo', 'porcelana,cristal,ta', 'vino,agua,flauta,teq', 100, 'de calidad', 209, 3),
(529, 'Santa Clara', 9, 'vintage color gris, color café, periquera, redonda', 'Phoenix dorada, cris', 880, 'santa clara.jpg', 275, 'shantung', 'policarbonato,crista', 'jaibolero,vino,jugo,', 145, 'bueno', 210, 3),
(530, 'Angellopolis', 10, 'cuadradas, infantiles y redondas', 'cross back de madera', 950, 'angellopolis.jpg', 295, 'forro bordado', 'porcelana,polietiren', 'agua,tequilero,jaibo', 135, 'excelente', 211, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

DROP TABLE IF EXISTS `categorias`;
CREATE TABLE IF NOT EXISTS `categorias` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_categoria` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre_categoria`) VALUES
(1, 'salon'),
(2, 'musica'),
(3, 'alquiladora'),
(4, 'comida'),
(5, 'entretenimiento'),
(6, 'floreria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `curp` varchar(20) NOT NULL,
  `rfc` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `paterno` varchar(45) NOT NULL,
  `materno` varchar(45) NOT NULL,
  `cuenta_bancaria` bigint(20) NOT NULL,
  `login` varchar(20) NOT NULL,
  `pago_total` float NOT NULL,
  `sugerencias` text NOT NULL,
  PRIMARY KEY (`curp`),
  KEY `login` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`curp`, `rfc`, `nombre`, `paterno`, `materno`, `cuenta_bancaria`, `login`, `pago_total`, `sugerencias`) VALUES
('HYTR234567JUKLPG21', 'HYGT236541WE1', 'Brenda ', 'Torres', 'Martínez', 1234567123456789, 'HYTR234567JUKLPG21', 7299, 'Excelent!!'),
('JKKK555555PPPPPP99', 'WWWW777777UU2', 'Roman', 'Bedolla', 'Gallegos', 123456789234567823, 'JKKK555555PPPPPP99', 0, ''),
('PPPP888888PPPPPP88', 'FFFF888888FF8', 'Maria', 'Delgado', 'Delgado', 300300300300100100, 'PPPP888888PPPPPP88', 0, ''),
('UUUU555555TTTTTT44', 'YUYU776767YY6', 'Uriel', 'Yael', 'Pérez', 400400400400444444, 'UUUU555555TTTTTT44', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comida`
--

DROP TABLE IF EXISTS `comida`;
CREATE TABLE IF NOT EXISTS `comida` (
  `id_comida` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `foto` varchar(250) NOT NULL,
  `precio` float NOT NULL,
  `comentario` varchar(256) NOT NULL,
  `id_cuenta` int(11) NOT NULL,
  `tipo_comida` varchar(70) NOT NULL,
  `Menu_Especial` varchar(100) NOT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_comida`),
  KEY `id_cuenta` (`id_cuenta`),
  KEY `id_categoria` (`id_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `comida`
--

INSERT INTO `comida` (`id_comida`, `nombre`, `foto`, `precio`, `comentario`, `id_cuenta`, `tipo_comida`, `Menu_Especial`, `id_categoria`) VALUES
(101, 'Cibulet Banquetes', 'Cibulet-Banquetes.jpg', 410, 'Exelente Servicio', 49, 'Tradicional,Fusión, Internacional China', 'Vegetariana,Hipertensos,Veganos,Diabeticos', 4),
(102, 'Algarabia', 'Algarabia.jpg', 400, 'Entregas a Tiempo', 50, 'Internacional Francesa,Fusion', 'Vegetariana,Veganos,Diabeticos', 4),
(103, 'Andres Cortés Banquetes', 'Andrés-Cortés-Banquetes.jpeg', 630, 'Buen sasón ', 51, 'Tradicional, Fusion, Autor, Internacional Griega ', 'Vegetariana,Hipertensos,Diabeticos', 4),
(104, 'Amara Catering', 'Amara-Catering.jpeg', 620, 'Exelente Servicio', 52, 'Internacional Egipcia', 'Hipertensos,Veganos,Diabeticos', 4),
(105, 'JA Catering', 'JA-Catering.jpeg', 480, 'Exelente Servicio', 53, 'Tradicional,Internacional Brasileña,Autor', 'Vegetariana,Diabeticos', 4),
(106, 'Gran Event Banquetes', 'Gran-Event-Banquetes.jpg', 330, 'Exelente sason', 54, 'Tradicional, Internacional Peruana,Fusión, Autor.', 'Vegetariana,Hipertensos,Veganos,Diabeticos', 4),
(107, 'Imagina Producciones Sociales', 'Imagina-Producciones-Sociales.jpg', 200, 'Exelente Servicio', 61, 'Tradicional,Autor, Internacional China,Fusión', 'Diabeticos', 4),
(108, 'Grisel Muñoz', 'Grisel-Muñoz.jpeg', 490, 'Exelente sason', 62, 'Tradicional, Internacional Japonesa,Fusión,Autor', 'Veganos', 4),
(109, 'Allinev', 'Allinev.jpg', 195, 'Exelente Servicio', 63, 'Tradicional, Internacional China,Fusión', 'Hipertensos', 4),
(110, 'Binomio Banquetes & Catering', 'Binomio-Banquetes-&-Catering.jpg', 2500, 'Exelente Servicio', 64, 'Tradicional ', 'Vegetariana', 4),
(111, 'Sakbé Eventos Creativos', 'Sakbé-Eventos-Creativos.jpg', 120, 'Exelente Sason', 65, 'Tradicional, Internacional Japonesa,Fusión,Autor', 'Vegetariana,Hipertensos', 4),
(112, 'MJ Banquetes', 'MJ-Banquetes.jpeg', 390, 'Exelente Servicio', 66, 'Tradicional, Internacional Tailandesa,Fusión,Autor', 'Hipertensos,Veganos', 4),
(113, 'Sweet Time Planner', 'Sweet-Time-Planner.jpg', 250, 'Exelente Sason', 67, 'Internacional Romana,Tradicional', 'Vegetariana,Hipertensos', 4),
(114, 'Saboréame Banquetes', 'Saboréame-Banquetes.jpg', 350, 'Exelente Servicio', 68, 'Internacional Italiana,Tradicional', 'Vegetariana,Veganos,Diabeticos', 4),
(115, 'La tierra de Alsacia', 'La-tierra-de-Alsacia.jpg', 85, 'Exelente Sason', 69, 'Tradicional,Internacional Suiza,Autor', 'Hipertensos,Veganos,Diabeticos', 4),
(116, 'Bocadell Banquetes', 'Bocadell-Banquetes.jpg', 200, 'Exelente Servicio', 70, 'Tradicional,Internacional Española,Fusión,Autor', 'Hipertensos,Diabeticos', 4),
(117, 'Banquetes J. Quintana', 'Banquetes-J.-Quintana.jpg', 5000, 'Exelente Sason', 71, 'Tradicional', 'Vegetariana,Hipertensos,Veganos,Diabeticos', 4),
(118, 'Banquetes Zaraoh', 'Banquetes-Zaraoh.jpeg', 65, 'Exelente Servicio', 72, 'Tradicional,Autor', 'Vegetariana', 4),
(119, 'Condimentos Gourmet', 'Condimentos-Gourmet.jpeg', 85, 'Exelente Sason', 73, 'Tradicional,Autor', 'Vegetariana,Hipertensos,Diabeticos', 4),
(120, 'Chef Josh', 'Chef-Josh.jpg', 250, 'Exelente Servicio', 74, 'Internacional Coreana,Fusión', 'Vegetariana,Hipertensos', 4),
(122, 'Sentli Eventos', 'Sentli-Eventos.jpg', 250, 'Exelente Sason', 76, 'Tradicional, Internacional Romana.', 'Vegetariana,Veganos,Diabeticos', 4),
(123, 'Banquetes Ricardo García Aburt', 'Banquetes-Ricardo-García-Aburto.jpg', 350, 'Exelente Servicio', 77, 'Tradicional, Internacional Francesa,Fusión', 'Vegana', 4),
(124, 'Jorge de Uriarte', 'Fitriona.jpg', 650, 'Exelente Sason', 78, 'Tradicional, Internacional Española,Fusión', 'Vegana,Hipertensa', 4),
(125, 'Contorno Catering', 'Contorno-Catering.jpg', 280, 'Exelente Servicio', 79, 'Internacional Japonesa.', 'Diabetica,Hipertensa,Vegana', 4),
(126, 'Fikafé Coffe Shop', 'Fikafé-Coffe-Shop.jpg', 60, 'Exelente sason', 80, 'Tradicional', 'Diabetica,Vegana', 4),
(127, 'Banquetes e2', 'Banquetes e2.jpg', 180, 'Exelente Servicio', 81, 'Tradicional, Internacional, De Fusión', '', 4),
(128, 'Landy Banquetes', 'Landy-Banquetes.jpg', 150, 'Exelente sason', 82, 'Tradicional, Internacional, De Fusión', '', 4),
(129, 'History Sole', 'history-sole.jpg', 28900, 'Exelente Servicio', 83, 'Internacional, De Fusión, De Autor, Tradicional.', '', 4),
(130, '3 mujeres.', '3mujeres.jpg', 300, 'Exelente Servicio', 84, 'Internacional, De Fusión, De Autor, Tradicional', '', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta_bancaria`
--

DROP TABLE IF EXISTS `cuenta_bancaria`;
CREATE TABLE IF NOT EXISTS `cuenta_bancaria` (
  `id_cuenta` int(11) NOT NULL AUTO_INCREMENT,
  `cuenta_bancaria` bigint(16) NOT NULL,
  `nombre_proveedor` varchar(50) CHARACTER SET latin1 NOT NULL,
  `tipo` varchar(50) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id_cuenta`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cuenta_bancaria`
--

INSERT INTO `cuenta_bancaria` (`id_cuenta`, `cuenta_bancaria`, `nombre_proveedor`, `tipo`) VALUES
(1, 1234567922345678, 'Servicio de comida vegana', 'comida'),
(2, 3452367681212345, 'Acrofest', 'Salón'),
(3, 1234567948140544, 'Grupos musicales \"El poblanito\"', 'entretenimiento'),
(4, 7890000765420000, 'Decoración La flor de Atlixco', 'floreria '),
(5, 5675670000234123, 'Universión', 'entretenimiento'),
(6, 3458902465791590, 'Los angeles ', 'alquiladora'),
(7, 3123000000123000, 'Servicio de comida mexicana', 'comida'),
(8, 4400440005454500, 'Servicio de comida española', 'comida'),
(9, 1001212000220000, 'Italian food MX', 'comida'),
(10, 1234512345678907, 'Linda Vista', 'Salón'),
(11, 2345678901234564, 'Jardín Altamida.', 'Salón'),
(12, 7896540987651234, 'Los Girasoles.', 'Salón'),
(13, 6709125634891256, 'Picasso´s', 'Salón'),
(14, 9087689900223354, 'Puertagua', 'Salón'),
(15, 8889967003345612, 'Diamante Recepciones', 'Salón'),
(16, 3456227890330012, 'Matisse Recepciones', 'Salón'),
(17, 7778800991122345, 'Eventos Sociales Tag', 'Salón'),
(18, 6655432100009876, 'Recepciones Option', 'Salón'),
(19, 2345998876501234, 'Antares Recepciones', 'Salón'),
(20, 5556748901234500, 'Eventos sociales Aladino´s', 'Salón'),
(21, 7650981235184038, 'Tres Marías', 'Salón'),
(22, 3819349671039642, 'Las Bodegas del Galeón', 'Salón'),
(23, 6910432975019394, 'Acrópolis', 'Salón'),
(24, 3097688123610482, 'Villa Bam Bam', 'Salón'),
(25, 5678901234675891, 'Xcandra', 'Salón'),
(26, 5109348912765432, 'Posada Señorial', 'Salón'),
(27, 7654309812678902, 'Jani', 'Salón'),
(28, 4906754129076539, 'Terraza y Villa Bonanza', 'Salón'),
(29, 8903457651290345, 'Hotel Real de Naturales', 'Salón'),
(30, 9872356781209566, 'Party Time Eventos', 'Salón'),
(31, 5690237640891254, 'Jardín Manantiales', 'Salón'),
(32, 7651209734512890, 'RS Emporio', 'Salón'),
(33, 7894081789510296, 'Presidente InterContinental', 'Salón'),
(34, 9034768999112306, 'Bonsai', 'Salón'),
(35, 9023678955000289, 'Klasse', 'Salón'),
(36, 2340958180004369, 'Recepciones Elegance', 'Salón'),
(37, 3568901234567890, 'Jardín los Tulipanes', 'Salón'),
(38, 8934001278954002, 'El Quintal', 'Salón'),
(39, 6689071230007589, 'Sin protocolo', 'Salón'),
(40, 9834801859203004, 'Ardizana-Grupo Santa Rosa', 'Salón'),
(41, 2345118906678901, 'Recepciones Mará Isabel', 'Salón'),
(42, 1234671298754612, 'El olivo', 'Salón'),
(43, 8742000417392705, 'Las Brisas', 'Salón'),
(44, 1749295031458900, 'Jardín El Sol', 'Salón'),
(45, 1027592530854179, 'Presidente InterContinental', 'Salón'),
(46, 6189530286491061, 'Monaco', 'Salón'),
(47, 1039641096481204, 'Alfredo Recepciones', 'Salón'),
(48, 9274917048295013, 'Los Pavorreales', 'Salón'),
(49, 1234567890123451, 'Cibulet Banquetes', 'comida'),
(50, 1234567890123452, 'Algarabia', 'comida'),
(51, 1234567890123453, 'Andres Cortés Banquetes', 'comida'),
(52, 1234567890123454, 'Amara Catering', 'comida'),
(53, 1234567890123455, 'JA Catering', 'comida'),
(54, 1234567890123456, 'Gran Event Banquetes', 'comida'),
(61, 1234567890123457, 'Imagina Producciones Sociales', 'comida'),
(62, 1234567890123458, 'Grisel Muños', 'comida'),
(63, 1234567890123459, 'Allinev', 'comida'),
(64, 1234567890123460, 'Binimio Banquetes & Catering', 'comida'),
(65, 1234567890123461, 'Sakbé Eventos Creativos', 'comida'),
(66, 1234567890123462, 'MJ Banquetes', 'comida'),
(67, 1234567890123463, 'Sweet Time Planner', 'comida'),
(68, 1234567890123464, 'Saboréame Banquetes', 'comida'),
(69, 1234567890123465, 'La tierra de Alsacia', 'comida'),
(70, 1234567890123466, 'Bocadell Banquetes', 'comida'),
(71, 1234567890123467, 'Banquetes J.Quintana', 'comida'),
(72, 1234567890123468, 'Banquetes Zaraoh', 'comida'),
(73, 1234567890123469, 'Condimentos Gurmet', 'comida'),
(74, 1234567890123470, 'Chef Josh', 'comida'),
(75, 1234567890123471, 'QuinSo Banquetes', 'comida'),
(76, 1234567890123472, 'Sentil Eventos', 'comida'),
(77, 1234567890123473, 'Banquetes Ricardo Garcia Aburto', 'comida'),
(78, 1234567890123474, 'Jorge Uriarte', 'comida'),
(79, 1234567890123475, 'Contorno Catering', 'comida'),
(80, 1234567890123476, 'Fikafe Coffe Shop', 'comida'),
(81, 1234567890123477, 'Banquetes e2', 'comida'),
(82, 1234567890123478, 'Lady Banquetes', 'comida'),
(83, 1234567890123479, 'Hisory Sole', 'comida'),
(84, 1234567890123480, '3 Mujeres', 'comida'),
(85, 9485267159654331, 'La Floristería', 'floreria'),
(86, 9400001264975381, 'Botoncito Corazón', 'floreria'),
(87, 9185267159654331, 'KoKoa', 'floreria'),
(88, 9285267159654331, 'Kamelia', 'floreria'),
(89, 9385267159654331, 'Papaloti Flores', 'floreria'),
(90, 9485267159654331, 'Spring', 'floreria'),
(91, 9585267159654331, 'La Hortensia', 'floreria'),
(92, 9685267159654331, 'Cestina', 'floreria'),
(93, 9785267159654331, 'Ángela Rueda', 'floreria'),
(94, 9885267159654331, 'Vincent', 'floreria'),
(95, 9815267159654331, 'Apple Decoración', 'floreria'),
(96, 9825267159654331, 'Antofilia', 'floreria'),
(97, 9835002645554331, 'Elegance Floristería', 'floreria'),
(98, 9845267159654331, 'Detallísimos Floristería', 'floreria'),
(99, 9884267159654331, 'Cerezo Liebe', 'floreria'),
(100, 9800016978554331, 'La Flor de lis', 'floreria'),
(101, 9181267159654331, 'Forever Florería', 'floreria'),
(102, 9182036974100331, 'Retoño', 'floreria'),
(103, 9183267159654331, 'Floristería ExpresArte', 'floreria'),
(104, 9160098745654331, 'Florzinia', 'floreria'),
(105, 9081267159654331, 'Guie´ni', 'floreria'),
(106, 9033221144556631, 'Nardos 23', 'floreria'),
(107, 9083267159654331, 'Flor de Loto', 'floreria'),
(108, 9084267159654331, 'Magenta', 'floreria'),
(109, 9165267159654031, 'Valery´s', 'floreria'),
(110, 9165267159654131, 'Rosy floreria', 'floreria'),
(111, 9165267159654231, 'Pasadena Roses', 'floreria'),
(112, 9165267159654431, 'Kahlo', 'floreria'),
(113, 9185267159650331, 'Innova Jardin', 'floreria'),
(114, 9185267159651331, 'Riviera', 'floreria'),
(115, 1234567890000001, 'AID Eventos', 'musica'),
(116, 1234567890000002, 'Mobile Beat Productions', 'musica'),
(117, 1234567890000003, 'DJ Morgado', 'musica'),
(118, 1234567890000004, 'DJ Producciones', 'musica'),
(119, 123456789000005, 'Djmarck Eventos', 'musica'),
(120, 123456789000006, 'Concordia', 'musica'),
(121, 123456789000007, 'DJ vip-pm', 'musica'),
(122, 123456789000008, 'Brisa musical', 'musica'),
(123, 1234567890000009, 'Pako Rangel DJ', 'musica'),
(124, 1234567890000010, 'Leopoldo Sánchez Violinista', 'musica'),
(125, 1234567890000011, 'Romanza', 'musica'),
(126, 1234567890000012, 'Producciones Masound', 'musica'),
(127, 1234567890000013, 'uva producciones', 'musica'),
(128, 1234567890000014, 'Mariachi 2000', 'musica'),
(129, 1234567890000015, 'Vital Sound', 'musica'),
(130, 1234567890000016, 'Grupo Duerza Aérea Live Music', 'musica'),
(131, 1234567890000017, 'Zet Producciones', 'musica'),
(132, 1234567890000018, 'Virled', 'musica'),
(133, 1234567890000019, 'Orquesta Rumbabuena', 'musica'),
(134, 1234567890000020, 'Ambar Music', 'musica'),
(135, 1234567890000021, 'Helios DJ´s', 'musica'),
(136, 1234567890000022, 'Sonata', 'musica'),
(137, 1234567890000023, 'DJ Burbuja', 'musica'),
(138, 1234567890000024, 'Josvan Producciones', 'musica'),
(139, 1234567890000025, 'Ambience', 'musica'),
(140, 1234567890000026, 'Grupo Musical Gran Fest', 'musica'),
(141, 1234567890000027, 'Cadenza Ensamble', 'musica'),
(142, 1234567890000028, 'Vampiro', 'musica'),
(143, 1234567890000029, 'Cocobongo', 'musica'),
(144, 1234567890000030, 'Grupo Musical Travel', 'musica'),
(145, 1038592638710842, 'Cerillin y Fosforito ', 'entretenimiento'),
(146, 5947158426830254, 'Mr. Chispita show', 'entretenimiento'),
(147, 9071584268302541, 'Luna Show', 'entretenimiento'),
(148, 5917158426802541, 'Botargas Puebla', 'entretenimiento'),
(149, 5971584268302541, 'Lucha Libre, Mariachi y Solista', 'entretenimiento'),
(150, 9371584268302541, 'Magos y payasos en puebla', 'entretenimiento'),
(151, 1783028947104820, 'Piccoli Fiestas', 'entretenimiento'),
(152, 4196830263910580, 'Infantiles Camila ', 'entretenimiento'),
(153, 4208195285120592, 'Shavitoshow', 'entretenimiento'),
(154, 7543298760012678, 'Diverty Magic', 'entretenimiento'),
(155, 1284937592000028, 'Payaso Mister Chispita', 'entretenimiento'),
(156, 4869201648276589, 'Kallitos Payasos', 'entretenimiento'),
(157, 9952487541232640, 'Divertiland Puebla', 'entretenimiento'),
(158, 9852487541232640, 'Chiki Fiesta', 'entretenimiento'),
(159, 9752487541232640, 'Shows infantiles Peque', 'entretenimiento'),
(160, 9652487541232640, 'Fiesta Show Puebla', 'entretenimiento'),
(161, 9552487541232640, 'Enfiestaa2', 'entretenimiento'),
(162, 9452487541232640, 'SMILE', 'entretenimiento'),
(163, 9352487541232640, 'Fantasy', 'entretenimiento'),
(164, 9252487541232640, 'Chikis Shows Puebla', 'entretenimiento'),
(165, 9152487541232640, 'Unicos Show', 'entretenimiento'),
(166, 9052487541232640, 'Trío Ecoss', 'entretenimiento'),
(167, 9012487541232640, 'La Concordia Fiestas', 'entretenimiento'),
(168, 9022487541232640, 'Show Makers', 'entretenimiento'),
(169, 9032487541232640, 'Divertipekes show', 'entretenimiento'),
(170, 9042487541232640, 'Show De Botargas', 'entretenimiento'),
(171, 9752487521232640, 'Mickey', 'entretenimiento'),
(172, 9072487541232640, 'El Gremio SHOW', 'entretenimiento'),
(173, 9082487541232640, 'Laserfield', 'entretenimiento'),
(174, 9092487541232640, 'Larguillo SHOW', 'entretenimiento'),
(175, 9002487541232640, 'Impakto Show', 'entretenimiento'),
(176, 6439751682401006, 'Collection ', 'alquiladora'),
(177, 7320016498574623, 'Gumpy', 'alquiladora'),
(178, 6879004513629745, 'Alkila', 'alquiladora'),
(179, 1697306482457964, 'Maryflex', 'alquiladora'),
(180, 67903178462157943, 'AlaBio', 'alquiladora'),
(181, 6597431028794651, 'Renttable', 'alquiladora'),
(182, 6466953201047895, 'Marron', 'alquiladora'),
(183, 9876543210012345, 'Teyssier', 'alquiladora'),
(184, 4697310046857213405, 'AlaBiio', 'entretenimiento'),
(185, 9833221100044556, 'Classic Rosas Rojas', 'floreria'),
(186, 445566998877123000, 'Arreglo de Girasoles', 'floreria'),
(187, 3366552210045978, 'Lofty Whit-Rojas', 'floreria'),
(188, 6644311002587987, 'Canastas de Mimbre', 'floreria'),
(189, 8855220011336644, 'Ramillete de FLores', 'floreria'),
(190, 6633225577440011, 'Eventtia', 'comida'),
(191, 5597001246853021, 'Valery', 'alquiladora'),
(192, 7753001225899874, 'Irresistible Encanto', 'alquiladora'),
(193, 2256403199887445, 'D\'Event', 'alquiladora'),
(194, 1198600326554710, 'Rentame Plus', 'alquiladora'),
(195, 8896321002587456, 'Cocktail Mobiliario', 'alquiladora'),
(196, 19856320014785632, 'La Alquiladora', 'alquiladora'),
(197, 6532014798541236, 'Vital Sounnd', 'alquiladora'),
(198, 6879453102655478, 'Conceptosbal', 'alquiladora'),
(199, 3216549870012365, 'DILAFE Corporatio', 'alquiladora'),
(200, 7896541230032145, 'CONTORNO Catering', 'alquiladora'),
(201, 5469821301458774, 'Vergara Millan', 'alquiladora'),
(202, 2021365410987456, 'Non Plus', 'alquiladora'),
(203, 46013259754120368, 'Marketing C Creativo', 'alquiladora'),
(204, 222109359344668512, 'Jara', 'alquiladora'),
(205, 23649750021548753, 'Barrientos', 'alquiladora'),
(206, 6597420013548745, 'Pilota', 'alquiladora'),
(207, 2015987642013578, 'Sweet Weding', 'alquiladora'),
(208, 2019365478546320, 'Nitrobeatmx', 'alquiladora'),
(209, 199706063549851206, 'Casa Duarte', 'alquiladora'),
(210, 19983658741023698, 'Santa Clara', 'alquiladora'),
(211, 2116987665411200, 'Angellopolis', 'alquiladora');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_servicio`
--

DROP TABLE IF EXISTS `detalle_servicio`;
CREATE TABLE IF NOT EXISTS `detalle_servicio` (
  `id_detalle_servicio` int(11) NOT NULL AUTO_INCREMENT,
  `id_servicio` int(11) NOT NULL,
  `id_staff` int(11) NOT NULL,
  `id_alquiladora` int(11) NOT NULL,
  `id_comida` int(11) NOT NULL,
  `id_entretenimiento` int(11) NOT NULL,
  `id_floreria` int(11) NOT NULL,
  `id_musica` int(11) NOT NULL,
  `id_salon` int(11) NOT NULL,
  PRIMARY KEY (`id_detalle_servicio`),
  KEY `fk_detalle_servicio_servicio1_idx` (`id_servicio`),
  KEY `id_staff` (`id_staff`),
  KEY `id_comida` (`id_comida`),
  KEY `id_entretenimiento` (`id_entretenimiento`),
  KEY `id_floreria` (`id_floreria`),
  KEY `id_musica` (`id_musica`),
  KEY `id_salon` (`id_salon`),
  KEY `id_alquiladora` (`id_alquiladora`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entretenimiento`
--

DROP TABLE IF EXISTS `entretenimiento`;
CREATE TABLE IF NOT EXISTS `entretenimiento` (
  `id_entretenimiento` int(100) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL,
  `precio` float NOT NULL,
  `comentario` varchar(256) NOT NULL,
  `id_cuenta` int(11) NOT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `foto` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id_entretenimiento`),
  KEY `id_cuenta` (`id_cuenta`),
  KEY `id_categoria` (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `entretenimiento`
--

INSERT INTO `entretenimiento` (`id_entretenimiento`, `nombre`, `precio`, `comentario`, `id_cuenta`, `id_categoria`, `foto`) VALUES
(201, 'Chispita y chispón ', 1500, 'Show de Super Héroes Marvel, duración 1:20 hr.  ', 146, 5, 'entretenimiento.jpg'),
(202, 'Lagrimita y Lagrimón', 3500, 'Show super héroes, maquillaje infantil, miniferias, show de magia payasos.', 147, 5, 'entretenimiento.jpg'),
(203, 'Popeyes', 3000, 'Show de botargas, shows infantiles.', 148, 5, 'entretenimiento.jpg'),
(204, 'Huarachin y Huarachón  ', 7500, 'Función de lucha libre, mariachi y cantante solista.', 149, 5, 'entretenimiento.jpg'),
(205, 'Los magos del milenio ', 7000, 'Magia clásica.', 150, 5, 'entretenimiento.jpg'),
(206, 'Piccolines ', 4200, '1 payaso, 1 ó 2 botargas de tu elección y una pinta caritas con duración de 2 hrs.  ', 151, 5, 'entretenimiento.jpg'),
(207, 'Infantiles Camila-Payasos', 6800, 'Show de payasos, figuras con globos, pintura de cara, espectáculo de magia, espectáculo de marionetas, duración 5 hrs.  ', 152, 5, 'entretenimiento.jpg'),
(208, 'Shavitoshow-Payasos', 2800, 'Show de payasos con perritos incluye pista de circo, dinámicas con los niños, duración 2 hrs.   ', 153, 5, 'entretenimiento.jpg'),
(209, 'Diverty Magic-Payasos', 3200, 'Show de payasos, 2 botargas de super héroes Marvel, dinámicas para niños, duración 3 hrs.    ', 154, 5, 'entretenimiento.jpg'),
(210, 'Chispita y Chispazo-Mister Chispita', 7500, 'Magia cómica, malabares, rutina con trompetas, juegos y concursos para toda la familia, al final cantaremos las mañanitas y realizaremos la partida de pastel, incluye sorpresas para el festejado.    ', 155, 5, 'entretenimiento.jpg'),
(211, 'Kallitos coquetos ', 5600, 'Show de payasos, 2 botargas de tus personajes favoritos, dinámicas para toda la familia y regalos incluidos. ', 156, 5, 'entretenimiento.jpg'),
(212, 'Frozen, Superman, Batman, La mujer maravilla + 40', 7100, 'Shows infantiles, talleres creativos, stands de entretenimiento, mini feria, áreas de bebés, más de 40 opciones diferentes de entretenimiento y más de 80 personajes para elegir.', 157, 5, 'entretenimiento.jpg'),
(213, 'Iroman, Capitan America +30', 5000, 'show infantil, Equipo de sonido, Animador, Personajes, Premios.', 158, 5, 'entretenimiento.jpg'),
(214, 'mickey mouse y minnie, princesas +10', 4500, 'Animación, Pintacaritas, Princesas ,Superhéroes.', 159, 5, 'entretenimiento.jpg'),
(215, 'Personajes del mundo de la fantasía', 3200, 'EQUIPO DE AUDIO (música y micrófono), ANIMADOR(a), PRESENTACIÓN DE PERSONAJES (más de 100 personajes), BAILE COREOGRÁFICO (excepto princesas), ORGANIZACIÓN DE JUEGOS Y CONCURSOS PARA NIÑOS Y ADULTOS, 10 REGALOS.', 160, 5, 'entretenimiento.jpg'),
(216, 'Donovan', 4200, 'show de magos, música, regalos. ', 161, 5, 'entretenimiento.jpg'),
(217, 'Super heroes, personajes de disney +12', 3500, 'SHOWS INFANTILES, PAYASOS, VENTA Y RENTA DE BOTARGAS.', 162, 5, 'entretenimiento.jpg'),
(218, 'Personajes toy story + 10', 2500, 'Cuenta con lindas botargas de calidad, show interactivo y animado', 163, 5, 'entretenimiento.jpg'),
(219, 'princesas de Disney, Super Heroes +', 4000, 'contamos con banquetes y decoraciones para tus fiestas...', 164, 5, 'entretenimiento.jpg'),
(220, 'Super heroes +20', 3500, 'Show de payasos, botargas, magia, música y regalos.', 165, 5, 'entretenimiento.jpg'),
(221, 'Trío Ecoss', 2000, 'Koaraoke Musik Sound, amenización de eventos.', 166, 5, 'entretenimiento.jpg'),
(222, 'Mario Bros, LUigi, +', 3400, 'Disfraces, globos, piñatas, desechables, dulces, diseño y decoración con globos, renta de juegos inflables, maquillaje infantil, renta de botargas, shows.', 167, 5, 'entretenimiento.jpg'),
(223, 'Makers', 3500, 'Batucada, Zanqueros, Robot LED, Show Disco, Animadoras, Carnaval, Mimos', 168, 5, 'entretenimiento.jpg'),
(224, 'Chapitas', 2500, 'Amenizamos tu fiesta, disfraces y regalos.', 169, 5, 'entretenimiento.jpg'),
(225, 'Personajes de disney', 3200, 'show de botargas, pinta caritas, sonido DJ.', 170, 5, 'entretenimiento.jpg'),
(226, 'Personajes mundo fantasia', 5600, 'NUESTRA DINÁMICA IMPLICA LA PERFECTA COORDINACIÓN DE ANIMADORAS PROFESIONALES CON MÁS DE 60 PERSONAJES DEL MUNDO DE LA FANTASIA.', 171, 5, 'entretenimiento.jpg'),
(227, 'Gremio show', 3600, 'La agrupación musical numero uno en Puebla 100% en vivo para todos los eventos Bodas,XV Años,Bailes Públicos contratos con Pepe Hernández Avila 2225355023.', 172, 5, 'entretenimiento.jpg'),
(228, 'Laser', 4500, 'Laser Tag - Gotcha Laser Móvil Vamos hasta su evento o fiesta y durante 4 horas sus invitados pueden divertirse como nunca. Nada de moretones o manchas en la ropa, sólo diversión. Chicos y grandes pueden disfrutar de este juego.', 173, 5, 'entretenimiento.jpg'),
(229, 'Larguillo', 3700, 'CONTAMOS CON SHOW INFANTILES, DE ADULTOS, TATIANA, PRINCESAS, PERSONAJES, BOTARGAS, INFLABLES,TORO MECÁNICO, MINI-FERIA.', 174, 5, 'entretenimiento.jpg');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `final`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `final`;
CREATE TABLE IF NOT EXISTS `final` (
`id` int(11)
,`nombre` varchar(250)
,`foto` varchar(256)
,`precio` float
,`nombre_categoria` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `finalcarrito`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `finalcarrito`;
CREATE TABLE IF NOT EXISTS `finalcarrito` (
`id` int(11)
,`nombre` varchar(250)
,`foto` varchar(256)
,`precio` float
,`id_categoria` int(11)
,`nombre_categoria` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `floreria`
--

DROP TABLE IF EXISTS `floreria`;
CREATE TABLE IF NOT EXISTS `floreria` (
  `id_floreria` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `foto` varchar(250) NOT NULL,
  `precio` float NOT NULL,
  `comentario` varchar(256) NOT NULL,
  `id_cuenta` int(11) NOT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_floreria`),
  KEY `id_cuenta` (`id_cuenta`),
  KEY `id_categoria` (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=343 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `floreria`
--

INSERT INTO `floreria` (`id_floreria`, `nombre`, `foto`, `precio`, `comentario`, `id_cuenta`, `id_categoria`) VALUES
(306, 'La Floristeria', 'La Floristería.jpg', 2000, 'centros de mesa, arreglos florales, decoración.', 85, 6),
(307, 'Botoncito Corazón', 'Botoncito Corazón.jpg', 500, 'decoración, ramos de novia, arreglos florales, centros de mesa, corsage, tocado floral, coronas, botounniers.', 86, 6),
(308, 'KoKoa', 'kokoa.jpg', 600, 'arreglos florales, ramos de novia, arreglos para mesa principal, decoración de iglesia.', 87, 6),
(309, 'Kamelia', 'kamelia.jpg', 450, 'decoración de iglesia, de recepción, ceremonia civil, centro de mesa, ramos de novia, Boutonier, ramo para damas.', 88, 6),
(310, 'Papaloti Flores', 'Papaloti Flores.jpg', 200, 'ramos y bouquets, Boutonnieres y corsages, Arreglos para jardines, decoración de iglesias, caminos florales, centros de mesa, adornos para el auto de novios.', 89, 6),
(311, 'Spring', 'Spring.jpg', 100, 'decoración floral para la ceremonia, accesorios para la novia, decoración para la recepción, el auto, corsage, tocados florales.', 90, 6),
(312, 'La Hortensia', 'La Hortensia.jpg', 8200, 'decoración floral, ramos de novia, centros de mesa, crosage, tocado floral, Bottoniere.', 91, 6),
(313, 'Cestina', 'cestina.jpg', 90, 'ramos de novia, decoración floral para ceremonia banquete, centros de mesa, corsage, tocado floral.', 92, 6),
(314, 'Ángela Rueda', 'Ángela Rueda.jpg', 180, 'ramos de novia y damas, corsage, centros de mesa, arcos, decoración autos, tocados, decoración iglesias.', 93, 6),
(315, 'Vicent', 'vincent.jpg', 200, 'ramos de novia, decoración, arreglos frutales, centros de mesa, decoración de auto.', 94, 6),
(323, 'Apple Decoración', 'Apple Decoración.jpg', 1800, 'centros de mesa, canasta de frutas, ramos de frutas.', 95, 6),
(324, 'Antofilia', 'Antofilia.jpg', 500, 'ramos de novia, decoración floral, centros de mesa, corsage, tocado floral, mesa de postres temáticas.', 96, 6),
(325, 'Elegance Floristería', 'elegance floristeria.jpg', 150, 'ramos de novia, centros de mesa, decoración para la ceremonia, auto de los novios, boutonniere para novios, ramos para damas de honor.', 97, 6),
(326, 'Deta Floristeria', 'detallisimos floristeria.jpg', 1000, 'decoración de ceremonia, espacios, centros de mesa, ramo de novia, ramo de ofrenda, tocado floral, ramos para damas, corsage, bouttoniers.', 98, 6),
(327, 'Cerezo Liebe', 'Cerezo Liebe.jpg', 500, 'ramos de novia, decoración, arreglos florales, tocado floral.', 99, 6),
(328, 'La Flor de lis', 'la flor de lis.jpg', 100, 'centros de mesa, ramos de novia, corsage, arreglos florales para la ceremonia, de coche, frutales.', 100, 6),
(329, 'Forever Florería', 'Forever Florería.jpg', 800, 'ramo de novia, centros de mesa, arreglos para ceremonia y recepción.', 101, 6),
(330, 'Retoño', 'retoño.jpg', 250, 'jardineras, ambientación temática, centros de mesa altos y bajos, decoración para la iglesia y el salón del evento.', 102, 6),
(331, 'Floristería E.Arte', 'expresarte.jpg', 100, 'ramo de novia, azar de novio, botoniers, decoración.', 103, 6),
(332, 'Florzinia', 'florzinia.jpg', 30, 'ramos de novia, decoración para ceremonia banquete, arreglos frutales, centros de mesa, tocado floral.', 104, 6),
(333, 'Guie´ni', 'Guieni.jpg', 1200, 'ramos de novia, decoración floral para ceremonia banquete auto de la pareja, centros de mesa, corsage, tocado floral, pajes, letreros de recepción, boutonniere, marcos para fotos, souvenirs vivientes, decorado casa.', 105, 6),
(334, 'Nardos 23', 'Nardos 23.jpg', 100, 'ramos de novia, decoración floral para la ceremonia, decoración floral para el banquete, centros de mesa, decoración del auto, corsage, tocado floral.', 106, 6),
(335, 'Flor de Loto', 'flor de lotto.jpg', 100, 'ramos de novia, decoración floral para la ceremonia, decoración floral para el banquete, arreglos frutales, centros de mesa, decoración del auto, corsage, tocado floral.', 107, 6),
(336, 'Magenta', 'magenta.jpg', 1500, 'globos y complementos, ocasional, letras, box sunflowers.', 108, 6),
(337, 'Valery´s', 'valerys.jpg', 1500, 'centros de mesa, decoración para empresas, auditorios, oficinas, ferias, exposiciones, salones, arreglos florales para bodas, autos e iglesias.', 109, 6),
(338, 'Rosy floreria', 'rosy.jpg', 1500, 'decoración de autos, ambientación floral.', 110, 6),
(339, 'Pasadena Roses', 'pasadena roses.jpg', 1500, 'centros de mesa, arreglos florales en diseños de gran tamaño, arreglos florales en iglesias.', 111, 6),
(340, 'Kahlo', 'kahlo.jpg', 1250, 'centros de mesa, arreglos florales iglesia recepción.', 112, 6),
(341, 'Innova Jardin', 'innova jardin.jpg', 1650, 'centros de mesa, arreglos frutales, arreglos florales.', 113, 6),
(342, 'Riviera', 'rivera.jpg', 1650, 'centros de mesa, arreglos florales, decoración iglesia recepción.', 114, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `musica`
--

DROP TABLE IF EXISTS `musica`;
CREATE TABLE IF NOT EXISTS `musica` (
  `id_musica` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `comentario` varchar(256) DEFAULT NULL,
  `id_tipoMusica` int(11) DEFAULT NULL,
  `id_cuenta` int(11) NOT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `foto` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id_musica`),
  KEY `id_cuenta` (`id_cuenta`),
  KEY `id_tipoMusica` (`id_tipoMusica`),
  KEY `id_categoria` (`id_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `musica`
--

INSERT INTO `musica` (`id_musica`, `nombre`, `comentario`, `id_tipoMusica`, `id_cuenta`, `id_categoria`, `foto`) VALUES
(401, 'Mariachi Pedregal', 'Música regional mexicana, diversos exitos.', 1, 3, 2, 'musica.jpg'),
(402, 'AID Eventos', 'DJ Profesional, sistema de audio profesional, iluminación arquitectónica y show.', 2, 115, 2, 'musica.jpg'),
(403, 'Mobile Beat Productions', 'DJs, karaoke, cabina y pista LED, iluminación Robótica', 3, 116, 2, 'musica.jpg'),
(404, 'DJ Morgado', 'DJs, disco móvil, fiesta temática, iluminación, karaoke, barra móvil, arlequines, zanqueros', 4, 117, 2, 'musica.jpg'),
(405, 'DJ Producciones', 'Dj, Audio, Video, Rayos láser, Luces robóticas, Karaoke, Cabezas móviles, Leds, LCD, Pantallas Gigantes, Pistas iluminadas, Pirotecnia, Globos cantoya, Burbujas, Confetti, Souvenirs, Animador', 5, 118, 2, 'musica.jpg'),
(406, 'Djmarck Eventos', 'Dj luz y sonido, animación, karaoke', 6, 119, 2, 'musica.jpg'),
(407, 'Concordia', 'música para ceremonia, banquete/coctel', 7, 120, 2, 'musica.jpg'),
(408, 'DJ vip-pm', 'música para la ceremonia, para bailar, animación, audiovisuales, dj', 8, 121, 2, 'musica.jpg'),
(409, 'Brisa musical', 'música para la ceremonia, para coctel/ banquete, orquesta, karaoke, dj', 9, 122, 2, 'musica.jpg'),
(410, 'Pako Rangel DJ', 'Música para la ceremonia, música para el coctel / banquete, música para bailar, animación, audiovisuales, dJ', 10, 123, 2, 'musica.jpg'),
(411, 'Leopoldo Sánchez Violinista', 'Música para la ceremonia, música para el coctel / banquete, orquesta', 11, 124, 2, 'musica.jpg'),
(412, 'Romanza', 'Música para la ceremonia, música para el coctel / banquete, orquesta', 12, 125, 2, 'musica.jpg'),
(413, 'Producciones Masound', 'Música para el coctel / banquete, música para bailar, animación, karaoke, audiovisuales, dJ, Pista black diamond, carrito de shots, iluminación, audiovisual, pirotecnia, iluminación y souvenirs', 13, 126, 2, 'musica.jpg'),
(414, 'uva producciones', 'Música para el coctel / banquete, música para bailar, animación, karaoke, audiovisuales, dJ, Cabina fotográfica', 14, 127, 2, 'musica.jpg'),
(415, 'Mariachi 2000', 'Música para la ceremonia, música para el coctel / banquete, música para bailar', 15, 128, 2, 'musica.jpg'),
(416, 'Vital Sound', 'Música para la ceremonia, música para el coctel / banquete, música para bailar, animación, karaoke, audiovisuales, dJ, Pista de baile iluminada, souvenirs, pirotecnia fría, producción de foto y video, renta de mobiliario lounge, músicos para la ceremonia', 16, 129, 2, 'musica.jpg'),
(417, 'Grupo Duerza Aérea Live Music', 'Música para la ceremonia, música para el coctel / banquete, música para bailar, animación, karaoke, audiovisuales, orquesta, dJ, Banda Sinaloense', 17, 130, 2, 'musica.jpg'),
(418, 'Zet Producciones', 'Música para la ceremonia, música para el coctel / banquete, música para bailar, animación, karaoke, audiovisuales, dJ, Pantalla y pista LED, cabina de fotos, carrito de shots, letras gigantes iluminadas', 18, 131, 2, 'musica.jpg'),
(419, 'Virled', 'Música para el coctel / banquete, música para bailar, animación, audiovisuales, dJ', 19, 132, 2, 'musica.jpg'),
(420, 'Orquesta Rumbabuena', 'Música para el coctel / banquete, música para bailar, animación, orquesta, dJ', 20, 133, 2, 'musica.jpg'),
(421, 'Ambar Music', 'Música para el coctel / banquete, música para bailar, animación, karaoke, audiovisuales, orquesta, dJ', 21, 134, 2, 'musica.jpg'),
(422, 'Helios DJ´s', 'Música para el coctel / banquete, música para bailar, karaoke, audiovisuales, dJ', 22, 135, 2, 'musica.jpg'),
(423, 'Sonata', 'Música para la ceremonia, música para el coctel / banquete, orquesta, dJ', 23, 136, 2, 'musica.jpg'),
(424, 'DJ Burbuja', 'Música para el coctel / banquete, música para bailar, animación, karaoke, audiovisuales, dJ, Iluminación arquitectónica, pista iluminada, Pantalla LED, venta de souvenirs y artículos de animación', 24, 137, 2, 'musica.jpg'),
(425, 'Josvan Producciones', 'Música para el coctel / banquete, música para bailar, animación, karaoke, audiovisuales, dJ, Pistas iluminadas, personalizas, madera, artículos para fiesta, iluminación arquitectónica, pantallas, animadores', 25, 138, 2, 'musica.jpg'),
(426, ' Ambience', 'Música para la ceremonia, música para el coctel / banquete, música para bailar, animación, karaoke, audiovisuales, orquesta, dJ, Shows interactivos, pistas de baile, pantallas de led', 26, 139, 2, 'musica.jpg'),
(427, 'Grupo Musical Gran Fest', 'Música para la ceremonia, música para el coctel / banquete, música para bailar, animación, audiovisuales, orquesta', 27, 140, 2, 'musica.jpg'),
(428, 'Cadenza Ensamble', 'Música para la ceremonia, música para el coctel / banquete', 28, 141, 2, 'musica.jpg'),
(429, 'Vampiro', 'Música para bailar, animación, audiovisuales, dJ', 29, 142, 2, 'musica.jpg'),
(430, 'Cocobongo', 'Música para la ceremonia, música para el coctel / banquete, música para bailar, animación, karaoke, audiovisuales, orquesta, dJ', 30, 143, 2, 'musica.jpg'),
(431, 'Grupo Musical Travel', 'Música para la ceremonia, música para el coctel / banquete, música para bailar, animación, audiovisuales, orquesta', 31, 144, 2, 'musica.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salon`
--

DROP TABLE IF EXISTS `salon`;
CREATE TABLE IF NOT EXISTS `salon` (
  `id_salon` int(11) NOT NULL AUTO_INCREMENT,
  `capacidad` int(11) NOT NULL,
  `ubicacion` varchar(250) CHARACTER SET latin1 NOT NULL,
  `foto` varchar(250) CHARACTER SET latin1 NOT NULL,
  `e-mail` varchar(250) CHARACTER SET latin1 NOT NULL,
  `precio` float NOT NULL,
  `nombre` varchar(250) CHARACTER SET latin1 NOT NULL,
  `comentario` varchar(256) CHARACTER SET latin1 NOT NULL,
  `id_cuenta` int(11) NOT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_salon`),
  KEY `id_cuenta` (`id_cuenta`),
  KEY `id_categoria` (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `salon`
--

INSERT INTO `salon` (`id_salon`, `capacidad`, `ubicacion`, `foto`, `e-mail`, `precio`, `nombre`, `comentario`, `id_cuenta`, `id_categoria`) VALUES
(6, 500, 'Allende, 514 72760 San Pedro Cholula, Puebla.', 'acrofest.jpg', 'Acrofest@hotmail.com', 5000, 'Acrofest', 'Amplios espacios, mayor comodidad, área de juegos infantiles. ', 2, 1),
(7, 1500, '27 Oriente, 610 72762 San Pedro Cholula, Puebla.', 'linda_vista.jpg', 'Linda_Vista@gmail.com', 6000, 'Linda Vista', 'Excelente ambiente.', 10, 1),
(8, 250, 'Insurgentes, 13101 Col. Guadalupe Hidalgo 72490 Puebla, Puebla.', 'altamira.jpg', 'Jardin_Altamida@yahoo.com', 5000, 'Jardín Altamida', 'Excelente ilumicación,cuenta con áreas verdes.', 11, 1),
(9, 1200, ' Av. 5 de Mayo, 1408 72810 Cholula, Puebla.', 'los_girasoles.jpg', 'Los_Girasoles@gmail.com', 6500, 'Los girasoles', 'Excelente ubicación, espacios amplios, buena iluminación. ', 12, 1),
(10, 400, 'Prolongación 8 Norte,1814 Col. Ex hacienda Santa Teresa 72810 San Andrés Cholula, Puebla.', 'picasso´s.jpg', 'Picasso\'s@yahoo.com', 3500, 'Picasso\'s', 'Amplios espacios, mayor comodidad, área de juegos infantiles. ', 13, 1),
(11, 1000, 'Camino a San Antonio Cacalotepec, 2520 Col Centro 72810 San Andrés Cholula, Puebla.', 'portagua.jpg', 'Puertagua@hotmail.com', 3500, 'Puertagua', 'Espacios amplios, excelente servicio.', 14, 1),
(13, 140, 'Av. 21 Pte, 3506B. Col. Belisario Domínguez 72000 Puebla, Puebla.', 'diamante_recepciones.jpg', 'Diamante_Recepciones@hotmail.com', 2500, 'Diamante Recepciones', 'Excelente ubicación, puntualidad en los eventos.', 15, 1),
(14, 270, 'Prolongación de la calle 25 No. 92 Col. Concepción Las Lajas 72190 Puebla, Puebla.', 'matisse_recepciones.jpg', 'Matisse_Recepciones@hotmail.com', 3800, 'Matisse Recepciones', 'Amplios espacios, áreas verdes, buena ubicación.', 16, 1),
(15, 250, 'Calle 20 Sur, 505 Col. Azcarate 70501 Puebla, Puebla', 'eventos_sociales_tag.jpg', 'Eventos_SocialesTag@gmail.com', 4600, 'Eventos Sociales Tag', 'Amplios espacios, mayor comodidad, área de juegos infantiles. ', 17, 1),
(16, 300, 'Av. 33 Oriente, 7 El Carmen-Huexotitla 72530 Puebla, Puebla.', 'recepciones_option.jpg', 'Recepciones_Option@gmail.com', 2800, 'Recepciones Option', 'Excelente iluminación, amplios espacios verdes. ', 18, 1),
(17, 350, 'Cristóbal Colón, 925, Col., Santa Cruz Buenavista 72150 Puebla, Puebla.', 'antares_recepciones.jpg', 'Antares_Recepciones@gmail.com', 4200, 'Antares Recepciones', '', 19, 1),
(18, 300, 'Avenida 57 Poniente 107, Zona Plaza Crystal 72440 Puebla, Puebla.', 'eventos_sociales_aladinos.jpg', 'Eventos_sociales_Aladino´s@yahoo.com', 1800, 'Eventos sociales Aladino´s', 'Excelente zona de ubicación, amplios espacios, buena iluminación. ', 20, 1),
(19, 800, 'Camino Real a Cholula, 666772100 Puebla, Puebla.', 'tres_marias.jpg', 'Tres_Marías@gmail.com', 6300, 'Tres Marías', 'Espacios amplios, excelente música.  ', 21, 1),
(20, 270, 'Blvd. Capitán Carlos Camacho Espíritu. 5979-A Col. Bugambilias 72550 Puebla, Puebla.', 'bodegas_galeon.jpg', 'Las_Bodegas_del_Galeón@hotmail.com', 4300, 'Las Bodegas del Galeón', 'Amplios espacios, áreas verdes, buena ubicación.', 22, 1),
(21, 155, 'Porfirio Díaz 31 Col. Vista Hermosa Álamos 72320 Puebla, Puebla.', 'acropolis.jpg', 'Acrópolis', 1200, 'Acrópolis', 'Espacios amplios, excelente servicio.', 23, 1),
(22, 200, 'Camino Real Los Cipreses, 1828 San Andrés Cholula 72810 Zaragoza, Puebla.', 'villa_bam_bam.jpg', 'Villa_Bam_Bam@gmail.com', 1900, 'Villa Bam Bam.', 'Excelente ubicación, puntualidad en los eventos.', 24, 1),
(23, 180, '109 Oriente, 232 72474 Puebla, Puebla.', 'xcandra.jpg', 'Xcandra@yahoo.com', 2300, 'Xcandra', 'Excelente iluminación, amplios espacios verdes. ', 25, 1),
(24, 1000, 'Avenida 5 de Mayo, 1400 72810 San Andrés Cholula, Puebla.', 'posada_senorial.jpg', 'Posada_Señorial@hotmail.com', 7300, 'Posada Señorial', 'Amplios espacios, mayor comodidad, área de juegos infantiles. ', 26, 1),
(25, 200, 'Río Papagayo, 5 Col. Manantiales 72756 San Pedro Cholula, Puebla.', 'jani.jpg', 'Jani@yahoo.com', 4200, 'Jani', 'Espacios amplios, excelente servicio.', 27, 1),
(26, 200, 'Lago de Valsequillo, 26 72960 Puebla, Puebla.', 'terraza_billa_bonanza.jpg', 'Terraza_y_Villa_Bonanza', 2800, 'Terraza y Villa Bonanza', 'Excelente ubicación, buena iluminación y buen servicio.', 28, 1),
(27, 250, '6 Oriente, 7 72760 San Pedro Cholula, Puebla.', 'hotel_real_naturales.jpg', 'Hotel_Real_de_Naturales@gmail.com', 1700, 'Hotel Real de Naturales', 'Excelente ubicación, ética en los eventos.', 29, 1),
(28, 120, 'Calle 7 Norte Col. Amor 72140 Puebla, Puebla.', 'party-time-eventos.jpg', 'Party_Time_Eventos@yahoo.com', 800, 'Party Time Eventos', 'Buen servicio, excelente ambiente. ', 30, 1),
(29, 280, 'Av. Forjadores de Puebla, 902 Col. Manantiales 72760 Cholula, Puebla.', 'manantiales.jpg', 'Jardín_Manantiales@hotmail.com', 1100, 'Jardín Manantiales', 'Servicio de calidad, cálido ambiente. ', 31, 1),
(30, 400, 'Priv. 10 Oriente, 1209 72810 San Andrés Cholula, Puebla.', 'rs-emporio.jpg', 'RS_Emporio@gmail.com', 1600, 'RS Emporio', 'Espacios amplios, excelente servicio.', 32, 1),
(31, 500, 'Av. Hermanos Serdán, 141 72140 Puebla, Puebla.', 'presidente-intercontinental.jpg', 'Presidente_InterContinental@gmail.com', 4100, 'Presidente InterContinental', 'Amplios espacios, mayor comodidad, área de juegos infantiles. ', 33, 1),
(32, 300, 'Av. 15 pte, 707 San Pedro Cholula 15020 Cholula, Puebla.', 'bonsai.jpg', 'Bonsai@yahoo.com', 2800, 'Bonsai', 'Espacios amplios, excelente servicio.', 34, 1),
(33, 500, '25 Oriente, 1006 72020 Puebla, Puebla', 'kalsse.jpg', 'Klasse@yahoo.com', 6100, 'Klasse', 'Excelente ubicación, puntualidad en los eventos.', 35, 1),
(34, 300, 'Carril de la Rosa, 5011 Col. 10 de Mayo 72270 Puebla, Puebla', 'recepciones_elegance.jpg', 'Recepciones Elegance@gmail.com', 8200, 'Recepciones Elegance.', 'Amplios espacios, mayor comodidad, área de juegos infantiles. ', 36, 1),
(35, 250, 'Tulipanes, 6144 Col. Bugambilias 72580 Puebla, Puebla.', 'los_tulipanes.jpg', 'Jardín_los_Tulipanes@hotmail.com', 3500, 'Jardín los Tulipanes', 'Excelente ubicación, puntualidad en los eventos.', 37, 1),
(36, 500, 'Diagonal San Diego, 809 Col. Los Sauces 72760 Cholula, Puebla.', 'quintal.jpg', 'El_Quintal@yahoo.com', 9200, 'El Quintal', 'Amplios espacios, mayor comodidad, área de juegos infantiles. ', 38, 1),
(37, 160, 'Privada Oaxaca 4 Col, Independencia 72150 Puebla, Puebla.', 'sin_protocolo.jpg', 'Sin_protocolo@gmail.com', 3400, 'Sin protocolo', 'Amplios espacios, mayor comodidad, área de juegos infantiles. ', 39, 1),
(38, 700, '33 Poniente 4319 Col. Nueva Antequera 72750 Puebla, Puebla.', 'ardizana.jpg', 'Ardizana-Grupo_Santa_Rosa@gmail.com', 8400, 'Ardizana-Grupo Santa Rosa', 'Amplios espacios, mayor comodidad, área de juegos infantiles. ', 40, 1),
(39, 450, 'Zacapoaxtla, 33 Col. San Juan Chachapa 72990 Puebla, Puebla.', 'recepciones_maria_isabel.jpg', 'Recepciones_Mará_Isabel@gmail.com', 7200, 'Recepciones Mará Isabel', 'Excelente iluminación, amplios espacios verdes. ', 41, 1),
(40, 250, 'Camino a Morillotla 3038 Col. Ex Hacienda Morillotla 72815 San Andrés Cholula, Puebla.', 'el_olivo.jpg', 'El olivo@hotmail.com', 4800, 'El olivo', 'Amplios espacios, mayor comodidad, área de juegos infantiles. ', 42, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

DROP TABLE IF EXISTS `servicio`;
CREATE TABLE IF NOT EXISTS `servicio` (
  `id_servicio` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_servicio` date NOT NULL,
  `fecha_instalacion` date NOT NULL,
  `fecha_entrega` date NOT NULL,
  `hora` time DEFAULT NULL,
  `descripcion` varchar(250) NOT NULL,
  `curp` varchar(20) NOT NULL,
  `id_staff` int(11) DEFAULT NULL,
  `tipo_evento` varchar(20) NOT NULL,
  PRIMARY KEY (`id_servicio`),
  KEY `fk_servicio_cliente1_idx` (`curp`),
  KEY `fk_servicio_staff1_idx` (`id_staff`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`id_servicio`, `fecha_servicio`, `fecha_instalacion`, `fecha_entrega`, `hora`, `descripcion`, `curp`, `id_staff`, `tipo_evento`) VALUES
(10, '2019-11-01', '2019-11-05', '2019-11-06', '03:00:00', 'Festejo del día de compras', 'HYTR234567JUKLPG21', 3, 'Social'),
(11, '2019-11-11', '2019-11-13', '2019-11-15', '10:00:00', 'Cumpleaños de Roman', 'JKKK555555PPPPPP99', 3, 'Social'),
(12, '2019-11-25', '2019-11-26', '2019-11-27', '05:00:00', 'Festejo de aniversario COPPEL', 'PPPP888888PPPPPP88', 2, 'Corporativo'),
(13, '2019-11-11', '2019-11-12', '2019-11-13', '20:00:00', 'Cumpleaños de papá', 'JKKK555555PPPPPP99', NULL, 'Social');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `staff`
--

DROP TABLE IF EXISTS `staff`;
CREATE TABLE IF NOT EXISTS `staff` (
  `id_staff` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `paterno` varchar(45) NOT NULL,
  `materno` varchar(45) DEFAULT NULL,
  `login` varchar(20) NOT NULL,
  `cuenta_bancaria` bigint(20) NOT NULL,
  PRIMARY KEY (`id_staff`),
  KEY `fk_staff_usuario1_idx` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `staff`
--

INSERT INTO `staff` (`id_staff`, `nombre`, `paterno`, `materno`, `login`, `cuenta_bancaria`) VALUES
(2, 'GUADALUPE', 'PEREZ', 'GARCIA', 'lupita', 0),
(3, 'Javier', 'Flores', 'Flores', 'javierFF17', 500500000999000009);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipomusica`
--

DROP TABLE IF EXISTS `tipomusica`;
CREATE TABLE IF NOT EXISTS `tipomusica` (
  `id_tipoMusica` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `precio` float NOT NULL,
  `hora` int(10) NOT NULL,
  PRIMARY KEY (`id_tipoMusica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipomusica`
--

INSERT INTO `tipomusica` (`id_tipoMusica`, `nombre`, `precio`, `hora`) VALUES
(1, 'Mariachi', 5000, 2),
(2, 'AID Eventos', 3799, 7),
(3, 'Mobile Beat Productions', 2900, 7),
(4, 'DJ Morgado', 3000, 6),
(5, 'DJ Producciones', 3000, 6),
(6, 'Djmarck Eventos', 1500, 5),
(7, 'Concordia', 1200, 5),
(8, 'DJ vip-pm', 19000, 9),
(9, 'Brisa musical', 900, 5),
(10, 'Pako Rangel DJ', 5500, 6),
(11, 'Leopoldo Sánchez Violinista', 2000, 5),
(12, 'Nombre: Romanza', 1400, 5),
(13, 'Producciones Masound', 10000, 9),
(14, 'uva producciones', 15000, 9),
(15, 'Mariachi 2000', 2500, 3),
(16, 'Vital Sound', 18000, 9),
(17, 'Grupo Duerza Aérea Live Music', 18000, 10),
(18, 'Zet Producciones', 15000, 10),
(19, 'Nombre: Virled', 7000, 7),
(20, 'Orquesta Rumbabuena', 8000, 5),
(21, 'Ambar Music', 6000, 5),
(22, 'Helios DJ´s', 30000, 10),
(23, 'Sonata', 1900, 5),
(24, 'DJ Burbuja', 9500, 5),
(25, 'Josvan Producciones', 10000, 8),
(26, 'Ambience', 12000, 10),
(27, 'Grupo Musical Gran Fest', 16500, 10),
(28, 'Cadenza Ensamble', 2400, 5),
(29, 'Vampiro', 2500, 5),
(30, 'Cocobongo', 8500, 6),
(31, 'Grupo Musical Travel', 15000, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `login` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nivel` varchar(20) NOT NULL,
  PRIMARY KEY (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`login`, `password`, `nivel`) VALUES
('admin', 'admin', 'administrador'),
('brendaIM20', 'brendaIM20', 'administrador_evento'),
('guillermoST17', 'guillermoST17', 'administrador_evento'),
('HYTR234567JUKLPG21', '1Dmustr4', 'cliente'),
('javierFF17', 'javierFF17', 'administrador_evento'),
('JKKK555555PPPPPP99', 'Roman1212', 'cliente'),
('lupita', 'lupita', 'administrador_evento'),
('PPPP888888PPPPPP88', 'Maria122', 'cliente'),
('UUUU555555TTTTTT44', 'Uriel123', 'cliente');

-- --------------------------------------------------------

--
-- Estructura para la vista `final`
--
DROP TABLE IF EXISTS `final`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `final`  AS  select `alquiladora`.`id_alquiladora` AS `id`,`alquiladora`.`Nombre` AS `nombre`,`alquiladora`.`foto` AS `foto`,`alquiladora`.`precio` AS `precio`,`categorias`.`nombre_categoria` AS `nombre_categoria` from (`alquiladora` left join `categorias` on((`alquiladora`.`id_categoria` = `categorias`.`id_categoria`))) union select `comida`.`id_comida` AS `id_comida`,`comida`.`nombre` AS `nombre`,`comida`.`foto` AS `foto`,`comida`.`precio` AS `precio`,`categorias`.`nombre_categoria` AS `nombre_categoria` from (`comida` left join `categorias` on((`comida`.`id_categoria` = `categorias`.`id_categoria`))) union select `entretenimiento`.`id_entretenimiento` AS `id_entretenimiento`,`entretenimiento`.`nombre` AS `nombre`,`entretenimiento`.`foto` AS `foto`,`entretenimiento`.`precio` AS `precio`,`categorias`.`nombre_categoria` AS `nombre_categoria` from (`entretenimiento` left join `categorias` on((`entretenimiento`.`id_categoria` = `categorias`.`id_categoria`))) union select `floreria`.`id_floreria` AS `id_floreria`,`floreria`.`nombre` AS `nombre`,`floreria`.`foto` AS `foto`,`floreria`.`precio` AS `precio`,`categorias`.`nombre_categoria` AS `nombre_categoria` from (`floreria` left join `categorias` on((`floreria`.`id_categoria` = `categorias`.`id_categoria`))) union select `musica`.`id_musica` AS `id_musica`,`musica`.`nombre` AS `nombre`,`musica`.`foto` AS `foto`,`tipomusica`.`precio` AS `precio`,`categorias`.`nombre_categoria` AS `nombre_categoria` from ((`musica` left join `tipomusica` on((`musica`.`id_tipoMusica` = `tipomusica`.`id_tipoMusica`))) left join `categorias` on((`musica`.`id_categoria` = `categorias`.`id_categoria`))) union select `salon`.`id_salon` AS `id_salon`,`salon`.`nombre` AS `nombre`,`salon`.`foto` AS `foto`,`salon`.`precio` AS `precio`,`categorias`.`nombre_categoria` AS `nombre_categoria` from (`salon` left join `categorias` on((`salon`.`id_categoria` = `categorias`.`id_categoria`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `finalcarrito`
--
DROP TABLE IF EXISTS `finalcarrito`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `finalcarrito`  AS  select `alquiladora`.`id_alquiladora` AS `id`,`alquiladora`.`Nombre` AS `nombre`,`alquiladora`.`foto` AS `foto`,`alquiladora`.`precio` AS `precio`,`alquiladora`.`id_categoria` AS `id_categoria`,`categorias`.`nombre_categoria` AS `nombre_categoria` from (`alquiladora` left join `categorias` on((`alquiladora`.`id_categoria` = `categorias`.`id_categoria`))) union select `comida`.`id_comida` AS `id_comida`,`comida`.`nombre` AS `nombre`,`comida`.`foto` AS `foto`,`comida`.`precio` AS `precio`,`comida`.`id_categoria` AS `id_categoria`,`categorias`.`nombre_categoria` AS `nombre_categoria` from (`comida` left join `categorias` on((`comida`.`id_categoria` = `categorias`.`id_categoria`))) union select `entretenimiento`.`id_entretenimiento` AS `id_entretenimiento`,`entretenimiento`.`nombre` AS `nombre`,`entretenimiento`.`foto` AS `foto`,`entretenimiento`.`precio` AS `precio`,`entretenimiento`.`id_categoria` AS `id_categoria`,`categorias`.`nombre_categoria` AS `nombre_categoria` from (`entretenimiento` left join `categorias` on((`entretenimiento`.`id_categoria` = `categorias`.`id_categoria`))) union select `floreria`.`id_floreria` AS `id_floreria`,`floreria`.`nombre` AS `nombre`,`floreria`.`foto` AS `foto`,`floreria`.`precio` AS `precio`,`floreria`.`id_categoria` AS `id_categoria`,`categorias`.`nombre_categoria` AS `nombre_categoria` from (`floreria` left join `categorias` on((`floreria`.`id_categoria` = `categorias`.`id_categoria`))) union select `musica`.`id_musica` AS `id_musica`,`musica`.`nombre` AS `nombre`,`musica`.`foto` AS `foto`,`tipomusica`.`precio` AS `precio`,`musica`.`id_categoria` AS `id_categoria`,`categorias`.`nombre_categoria` AS `nombre_categoria` from ((`musica` left join `tipomusica` on((`musica`.`id_tipoMusica` = `tipomusica`.`id_tipoMusica`))) left join `categorias` on((`musica`.`id_categoria` = `categorias`.`id_categoria`))) union select `salon`.`id_salon` AS `id_salon`,`salon`.`nombre` AS `nombre`,`salon`.`foto` AS `foto`,`salon`.`precio` AS `precio`,`salon`.`id_categoria` AS `id_categoria`,`categorias`.`nombre_categoria` AS `nombre_categoria` from (`salon` left join `categorias` on((`salon`.`id_categoria` = `categorias`.`id_categoria`))) ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alquiladora`
--
ALTER TABLE `alquiladora`
  ADD CONSTRAINT `alquiladora_ibfk_1` FOREIGN KEY (`id_cuenta`) REFERENCES `cuenta_bancaria` (`id_cuenta`) ON UPDATE CASCADE,
  ADD CONSTRAINT `alquiladora_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`),
  ADD CONSTRAINT `alquiladora_ibfk_3` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`login`) REFERENCES `usuario` (`login`);

--
-- Filtros para la tabla `comida`
--
ALTER TABLE `comida`
  ADD CONSTRAINT `comida_ibfk_1` FOREIGN KEY (`id_cuenta`) REFERENCES `cuenta_bancaria` (`id_cuenta`) ON UPDATE CASCADE,
  ADD CONSTRAINT `comida_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);

--
-- Filtros para la tabla `detalle_servicio`
--
ALTER TABLE `detalle_servicio`
  ADD CONSTRAINT `detalle_servicio_ibfk_1` FOREIGN KEY (`id_staff`) REFERENCES `staff` (`id_staff`),
  ADD CONSTRAINT `detalle_servicio_ibfk_2` FOREIGN KEY (`id_staff`) REFERENCES `staff` (`id_staff`),
  ADD CONSTRAINT `detalle_servicio_ibfk_3` FOREIGN KEY (`id_comida`) REFERENCES `comida` (`id_comida`),
  ADD CONSTRAINT `detalle_servicio_ibfk_4` FOREIGN KEY (`id_entretenimiento`) REFERENCES `entretenimiento` (`id_entretenimiento`),
  ADD CONSTRAINT `detalle_servicio_ibfk_5` FOREIGN KEY (`id_floreria`) REFERENCES `floreria` (`id_floreria`),
  ADD CONSTRAINT `detalle_servicio_ibfk_6` FOREIGN KEY (`id_musica`) REFERENCES `musica` (`id_musica`),
  ADD CONSTRAINT `detalle_servicio_ibfk_9` FOREIGN KEY (`id_salon`) REFERENCES `salon` (`id_salon`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_detalle_servicio_servicio1` FOREIGN KEY (`id_servicio`) REFERENCES `servicio` (`id_servicio`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detalle_servicio_staff1` FOREIGN KEY (`id_staff`) REFERENCES `staff` (`id_staff`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_staff` FOREIGN KEY (`id_staff`) REFERENCES `staff` (`id_staff`),
  ADD CONSTRAINT `id_staff_1` FOREIGN KEY (`id_staff`) REFERENCES `staff` (`id_staff`) ON DELETE CASCADE;

--
-- Filtros para la tabla `entretenimiento`
--
ALTER TABLE `entretenimiento`
  ADD CONSTRAINT `entretenimiento_ibfk_1` FOREIGN KEY (`id_cuenta`) REFERENCES `cuenta_bancaria` (`id_cuenta`) ON UPDATE CASCADE,
  ADD CONSTRAINT `entretenimiento_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);

--
-- Filtros para la tabla `floreria`
--
ALTER TABLE `floreria`
  ADD CONSTRAINT `floreria_ibfk_1` FOREIGN KEY (`id_cuenta`) REFERENCES `cuenta_bancaria` (`id_cuenta`) ON UPDATE CASCADE,
  ADD CONSTRAINT `floreria_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);

--
-- Filtros para la tabla `musica`
--
ALTER TABLE `musica`
  ADD CONSTRAINT `musica_ibfk_1` FOREIGN KEY (`id_tipoMusica`) REFERENCES `tipomusica` (`id_tipoMusica`),
  ADD CONSTRAINT `musica_ibfk_2` FOREIGN KEY (`id_cuenta`) REFERENCES `cuenta_bancaria` (`id_cuenta`) ON UPDATE CASCADE,
  ADD CONSTRAINT `musica_ibfk_3` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);

--
-- Filtros para la tabla `salon`
--
ALTER TABLE `salon`
  ADD CONSTRAINT `salon_ibfk_1` FOREIGN KEY (`id_cuenta`) REFERENCES `cuenta_bancaria` (`id_cuenta`) ON UPDATE CASCADE,
  ADD CONSTRAINT `salon_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);

--
-- Filtros para la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD CONSTRAINT `fk_servicio_staff1` FOREIGN KEY (`id_staff`) REFERENCES `staff` (`id_staff`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`login`) REFERENCES `usuario` (`login`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
