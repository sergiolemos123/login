<?php

class conexion {
	
	public static function conectar(){
		try{

			$cn = new PDO("mysql:host=localhost;dbname=scriptwebDB", "root", "");

			return $cn;

		}catch (Excepcion $ex) {
			die($ex->getMessage());
		}


	}

}

