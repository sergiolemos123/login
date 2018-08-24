CREATE DATABASE  IF NOT EXISTS `scripwebDB`;
USE `scripwebDB`;

DROP TABLE IF EXISTS `tipo_users`;

CREATE TABLE `tipo_users` (
  `cod_tipo_users` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_tipo_users` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `created_tipo_users` TIMESTAMP NOT NULL,
  `updated_tipo_users` TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE NOW(),
  PRIMARY KEY (`cod_tipo_users`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

DROP TABLE IF EXISTS `area_formacion`;

CREATE TABLE `area_formacion` (
  `cod_area_formacion` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_area_formacion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `created_area_formacion` TIMESTAMP NOT NULL,
  `updated_area_formacion` TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE NOW(),
  PRIMARY KEY (`cod_area_formacion`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

DROP TABLE IF EXISTS `area_conocimiento`;

CREATE TABLE `area_conocimiento` (
  `cod_area_conocimiento` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_area_conocimiento` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `created_area_conocimiento` TIMESTAMP NOT NULL,
  `updated_area_conocimiento` TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE NOW(),
  PRIMARY KEY (`cod_area_conocimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

DROP TABLE IF EXISTS `pais`;

CREATE TABLE `pais` (
  `cod_pais` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_pais` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `postal_pais` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `created_pais` TIMESTAMP NOT NULL,
  `updated_pais` TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE NOW(),
  PRIMARY KEY (`cod_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

DROP TABLE IF EXISTS `departamento`;

CREATE TABLE `departamento` (
  `cod_departamento` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_departamento` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `cod_pais` int(10) unsigned NULL,
  `created_pais` TIMESTAMP NOT NULL,
  `updated_pais` TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE NOW(),
  PRIMARY KEY (`cod_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

DROP TABLE IF EXISTS `ciudad`;

CREATE TABLE `ciudad` (
  `cod_ciudad` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cod_departamento` int(10) unsigned NOT NULL,
  `nombre_ciudad` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `created_ciudad` TIMESTAMP NOT NULL,
  `updated_ciudad` TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE NOW(),
  PRIMARY KEY (`cod_ciudad`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

DROP TABLE IF EXISTS `comuna`;

CREATE TABLE `comuna` (
  `cod_comuna` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_comuna` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `created_comuna` TIMESTAMP NOT NULL,
  `updated_comuna` TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE NOW(),
  PRIMARY KEY (`cod_comuna`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

DROP TABLE IF EXISTS `ciudad_comuna`;

CREATE TABLE `ciudad_comuna` (
  `cod_ciudad_comuna` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cod_ciudad` int(10) unsigned NOT NULL,
  `cod_comuna` int(10) unsigned NOT NULL,
  `created_ciudad_comuna` TIMESTAMP NOT NULL,
  `updated_ciudad_comuna` TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE NOW(),
  PRIMARY KEY (`cod_ciudad_comuna`),
  KEY `fkcodciudadciucom_ciudad_idx` (`cod_ciudad`),
  KEY `fkcodcomunaciucom_comuna_idx` (`cod_comuna`),
  CONSTRAINT `fkcodciudadciucom_ciudad` FOREIGN KEY (`cod_ciudad`) REFERENCES `ciudad` (`cod_ciudad`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fkcodcomunaciucom` FOREIGN KEY (`cod_comuna`) REFERENCES `comuna` (`cod_comuna`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

DROP TABLE IF EXISTS `corregimiento`;

CREATE TABLE `corregimiento` (
  `cod_corregimiento` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cod_ciudad` int(10) unsigned NOT NULL,
  `nombre_corregimiento` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `created_corregimiento` TIMESTAMP NOT NULL,
  `updated_corregimiento` TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE NOW(),
  PRIMARY KEY (`cod_corregimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

DROP TABLE IF EXISTS `vereda`;

CREATE TABLE `vereda` (
  `cod_vereda` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cod_corregimiento` int(10) unsigned NOT NULL,
  `nombre_vereda` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `created_vereda` TIMESTAMP NOT NULL,
  `updated_vereda` TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE NOW(),
  PRIMARY KEY (`cod_vereda`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

DROP TABLE IF EXISTS `barrio`;

CREATE TABLE `barrio` (
  `cod_barrio` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cod_corregimiento` int(10) unsigned NULL,
  `cod_comuna` int(10) unsigned NULL,
  `nombre_barrio` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `created_barrio` TIMESTAMP NOT NULL,
  `updated_barrio` TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE NOW(),
  PRIMARY KEY (`cod_barrio`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id_user` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cod_tipo_users` int(10) unsigned NOT NULL,
  `cod_area_formacion` int(10) unsigned NULL,
  `cod_area_conocimiento` int(10) unsigned NULL,
  `nombre_user` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `genero_user` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `ano_user` int(4) unsigned NOT NULL,
  `mes_user` int(2) unsigned NOT NULL,
  `dia_user` int(2) unsigned NOT NULL,
  `documento_user` int(12) unsigned NOT NULL,
  `correo_user` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `pass_user` varchar(128) COLLATE utf8_spanish_ci NOT NULL,
  `salt_user` varchar(128) COLLATE utf8_spanish_ci NOT NULL,
  `confirm_user` varchar(128) COLLATE utf8_spanish_ci NOT NULL,
  `celular_user` varchar(16) COLLATE utf8_spanish_ci NOT NULL,
  `telefono_user` varchar(16) COLLATE utf8_spanish_ci NULL,
  `cod_pais` int(10) unsigned NOT NULL,
  `cod_departamento` int(10) unsigned NOT NULL,
  `cod_ciudad` int(10) unsigned NOT NULL,
  `cod_comuna` int(10) unsigned NULL,
  `cod_corregimiento` int(10) unsigned NULL,
  `cod_vereda` int(10) unsigned NULL,
  `cod_barrio` int(10) unsigned NULL,
  `dirrecion_user` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `created_user` TIMESTAMP NOT NULL,
  `updated_user` TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE NOW(),
  PRIMARY KEY (`id_user`),
  KEY `fkcodtipousersus_tipousers_idx` (`cod_tipo_users`),
  CONSTRAINT `fkcodtipousersus_tipousers` FOREIGN KEY (`cod_tipo_users`) REFERENCES `tipo_users` (`cod_tipo_users`) ON DELETE CASCADE ON UPDATE NO ACTION,
  KEY `fkcoddepartamento_departamento_idx` (`cod_departamento`),
  CONSTRAINT `fkcoddepartamento_departamento` FOREIGN KEY (`cod_departamento`) REFERENCES `departamento` (`cod_departamento`) ON DELETE CASCADE ON UPDATE NO ACTION,
  KEY `fkcodareaformacionus_areaformacion_idx` (`cod_area_formacion`),
  CONSTRAINT `fkcodareaformacionus_areaformacion` FOREIGN KEY (`cod_area_formacion`) REFERENCES `area_formacion` (`cod_area_formacion`) ON DELETE CASCADE ON UPDATE NO ACTION,
  KEY `fkcodareaconocimientous_areaconocimiento_idx` (`cod_area_conocimiento`),
  CONSTRAINT `fkcodareaconocimientous_areaconocimiento` FOREIGN KEY (`cod_area_conocimiento`) REFERENCES `area_conocimiento` (`cod_area_conocimiento`) ON DELETE CASCADE ON UPDATE NO ACTION,
  KEY `fkcodpaisus_pais_idx` (`cod_pais`),
  CONSTRAINT `fkcodpaisus_pais` FOREIGN KEY (`cod_pais`) REFERENCES `pais` (`cod_pais`) ON DELETE CASCADE ON UPDATE NO ACTION,
  KEY `fkcodciudadus_ciudad_idx` (`cod_ciudad`),
  CONSTRAINT `fkcodciudadus_ciudad` FOREIGN KEY (`cod_ciudad`) REFERENCES `ciudad` (`cod_ciudad`) ON DELETE CASCADE ON UPDATE NO ACTION,
  KEY `fkcodcomunaus_comuna_idx` (`cod_comuna`),
  CONSTRAINT `fkcodcomunaus_comuna` FOREIGN KEY (`cod_comuna`) REFERENCES `comuna` (`cod_comuna`) ON DELETE CASCADE ON UPDATE NO ACTION,
  KEY `fkcodcorregimientous_corregimiento_idx` (`cod_corregimiento`),
  CONSTRAINT `fkcodcorregimientous_corregimiento` FOREIGN KEY (`cod_corregimiento`) REFERENCES `corregimiento` (`cod_corregimiento`) ON DELETE CASCADE ON UPDATE NO ACTION,
  KEY `fkcodveredaus_vereda_idx` (`cod_vereda`),
  CONSTRAINT `fkcodveredaus_vereda` FOREIGN KEY (`cod_vereda`) REFERENCES `vereda` (`cod_vereda`) ON DELETE CASCADE ON UPDATE NO ACTION,
  KEY `fkcodbarrious_barrio_idx` (`cod_barrio`),
  CONSTRAINT `fkcodbarrious_barrio` FOREIGN KEY (`cod_barrio`) REFERENCES `barrio` (`cod_barrio`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


DROP TABLE IF EXISTS `proyecto_categorias`;

CREATE TABLE `proyecto_categorias` (
  `cod_proyecto_categorias` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_proyecto_categorias` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `created_proyecto_categorias` TIMESTAMP NOT NULL,
  `updated_proyecto_categorias` TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE NOW(),
  PRIMARY KEY (`cod_proyecto_categorias`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

DROP TABLE IF EXISTS `proyecto_estado`;

CREATE TABLE `proyecto_estado` (
  `cod_proyecto_estado` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_proyecto_estado` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `created_proyecto_estado` TIMESTAMP NOT NULL,
  `updated_proyecto_estado` TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE NOW(),
  PRIMARY KEY (`cod_proyecto_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

DROP TABLE IF EXISTS `idea`;

CREATE TABLE `idea` (
  `cod_idea` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cod_proyecto_categorias` int(10) unsigned NOT NULL,
  `id_user` int(10) unsigned NOT NULL,
  `titulo_idea` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `detalle_idea` text COLLATE utf8_spanish_ci NOT NULL,
  `created_idea` TIMESTAMP NOT NULL,
  `updated_idea` TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE NOW(),
  PRIMARY KEY (`cod_idea`),
  KEY `fkcodproyectocategoriasideas_proyectoscategorias_idx` (`cod_proyecto_categorias`),
  KEY `fkiduserideas_users_idx` (`id_user`),
  CONSTRAINT `fkcodproyectocategoriasideas_proyectoscategorias` FOREIGN KEY (`cod_proyecto_categorias`) REFERENCES `proyecto_categorias` (`cod_proyecto_categorias`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fkiduserideas_users` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

DROP TABLE IF EXISTS `fases_proyecto`;

CREATE TABLE `fases_proyecto` (
  `cod_fases_proyecto` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_fases_proyecto` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `duracion_fases_proyecto` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `created_fases_proyecto` TIMESTAMP NOT NULL,
  `updated_fases_proyecto` TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE NOW(),
  PRIMARY KEY (`cod_fases_proyecto`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

DROP TABLE IF EXISTS `proyecto`;

CREATE TABLE `proyecto` (
  `cod_proyecto` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_proyecto` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `cod_proyecto_categorias` int(10) unsigned NOT NULL,
  `cod_proyecto_estado` int(10) unsigned NOT NULL,
  `cod_fases_proyecto` int(10) unsigned NOT NULL,
  `progreso_proyecto` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `created_proyecto` TIMESTAMP NOT NULL,
  `updated_proyecto` TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE NOW(),
  PRIMARY KEY (`cod_proyecto`),
  KEY `fkcodproyectocategoriasproyecto_proyectocategorias_idx` (`cod_proyecto_categorias`),
  KEY `fkcodproyectoestadoproyecto_proyectoestado_idx` (`cod_proyecto_estado`),
  KEY `fkcodfasesproyectoproyecto_fasesproyecto_idx` (`cod_fases_proyecto`),
  CONSTRAINT `fkcodproyectocategoriasproyecto_proyectocategorias` FOREIGN KEY (`cod_proyecto_categorias`) REFERENCES `proyecto_categorias` (`cod_proyecto_categorias`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fkcodproyectoestadoproyecto_proyectoestado` FOREIGN KEY (`cod_proyecto_estado`) REFERENCES `proyecto_estado` (`cod_proyecto_estado`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fkcodfasesproyectoproyecto_fasesproyecto` FOREIGN KEY (`cod_fases_proyecto`) REFERENCES `fases_proyecto` (`cod_fases_proyecto`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

DROP TABLE IF EXISTS `categorias_clases`;

CREATE TABLE `categorias_clases` (
  `cod_clases_categoria` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombreclases_categoria` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `created_clases_categoria` TIMESTAMP NOT NULL,
  `updated_clases_categoria` TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE NOW(),
  PRIMARY KEY (`cod_clases_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

DROP TABLE IF EXISTS `clases`;

CREATE TABLE `clases` (
  `cod_clases` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_clases` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `cod_clases_categoria` int(10) unsigned NOT NULL,
  `created_clases` TIMESTAMP NOT NULL,
  `updated_clases` TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE NOW(),
  PRIMARY KEY (`cod_clases`),
  KEY `fkcodclasescategoriaclases_clasescategoria_idx` (`cod_clases_categoria`),
  CONSTRAINT `fkcodclasescategoriaclases_clasescategoria` FOREIGN KEY (`cod_clases_categoria`) REFERENCES `categorias_clases` (`cod_clases_categoria`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

DROP TABLE IF EXISTS `clases_proyecto`;

CREATE TABLE `clases_proyecto` (
  `cod_clases_proyecto` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cod_proyecto` int(10) unsigned NOT NULL,
  `cod_clases` int(10) unsigned NOT NULL,
  `created_clases_proyecto` TIMESTAMP NOT NULL,
  `updated_clases_proyecto` TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE NOW(),
  PRIMARY KEY (`cod_clases_proyecto`),
  KEY `fkcodproyectoclasesproyecto_proyecto_idx` (`cod_proyecto`),
  KEY `fkcodclasesclasesproyecto_clases_idx` (`cod_clases`),
  CONSTRAINT `fkcodproyectoclasesproyecto_proyecto` FOREIGN KEY (`cod_proyecto`) REFERENCES `proyecto` (`cod_proyecto`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fkcodclasesclasesproyecto_clases` FOREIGN KEY (`cod_clases`) REFERENCES `clases` (`cod_clases`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

DROP TABLE IF EXISTS `proyecto_users`;

CREATE TABLE `proyecto_users` (
  `cod_proyecto_users` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cod_proyecto` int(10) unsigned NOT NULL,
  `id_user` int(10) unsigned NOT NULL,
  `created_proyecto_users` TIMESTAMP NOT NULL,
  `updated_proyecto_users` TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE NOW(),
  PRIMARY KEY (`cod_proyecto_users`),
  KEY `fkcodproyectoproyectousers_proyecto_idx` (`cod_proyecto`),
  KEY `fkiduserproyectousers_users_idx` (`id_user`),
  CONSTRAINT `fkcodproyectoproyectousers_proyecto` FOREIGN KEY (`cod_proyecto`) REFERENCES `proyecto` (`cod_proyecto`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fkiduserproyectousers_users` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

DROP TABLE IF EXISTS `descripcion_proyecto`;

CREATE TABLE `descripcion_proyecto` (
  `cod_descripcion_proyecto` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cod_proyecto` int(10) unsigned NOT NULL,
  `detalle_descripcion_proyecto` text COLLATE utf8_spanish_ci NOT NULL,
  `created_descripcion_proyecto` TIMESTAMP NOT NULL,
  `updated_descripcion_proyecto` TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE NOW(),
  PRIMARY KEY (`cod_descripcion_proyecto`),
  KEY `fkcodproyectodescripcionproyecto_proyecto_idx` (`cod_proyecto`),
  CONSTRAINT `fkcodproyectodescripcionproyecto_proyecto` FOREIGN KEY (`cod_proyecto`) REFERENCES `proyecto` (`cod_proyecto`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

DROP TABLE IF EXISTS `subdominio`;

CREATE TABLE `subdominio` (
  `cod_subdominio` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cod_proyecto` int(10) unsigned NOT NULL,
  `url_subdominio` text COLLATE utf8_spanish_ci NOT NULL,
  `created_subdominio` TIMESTAMP NOT NULL,
  `updated_subdominio` TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE NOW(),
  PRIMARY KEY (`cod_subdominio`),
  KEY `fkcodproyectosubdominio_proyecto_idx` (`cod_proyecto`),
  CONSTRAINT `fkcodproyectosubdominio_proyecto` FOREIGN KEY (`cod_proyecto`) REFERENCES `proyecto` (`cod_proyecto`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

DROP TABLE IF EXISTS `categorias_definiciones`;

CREATE TABLE `categorias_definiciones` (
  `cod_categorias_definiciones` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_categorias_definiciones` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `created_categorias_definiciones` TIMESTAMP NOT NULL,
  `updated_categorias_definiciones` TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE NOW(),
  PRIMARY KEY (`cod_categorias_definiciones`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

DROP TABLE IF EXISTS `definiciones`;

CREATE TABLE `definiciones` (
  `cod_definiciones` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cod_categorias_definiciones` int(10) unsigned NOT NULL,
  `detalles_definiciones` text COLLATE utf8_spanish_ci NOT NULL,
  `created_definiciones` TIMESTAMP NOT NULL,
  `updated_definiciones` TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE NOW(),
  PRIMARY KEY (`cod_definiciones`),
  KEY `fkcodcategoriasdefinicionesdefi_categoriasdefiniciones_idx` (`cod_categorias_definiciones`),
  CONSTRAINT `fkcodcategoriasdefinicionesdefi_categoriasdefiniciones` FOREIGN KEY (`cod_categorias_definiciones`) REFERENCES `categorias_definiciones` (`cod_categorias_definiciones`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

DROP TABLE IF EXISTS `terminos`;

CREATE TABLE `terminos` (
  `cod_terminos` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cod_definiciones` int(10) unsigned NOT NULL,
  `nombre_terminos` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `created_terminos` TIMESTAMP NOT NULL,
  `updated_terminos` TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE NOW(),
  PRIMARY KEY (`cod_terminos`),
  KEY `fkcoddefinicionesterminos_definiciones_idx` (`cod_definiciones`),
  CONSTRAINT `fkcoddefinicionesterminos_definiciones` FOREIGN KEY (`cod_definiciones`) REFERENCES `definiciones` (`cod_definiciones`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

DROP TABLE IF EXISTS `foro`;

CREATE TABLE `foro` (
  `cod_foro` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cod_proyecto` int(10) unsigned NOT NULL,
  `id_user` int(10) unsigned NOT NULL,
  `nombre_foro` text COLLATE utf8_spanish_ci NOT NULL,
  `created_foro` TIMESTAMP NOT NULL,
  `updated_foro` TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE NOW(),
  PRIMARY KEY (`cod_foro`),
  KEY `fkcodproyectoforo_proyecto_idx` (`cod_proyecto`),
  KEY `fkiduserforo_users_idx` (`id_user`),
  CONSTRAINT `fkcodproyectoforo_proyecto` FOREIGN KEY (`cod_proyecto`) REFERENCES `proyecto` (`cod_proyecto`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fkiduserforo_users` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

DROP TABLE IF EXISTS `preguntas_foro`;

CREATE TABLE `preguntas_foro` (
  `cod_preguntas_foro` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cod_foro` int(10) unsigned NOT NULL,
  `id_user` int(10) unsigned NOT NULL,
  `deta_preguntas_foro` text COLLATE utf8_spanish_ci NOT NULL,
  `created_preguntas_foro` TIMESTAMP NOT NULL,
  `updated_preguntas_foro` TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE NOW(),
  PRIMARY KEY (`cod_preguntas_foro`),
  KEY `fkcodforopreguntasforo_foro_idx` (`cod_foro`),
  KEY `fkiduserpreguntasforo_users_idx` (`id_user`),
  CONSTRAINT `fkcodforopreguntasforo_foro` FOREIGN KEY (`cod_foro`) REFERENCES `foro` (`cod_foro`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fkiduserpreguntasforo_users` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

DROP TABLE IF EXISTS `categorias_imagenes`;

CREATE TABLE `categorias_imagenes` (
  `cod_categorias_imagenes` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_categorias_imagenes` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `created_categorias_imagenes` TIMESTAMP NOT NULL,
  `updated_categorias_imagenes` TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE NOW(),
  PRIMARY KEY (`cod_categorias_imagenes`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

DROP TABLE IF EXISTS `imagenes`;

CREATE TABLE `imagenes` (
  `cod_imagenes` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_imagenes` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `id_user` int(10) unsigned NULL,
  `cod_proyecto` int(10) unsigned NULL,
  `cod_idea` int(10) unsigned NULL,
  `cod_categorias_imagenes` int(10) unsigned NOT NULL,
  `created_imagenes` TIMESTAMP NOT NULL,
  `updated_imagenes` TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE NOW(),
  PRIMARY KEY (`cod_imagenes`),
  KEY `fkcodproyectoimagenes_proyecto_idx` (`cod_proyecto`),
  KEY `fkiduserimagenes_users_idx` (`id_user`),
  KEY `fkcodideaimagenes_idea_idx` (`cod_idea`),
  KEY `fkcodcategoriasimagenesimagenes_categoriasimagenes_idx` (`cod_categorias_imagenes`),
  CONSTRAINT `fkcodproyectoimagenes_proyecto` FOREIGN KEY (`cod_proyecto`) REFERENCES `proyecto` (`cod_proyecto`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fkiduserimagenes_users` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fkcodideaimagenes_idea` FOREIGN KEY (`cod_idea`) REFERENCES `idea` (`cod_idea`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fkcodcategoriasimagenesimagenes_categoriasimagenes` FOREIGN KEY (`cod_categorias_imagenes`) REFERENCES `categorias_imagenes` (`cod_categorias_imagenes`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

