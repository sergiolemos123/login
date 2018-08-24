<?php

class user{

private	$id_users;
private	$cod_tipo_users;
private	$cod_area_formacion;
private	$cod_area_conocimiento;
private	$nombre_users;
private	$genero_users;
private	$anio_nac_users;
private	$mes_nac_users;
private	$dia_nac_users;
private	$documento_users;
private	$cod_tipo_documento;
private	$correo_users;
private	$pass_users,
private	$salt_users;
private	$confirmar_users;
private	$celular_users;
private	$telefono_users;
private	$cod_pais;
private	$cod_departamento;
private	$cod_ciudad;
private	$cod_comuna;
private	$cod_barrio;
private	$cod_corregimiento;
private	$cod_vereda;
private	$direccion_users;
private	$created_at;
private	$updated_at;

}

	public function getId_users(){
		return $this->id_users;
	}

	public function setId_users($id_users){
		$this->id_users = $id_users;
	}

	public function getCod_tipo_users(){
		return $this->cod_tipo_users;
	}

	public function setCod_tipo_users($cod_tipo_users){
		$this->cod_tipo_users = $cod_tipo_users;
	}

	public function getCod_area_formacion(){
		return $this->cod_area_formacion;
	}

	public function setCod_area_formacion($cod_area_formacion){
		$this->cod_area_formacion = $cod_area_formacion;
	}

	public function getCod_area_conocimiento(){
		return $this->cod_area_conocimiento;
	}

	public function setCod_area_conocimiento($cod_area_conocimiento){
		$this->cod_area_conocimiento = $cod_area_conocimiento;
	}

	public function getNombre_users(){
		return $this->nombre_users;
	}

	public function setNombre_users($nombre_users){
		$this->nombre_users = $nombre_users;
	}

	public function getGenero_users(){
		return $this->genero_users;
	}

	public function setGenero_users($genero_users){
		$this->genero_users = $genero_users;
	}

	public function getAnio_nac_users(){
		return $this->anio_nac_users;
	}

	public function setAnio_nac_users($anio_nac_users){
		$this->anio_nac_users = $anio_nac_users;
	}

	public function getMes_nac_users(){
		return $this->mes_nac_users;
	}

	public function setMes_nac_users($mes_nac_users){
		$this->mes_nac_users = $mes_nac_users;
	}

	public function getDia_nac_users(){
		return $this->dia_nac_users;
	}

	public function setDia_nac_users($dia_nac_users){
		$this->dia_nac_users = $dia_nac_users;
	}

	public function getDocumento_users(){
		return $this->documento_users;
	}

	public function setDocumento_users($documento_users){
		$this->documento_users = $documento_users;
	}

	public function getCod_tipo_documento(){
		return $this->cod_tipo_documento;
	}

	public function setCod_tipo_documento($cod_tipo_documento){
		$this->cod_tipo_documento = $cod_tipo_documento;
	}

	public function getCorreo_users(){
		return $this->correo_users;
	}

	public function setCorreo_users($correo_users){
		$this->correo_users = $correo_users;
	}

	public function getSalt_users(){
		return $this->salt_users;
	}

	public function setSalt_users($salt_users){
		$this->salt_users = $salt_users;
	}

	public function getConfirmar_users(){
		return $this->confirmar_users;
	}

	public function setConfirmar_users($confirmar_users){
		$this->confirmar_users = $confirmar_users;
	}

	public function getCelular_users(){
		return $this->celular_users;
	}

	public function setCelular_users($celular_users){
		$this->celular_users = $celular_users;
	}

	public function getTelefono_users(){
		return $this->telefono_users;
	}

	public function setTelefono_users($telefono_users){
		$this->telefono_users = $telefono_users;
	}

	public function getCod_pais(){
		return $this->cod_pais;
	}

	public function setCod_pais($cod_pais){
		$this->cod_pais = $cod_pais;
	}

	public function getCod_departamento(){
		return $this->cod_departamento;
	}

	public function setCod_departamento($cod_departamento){
		$this->cod_departamento = $cod_departamento;
	}

	public function getCod_ciudad(){
		return $this->cod_ciudad;
	}

	public function setCod_ciudad($cod_ciudad){
		$this->cod_ciudad = $cod_ciudad;
	}

	public function getCod_comuna(){
		return $this->cod_comuna;
	}

	public function setCod_comuna($cod_comuna){
		$this->cod_comuna = $cod_comuna;
	}

	public function getCod_barrio(){
		return $this->cod_barrio;
	}

	public function setCod_barrio($cod_barrio){
		$this->cod_barrio = $cod_barrio;
	}

	public function getCod_corregimiento(){
		return $this->cod_corregimiento;
	}

	public function setCod_corregimiento($cod_corregimiento){
		$this->cod_corregimiento = $cod_corregimiento;
	}

	public function getCod_vereda(){
		return $this->cod_vereda;
	}

	public function setCod_vereda($cod_vereda){
		$this->cod_vereda = $cod_vereda;
	}

	public function getDireccion_users(){
		return $this->direccion_users;
	}

	public function setDireccion_users($direccion_users){
		$this->direccion_users = $direccion_users;
	}

	public function getCreated_at(){
		return $this->created_at;
	}

	public function setCreated_at($created_at){
		$this->created_at = $created_at;
	}

	public function getUpdated_at(){
		return $this->updated_at;
	}

	public function setUpdated_at($updated_at){
		$this->updated_at = $updated_at;
	}