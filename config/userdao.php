<?php

include 'conexion.php';
include '../models/user.php'

class usersdao extends conexion
{
	protected	static $cnx;

	private static function getconexion()

	{
		self::$cnx = conexion::conectar();
	}

	private static function desconectar()
	{
		self::$cnx = null;
	}

public static function login($user)
{
	$query = ("SELECT *
			  FROM users
			  WHERE email_user = :email_user");

			self::getconexion();

			$email_user = $user->getemail_user();

			$resultado = self::$cnx->prepare($query);
			$resultado->bindparam(":email_user", $email_user);

			$resultado->execute();

			$row = 	$resultado->fetch(PDO::FETCH_ASSOC);

			if(	password_verify('james1010', $row['pass_user']) ){
				return true;
			} else{
				echo "password o email invalido";
			}


	}

}