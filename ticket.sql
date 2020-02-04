-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-01-2020 a las 18:26:13
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ticket`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id_admin` int(11) NOT NULL,
  `nombre_completo` varchar(100) NOT NULL,
  `nombre_admin` varchar(60) NOT NULL,
  `clave` text NOT NULL,
  `email_admin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id_admin`, `nombre_completo`, `nombre_admin`, `clave`, `email_admin`) VALUES
(1, 'Administrador Avior', 'AdministradorAv', '96c7333194ffe4b247ceaf6071936219', 'saador.sanchez@gruposid.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre_completo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre_usuario` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `email_cliente` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `clave` text COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre_completo`, `nombre_usuario`, `email_cliente`, `clave`) VALUES
(8, 'Luis Cerda', 'luiscer', 'luis.cerda@gruposid.com.mx', 'd151203bbfeffbb2e9f37c31b87fe9d2'),
(9, 'JESUS LEONARDO RESENDIZ RAMIREZ', 'Leonardo7', 'supervisorcalidad-avior@gruposid.com.mx', '9d6d2c5e03632e7346396457f1960bf0'),
(10, 'Patricia Hernandez De Leon', 'PHernandez', 'patricia.hernandez-leon@gruposid.com.mx', 'f2f0c48fee4b8f9c6ac0e23d761a615f'),
(12, 'Karla Trujillo ', 'KarlaTG', 'karla.tg@partner.samsung.com', 'd7fd5fa1a621a2d4681803b53dcc1f95'),
(13, 'Sergio Guadalupe Gonzalez Romo', 'SGGR', 'sergio.gr@samsung.com', '59300bca7f33215e6cd6131d15940101'),
(14, 'Gail Silva', 'GailSH', 'gail.silva@gruposid.com.mx', 'a6eeb572679572751e3c8a38d8759e11'),
(15, 'SUPERVISOR', 'SEGURIDAD', 'supervisorseguridadavior@gruposid.com.mx', '2cb193d848b37854b1087eebdf69076a'),
(16, 'NANCY JAQUELINE CRUZ MENDOZA', 'NJCM', 'nancy.cm@partner.samsung.com', '9ef4183d7da6282f7bf7f2a7bbd9df48'),
(17, 'ALFONSO CERRITOS VALENCIA', 'CERRITOS', 'alfonso.cv@partnert.samsung.com', '122a72beb4a6cd41e6c5984a388f9445'),
(18, 'Miriam Zea ', 'LuciaZeaGlez', 'luciazeaglez0293@gmail.com.mx', 'ae30e06ccbe1f6b998c2035cbdcada1b'),
(19, 'VANYA ESTHER GARCIA ORDAZ', 'vanesordaz', 'vanesordaz@gmail.com', '29ebf2f279da44f69a35206885cd2dbc'),
(21, 'Andrea Ibarra Leon', 'Andrea', 'andrea.il@partner.samsung.com', '3bbbb90537f9bb330f3991e23daa2e12'),
(22, 'Anabel Salomon', 'Ana105', 'anabel.sp@partner.samsung.com', '0630ec1e5f2d60c1839228070bd7f221'),
(25, 'FLOR BERENICE CRUZ REYNA', 'traficodaewoo', 'trafico_sdsm@samsung.com', '8b6c43e3ad7f420e46fc88f440026721'),
(26, 'Miriam Zea', 'Miriamzeaglez', 'miriam.zea-avior@gruposid.com.mx', 'ae30e06ccbe1f6b998c2035cbdcada1b'),
(28, 'Liliana Aguirre Arteaga', 'liliagar', 'liliana.aa@samsung.com', 'df0f195dff997965bac25de974ac13eb'),
(29, 'Gustavo Romero Hernandez', 'Pomeron', 'gustavo.romero@decomex.com.mx', '08942eed4eb9138a2d58468ae75609c5'),
(30, 'AUDITOR OUTBAUND', 'AAVIOR', 'auditoroutboundavior@gruposid.com.mx', 'a7f1881e0d8db52389f8a6a6c3bc52b8');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket`
--

CREATE TABLE `ticket` (
  `id` int(11) NOT NULL,
  `fecha` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `fechaCierre` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `serie` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `estado_ticket` varchar(60) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre_usuario` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `email_cliente` varchar(60) COLLATE utf8_spanish2_ci NOT NULL,
  `departamento` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `asunto` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `mensaje` text COLLATE utf8_spanish2_ci NOT NULL,
  `solucion` text COLLATE utf8_spanish2_ci NOT NULL,
  `calificacion` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `ticket`
--

INSERT INTO `ticket` (`id`, `fecha`, `fechaCierre`, `serie`, `estado_ticket`, `nombre_usuario`, `email_cliente`, `departamento`, `asunto`, `mensaje`, `solucion`, `calificacion`) VALUES
(14, '03/09/2018 03:36:57', '03/09/2018 03:40:23', 'TK56N4', 'Resuelto', 'Luis Cerda', 'luis.cerda@gruposid.com.mx', 'OutBound', 'SIN INTERNET', 'No se tiene internet en el area de Outbound ni en terminales', 'se esta trabajando en la revision de la red.\r\nListo, se hicieron varias pruebas y se dejo funcioando correctamente.', 'Bueno'),
(15, '04/09/2018 11:53:08', NULL, 'TK49N2', 'Resuelto', 'JESUS LEONARDO RESEN', 'supervisorcalidad-avior@gruposid.com.mx', 'OutBound', 'Falta de Red en celular del trabajo ', 'no cuento con datos en el tel?fono proporcionado de la empresa', 'Lo escalo a corporativo, para saber que tipo de linea es tu celular. 12:05pm\r\nHola Leo, tu linea es de 1Gb el dia de manana entre 12 del dia se estara reactivando. lo consulte con Claudia Lopez, Corporativo. ', NULL),
(16, '04/09/2018 03:12:54', '04/09/2018 03:51:16', 'TK82N3', 'Resuelto', 'Liliana Aguirre', 'liliana.aa@samsung.com', 'Importaciones SDS', 'Solicitud de Internet en Celular', 'Puedes ayudarme a ponerle Internet a mi celular por favor.', 'Listo, celular Samsung, conectado. ', 'Excelente'),
(17, '04/09/2018 03:25:01', '04/09/2018 05:28:30', 'TK41N4', 'Resuelto', 'Sergio Guadalupe Gon', 'sergio.gr@samsung.com', 'Transporte', 'No puedo abrir archivos de Excel', 'Me pide una licencia que no tengo, y no puedo activar filtros ni editar celdas, solo abrir el archivo de excel y verlo.', 'Voy a desinstalar office y volver a instalarlo, despues lo canalizo con Ariadna para que haga la activacion. 16:00pm\r\nListo Sergio, se instalo correctamente, se hicieron pruebas y se dejo funcionando correctamente.', 'Excelente'),
(18, '04/09/2018 06:07:47', '05/09/2018 12:28:19', 'TK23N5', 'Resuelto', 'Sergio Guadalupe Gon', 'sergio.gr@samsung.com', 'Transporte', 'Mi Outlook antiguo', 'Despu?s de que me arreglaste el problema del \"Office\", desapareci? de mis opciones la posibilidad de abrir mi viejo Outlook y como recordar?s, hay mucha informaci?n que obtengo de esa base de datos tan extensa.', 'Que tal Sr. Sergio, desde ayer quedo solucionado, hice varias pruebas y quedo funcionando correctamente.', 'Excelente'),
(19, '05/09/2018 12:29:16', '06/09/2018 02:33:59', 'TK21N6', 'Resuelto', 'Sergio Guadalupe Gon', 'sergio.gr@samsung.com', 'Transporte', 'Configurar mi correo externo conforme a especificaciones de SDS Mexico', 'Me mandaron una gu?a de c?mo hacerlo pero no encuentro esas opciones en internet.', 'Creo que ya lo cerraste Sergio. bueno cualquier cosa a tus ordenes.', 'Bueno'),
(20, '06/09/2018 02:33:09', '06/09/2018 04:48:25', 'TK72N7', 'Resuelto', 'Sergio Guadalupe Gon', 'sergio.gr@samsung.com', 'Transporte', 'No puedo aplicar f?rmula vlookup en Excel', 'Intento hacer una b?squeda vertical de una serie de datos en excel para traer un dato de otra tabla y no me ejecuta la f?rmula, sino que la repite como texto.', 'Estoy checando Sergio, puedes intentar con la formula BUSCARV', 'Bueno'),
(21, '06/09/2018 04:49:32', '30/09/2018 01:28:42', 'TK56N8', 'Resuelto', 'Sergio Guadalupe Gon', 'sergio.gr@samsung.com', 'Transporte', 'No puedo abrir Open Place en Knox', 'Al intentar abrir Open Place para registrar mis gastos, el sistema no me permite el ingreso.', 'Sr. Sergio, listo ya quedo su openplace, se escalo con Ariadna.', 'Bueno'),
(22, '06/09/2018 06:23:15', '30/09/2018 01:29:24', 'TK71N9', 'Resuelto', 'Sergio Guadalupe Gon', 'sergio.gr@samsung.com', 'Transporte', 'Instalar PC para monitoreo y crear cuenta de correo', 'Favor de instalar en el escritorio adjunto al lugar de Salvador Martinez Barron, la PC Desktop destinada para este fin y solicitar la creaci?n de una nueva cuenta de correo urgente.', 'Claro Sergio, me proporcionas el nombre de usuario para solicitar su cuenta de correo por favor.\r\nListo Sr. Sergio ya quedo instalada la computadora con los dos monitosres solicitados.\r\nEsta habilitada la VPN de esta area.', 'Excelente'),
(23, '08/09/2018 01:34:29', NULL, 'TK73N10', 'Resuelto', 'Gail Silva', 'gail.silva@gruposid.com.mx', 'InBound', 'Cuenta de Cello', 'Necesito de tu apoyo para habilitar de la cuenta de Cello WMS que no funciona en Log?stica, Inbound por temas de configuraci?n de navegador.\r\n\r\nGracias, espero tu pronto apoyo.\r\n\r\nSaludos.', 'Listo, Gail lo revise y quedo la pagina lo valide con usuarios.', NULL),
(24, '10/09/2018 05:07:05', NULL, 'TK16N11', 'Resuelto', 'SUPERVISOR', 'supervisorseguridadavior@gruposid.com.mx', 'Monitoreo', 'computadora no conectada a impresoras', 'Buenos d?as\r\n\r\nla computadora del area de seguridad y mantenimiento no cuenta con la opcion de imprimir en las ninguna de las dos multifuncionales del area de oficinas, la cual solo tiene instaladas las de las areas de inbound y outbond \r\n\r\nsin ningun otro detalle en el equipo agradesco la atencion y esperando una pronta solucion.\r\n\r\nBuen dia\r\n', 'Listo, ya estaba habilitada.', NULL),
(25, '11/09/2018 12:12:22', '11/09/2018 12:16:11', 'TK51N12', 'Resuelto', 'Karla Trujillo ', 'karla.tg@partner.samsung.com', 'Devoluciones SDS', 'Configurar Impresora', 'Solicito de tu apoyo para la configuracion de una impresora. ', 'Ok, listo queda funcionando correctamente.', 'Excelente'),
(26, '11/09/2018 04:02:23', '11/09/2018 04:24:52', 'TK34N13', 'Resuelto', 'NANCY JAQUELINE CRUZ', 'nancy.cm@partner.samsung.com', 'Planeaci?n SDS', 'Habilitar p?gina web', 'Apoyo con la habilitaci?n de una p?gina web.', 'listo, quedo resuelto, se hicieron varias pruebas y quedo funcionando correctamente.', 'Excelente'),
(27, '11/09/2018 04:19:59', '11/09/2018 04:26:15', 'TK33N14', 'Resuelto', 'ALFONSO CERRITOS VAL', 'alfonso.cv@partnert.samsung.com', 'InBound', 'CARPETA COMPARTIDA', 'Apoyo para aviltar carpeta compartida', 'Listo Sr. Cerritos. queda habilitada la carpeta compartida.\r\nSe hacen varias pruebas y se deja funcionando correctamente.', 'Excelente'),
(28, '13/09/2018 05:36:47', NULL, 'TK22N15', 'Resuelto', 'Miriam Zea ', 'luciazeaglez0293@gmail.com.mx', 'InBound', 'Correo electronico ', 'Crear correo de supervisor Inbound \r\nNombre: Guadalupe Garcia Carre?o\r\n', 'Se envia formato al corporativo, en cuanto lo tenga te lo configuro. Listo Miriam configurado en el equipo de computo.', NULL),
(29, '13/09/2018 05:53:33', NULL, 'TK37N16', 'Resuelto', 'VANYA ESTHER GARCIA ', 'vanesordaz@gmail.com', 'InBound', 'habilitaci?n cuenta en cello plus wms ', 'buenas tardes Jose \r\nme podr?as apoyar en habilitar mi usuario : vanyago, en sistema cello plus wms, ya que es importante para nosotros llevar un control de los movimientos que realiza cada usuario.\r\nquedo al pendiente.\r\nsaludos ', 'Listo Vanya, se hicieron varias pruebas y quedo funcionando correctamente.', NULL),
(30, '14/09/2018 04:47:47', '17/09/2018 02:06:20', 'TK08N17', 'Resuelto', 'VANYA ESTHER GARCIA ', 'vanesordaz@gmail.com', 'InBound', 'HABILITACI?N DE USUARIO EN COMPUTADORA DEL ANALISTA  ', 'HOLA JOSE\r\nMe podr?as apoyar en habilitar mi usuario de cello plus wms en la computadora de mis analistas.\r\ngracias quedo al pendiente\r\nsaludos ', 'Listo Vanya agregado en el explorador, se habilita tu usuario en el equipo.', 'Excelente'),
(31, '14/09/2018 04:49:19', NULL, 'TK46N18', 'Resuelto', 'VANYA ESTHER GARCIA ', 'vanesordaz@gmail.com', 'InBound', 'C?DIGO DE BARRAS ', 'Hola Jose\r\nMe podr?as apoyar en proporcionarme el c?digo de barras con mi usuario de cello plus wms para poder usarlo en las terminales.\r\ngracias quedo al pendiente.\r\nsaludos ', 'Listo Vanya ya esta pegado en la columna listo para usarse.', NULL),
(32, '14/09/2018 04:58:51', '30/09/2018 01:30:05', 'TK61N19', 'Resuelto', 'Sergio Guadalupe Gon', 'sergio.gr@samsung.com', 'Transporte', 'Necesito recuperar mis archivos de mis PC anteriores', 'No los tengo en esta PC', 'Estoy revisando la Laptop Samsung es la unica donde tendrias archivos, la HP no hubo archivos porque se formateo totalmente.\r\nListo Sergio solo se descargaron los archivos de respaldo en tu nuevo ordenador.', 'Excelente'),
(33, '17/09/2018 09:45:26', NULL, 'TK55N20', 'Resuelto', 'NANCY JAQUELINE CRUZ', 'nancy.cm@partner.samsung.com', 'Planeaci?n SDS', 'RUTA DE ACCESO A CARPETA', 'NO TENGO ACCESO A LA CARPETA COMPARTIDA DE ESTATUS DE ESTREGAS.', 'Nancy, se cayo el servidor, ya lo eh levantado y podemos accesar nuevamente.', NULL),
(34, '19/09/2018 09:16:45', '20/09/2018 09:29:54', 'TK58N21', 'Resuelto', 'Karla Trujillo ', 'karla.tg@partner.samsung.com', 'Devoluciones SDS', 'Configurar servidor.', 'Apoyo para realizar respaldo de archivos en el servidor, por primera vez.', 'Se crea carpeta de respaldo en tu equipo, listo puedes empezar a subir tus archivos como vallas trabajando.', 'Excelente'),
(35, '20/09/2018 02:49:30', '20/09/2018 03:39:07', 'TK14N22', 'Resuelto', 'Andrea Ibarra Leon', 'andrea.il@partner.samsung.com', 'Devoluciones SDS', 'Error en env?o y recepci?n de correos Outlook', 'Error en env?o y recepci?n de correos Outlook', 'Listo Andrea, solo era cuestion de evacuar la bandeja de entrada, lo hizo solo el servidor.', 'Bueno'),
(36, '27/09/2018 04:20:10', '29/09/2018 10:12:19', 'TK86N23', 'Resuelto', 'Sergio Guadalupe Gon', 'sergio.gr@samsung.com', 'Transporte', 'Revisar la versi?n de MS Office en la PC Desktop de Documentaci?n', 'Al querer imprimir Ordenes de Compra de Walmart, en ocasiones arroja un archivo en Excel que al abrirlo aparece un mensaje de error. Esto no sucede en la Laptop de Luis Trejo (referencia).\r\n', 'Ok, lo reviso Sergio. Listo Sergio, estaba en mantenimiento la pagina por eso no se pudo hacer movimientos. ', 'Excelente'),
(37, '28/09/2018 09:42:16', '28/09/2018 10:32:26', 'TK91N24', 'Resuelto', 'FLOR BERENICE CRUZ R', 'trafico_sdsm@samsung.com', 'InBound', 'RECESETEO DE CONTRASE?A DE VPN', 'NUEVA CONTrASE?A  DE VPN el  correo es  trafico_sdsm@samsung.com', 'Listo Flor, ya puedes ingresar a tu VPN, tu password es Inicial18. Saludos', 'Excelente'),
(38, '28/09/2018 10:09:27', '28/09/2018 10:33:43', 'TK18N25', 'Resuelto', 'FLOR BERENICE CRUZ R', 'trafico_sdsm@samsung.com', 'InBound', 'NO SALEN MSJ DE CORREO', 'NO SE RECIBEN NI SALEN MSJ DEL CORREO DE TRAFICO PODRIAS REVISARLO POR FAVOR', 'Hola Flor, claro esto pasa porque no tienes activada tu VPN. En cuanto se active tu correo va a trabajar de manera normal.', 'Excelente'),
(39, '29/09/2018 11:47:25', '29/09/2018 01:21:57', 'TK42N26', 'Resuelto', 'Miriam Zea', 'miriam.zea-avior@gruposid.com.mx', 'InBound', 'Correo supervisor Inbound', 'Jos? me apoyas con el correo de Guadalupe Garc?a Carre?o. \r\nQuedo atentan', 'Listo Miriam, ya habia quedado configurado. Te anexo el ticket donde te confirmo TK22N15.', 'Muy Bueno'),
(40, '29/09/2018 12:03:51', NULL, 'TK86N27', 'Resuelto', 'Miriam Zea', 'miriam.zea-avior@gruposid.com.mx', 'InBound', 'Internet para computadora de coordinador ', 'Jos? mi computadora esta fallando, no se conecta al internet, necesito tener acceso a las bit?coras de mi equipo. \r\nQuedo al pendiente \r\nGracias ', 'Listo Miriam se implemento la conexion a internet por medio de ethernet (cable de red) para que este veloz tu navegacion en internet y aplicativos.', NULL),
(41, '29/09/2018 12:06:10', '29/09/2018 01:25:28', 'TK99N28', 'Resuelto', 'Miriam Zea', 'miriam.zea-avior@gruposid.com.mx', 'InBound', 'Solicitud de  computadora ', 'Jos? necesito que me proporciones una computadora.\r\nQuedo atenta \r\nGracias ', 'Lito Miriam, te entregue y me firmaste la responsiva. Gracias', 'Muy Bueno'),
(42, '29/09/2018 12:08:15', '29/09/2018 01:29:08', 'TK91N29', 'Resuelto', 'Miriam Zea', 'miriam.zea-avior@gruposid.com.mx', 'InBound', 'Internet delta', 'Apoyarme con el Internet en delta, no se conectan las terminales.\r\nGracias ', 'Listo Miriam, se apagaron las antenas, me apoyas en no usar la terminal 11 en Alpha ya que esta destinada para Deltha.', 'Muy Bueno'),
(43, '29/09/2018 12:17:34', NULL, 'TK95N30', 'En proceso', 'Miriam Zea', 'miriam.zea-avior@gruposid.com.mx', 'InBound', 'Computadora planeador ', 'Jos? necesito que revises la computadora del planeador:\r\nEsta muy lenta\r\nSe traba el excel \r\nNo funciona el SAP\r\nQuedo atenta \r\nGracias ', 'Lo checo Miriam, es cuestion de entrar al office 365.', NULL),
(44, '03/10/2018 01:40:19', '08/10/2018 10:59:04', 'TK48N31', 'Resuelto', 'Liliana Aguirre Arte', 'liliana.aa@samsung.com', 'Importaciones SDS', 'Actualizacion de credencial', 'Me cambiaron la Laptop y si quiero sacarla de la empresa no voy a poder, ya que la credencial no esta actualizada con los datos nuevos.\r\nPor lo tanto solicito la actualizaci?n de la credencial.', 'Listo, Lili te entregue el viernes. ', 'Excelente'),
(45, '03/10/2018 01:41:36', '08/10/2018 10:47:45', 'TK55N32', 'Resuelto', 'Liliana Aguirre Arte', 'liliana.aa@samsung.com', 'Importaciones SDS', 'Instalacion de complemento', 'Al querer imprimir en CELLO, me sale error de complemento UbiViewerWS.', 'Listo, Lili se instalo correctamente el complemento de Ubiviwer. ', 'Excelente'),
(46, '08/10/2018 09:31:56', NULL, 'TK07N33', 'Resuelto', 'Sergio Guadalupe Gon', 'sergio.gr@samsung.com', 'Transporte', 'No me puedo firmar en la VPN', 'Al ingresar esta ma?ana, me pidi? cambiar de Password  y lo hice con ?xito. Despu?s me mand? una alerta de \"se requiere atenci?n\" y me volvi? a pedir mi password, y ya no acept? el nuevo ni el anterior.', 'Listo, Sr. Sergio, en automatico se soluciono, cualquier cosa me avisa.', NULL),
(47, '08/10/2018 10:03:37', '10/10/2018 12:00:41', 'TK61N34', 'Resuelto', 'Gustavo Romero Herna', 'gustavo.romero@decomex.com.mx', 'InBound', 'Actualizar antivirus y reparar error pantalla Azul', 'Buenos d?as Pepe, por favor me ayudas en actualizar mi antivirus y reparar el error de pantalla azul, he investigado y la pantalla azul se genera porque actualice el windows 10 y alg?n controlador esta generando conflicto.', '', 'Excelente'),
(48, '08/10/2018 02:42:09', NULL, 'TK02N35', 'Pendiente', 'VANYA ESTHER GARCIA ', 'vanesordaz@gmail.com', 'InBound', 'ayuda con mi correo', 'hola pepe me podr?as apoyar a revisar mi correo no me permite enviar correos.\r\n', '', NULL),
(49, '15/10/2018 01:21:50', NULL, 'TK42N36', 'Pendiente', 'JESUS LEONARDO RESEN', 'supervisorcalidad-avior@gruposid.com.mx', 'OutBound', 'Laptop para el proyecto de CalidaDd en CIGNUS', 'se necesitara un equipo de laptop en el almac?n de calamanda para el proyecto CIGNUS\r\n', '', NULL),
(50, '15/10/2018 01:32:46', NULL, 'TK42N37', 'Pendiente', 'JESUS LEONARDO RESEN', 'supervisorcalidad-avior@gruposid.com.mx', 'InBound', 'CONFIGURACION DE RED EN LAPTOP', 'Para el proyecto de CIGNUS es importante se habilite el internet en el equipo de computo\r\npara los auditores, que deber?n enviar peri?dicamente informaci?n al cliente', '', NULL),
(51, '16/10/2018 02:35:10', NULL, 'TK78N38', 'Pendiente', 'NANCY JAQUELINE CRUZ', 'nancy.cm@partner.samsung.com', 'Planeaci?n SDS', 'CARPETA COMPARTIDA', 'solicitud de carpeta compartida de tr?fico sds', '', NULL),
(52, '19/10/2018 02:39:19', NULL, 'TK33N39', 'Pendiente', 'JESUS LEONARDO RESEN', 'supervisorcalidad-avior@gruposid.com.mx', 'OutBound', 'FIRMA ELECTRONICA ', 'Me podr?s ayudar con la generaci?n mi Firma electr?nica, para direccionar informaci?n de manera formal. ', '', NULL),
(53, '22/10/2018 04:58:59', NULL, 'TK33N40', 'Pendiente', 'VANYA ESTHER GARCIA ', 'vanesordaz@gmail.com', 'InBound', 'BITACORA MACRO', 'HOLA PEPE ME PODR?AS APOYAR EN LA BIT?CORA DE DEVOLUCIONES CARGAR TODOS LOS CLIENTES DE DEVOLUCI?N Y LOS MOTIVOS DE RECHAZO.\r\nTE ADJUNTO LOS ARCHIVOS POR CORREO.', '', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `correo` (`email_admin`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `id_num` (`email_cliente`);

--
-- Indices de la tabla `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `serie` (`serie`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
