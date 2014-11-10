/*
SQLyog Community Edition- MySQL GUI v8.05 
MySQL - 5.5.32 : Database - usuario
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`usuario` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `usuario`;

/*Table structure for table `grupo` */

DROP TABLE IF EXISTS `grupo`;

CREATE TABLE `grupo` (
  `idgrupo` int(11) NOT NULL AUTO_INCREMENT,
  `grupo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idgrupo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `grupo` */

insert  into `grupo`(`idgrupo`,`grupo`) values (1,'TIC-71'),(2,'TIC-72'),(3,'TIC-73');

/*Table structure for table `grupo_alumno` */

DROP TABLE IF EXISTS `grupo_alumno`;

CREATE TABLE `grupo_alumno` (
  `iddga` int(11) NOT NULL AUTO_INCREMENT,
  `idgrupo` int(11) NOT NULL,
  `Id` int(11) NOT NULL,
  PRIMARY KEY (`iddga`),
  KEY `idgrupo` (`idgrupo`),
  KEY `Id` (`Id`),
  CONSTRAINT `grupo_alumno_ibfk_1` FOREIGN KEY (`idgrupo`) REFERENCES `grupo` (`idgrupo`),
  CONSTRAINT `grupo_alumno_ibfk_2` FOREIGN KEY (`Id`) REFERENCES `usuario` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;

/*Data for the table `grupo_alumno` */

insert  into `grupo_alumno`(`iddga`,`idgrupo`,`Id`) values (59,1,13),(60,1,13),(61,1,18);

/*Table structure for table `maestro_materia` */

DROP TABLE IF EXISTS `maestro_materia`;

CREATE TABLE `maestro_materia` (
  `idmm` int(11) NOT NULL AUTO_INCREMENT,
  `Id` int(11) NOT NULL,
  `idmateria` int(11) NOT NULL,
  PRIMARY KEY (`idmm`),
  KEY `Id` (`Id`),
  KEY `idmateria` (`idmateria`),
  CONSTRAINT `maestro_materia_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `usuario` (`Id`),
  CONSTRAINT `maestro_materia_ibfk_2` FOREIGN KEY (`idmateria`) REFERENCES `materia` (`idmateria`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `maestro_materia` */

insert  into `maestro_materia`(`idmm`,`Id`,`idmateria`) values (1,15,3),(9,15,4),(10,15,1),(11,2,1),(12,2,4);

/*Table structure for table `materia` */

DROP TABLE IF EXISTS `materia`;

CREATE TABLE `materia` (
  `idmateria` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_materia` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idmateria`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `materia` */

insert  into `materia`(`idmateria`,`nombre_materia`) values (1,'Matematicas para TI'),(2,'Geometria Analitica'),(3,'Optativa'),(4,'Modelado de procesos'),(5,'Geografia');

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) DEFAULT NULL,
  `ApellidoPaterno` varchar(50) DEFAULT NULL,
  `Telefono` varchar(50) DEFAULT NULL,
  `Calle` varchar(50) DEFAULT NULL,
  `NumeroExterior` varchar(10) DEFAULT NULL,
  `NumeroInterior` varchar(10) DEFAULT NULL,
  `Colonia` varchar(50) DEFAULT NULL,
  `Municipio` varchar(50) DEFAULT NULL,
  `Estado` varchar(50) DEFAULT NULL,
  `CP` varchar(50) DEFAULT NULL,
  `Correo` varchar(50) DEFAULT NULL,
  `Usuario` varchar(20) DEFAULT NULL,
  `Contasena` varchar(20) DEFAULT NULL,
  `Nivel` varchar(10) DEFAULT NULL,
  `Estatus` varchar(30) DEFAULT NULL,
  `ApellidoMaterno` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `usuario` */

insert  into `usuario`(`Id`,`Nombre`,`ApellidoPaterno`,`Telefono`,`Calle`,`NumeroExterior`,`NumeroInterior`,`Colonia`,`Municipio`,`Estado`,`CP`,`Correo`,`Usuario`,`Contasena`,`Nivel`,`Estatus`,`ApellidoMaterno`) values (2,'Tomas','Lopez',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'maestro','123','2','1','Sanchez'),(4,'Rosario','Reyes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'administrador','123','1','1','Gutierrez'),(5,'Carla','Interino',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3','1','Medel'),(6,'Alejandra','Galicia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','Escalante'),(7,'Maria','Martinez',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3','1','Reyes'),(8,'Blanca','Torres',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3','1','Tellez'),(9,'Mauricio Esteban','Salazar',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3','1','Reyes'),(10,'Reyes','Flores',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','Garcia'),(11,'Roberto','Hernandez',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3','1','Reyes '),(13,'Dalia','Tovar',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3','1','Interino'),(14,'Carlos Ivan','Tovar',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3','0','Interino'),(15,'Julio','Hermenegildo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'maestro','123','2','1','Lopez'),(16,'Maria Fernanda','Gutierrez',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','Villavicencio'),(18,'Erasmo','Vilavicencio',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3','1','Rivero'),(19,'Alicia','Duarte',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','0','Hernandez');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
