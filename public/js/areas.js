$('#zona').change(function(event){
	var cambiar = $(this).val();

	if(cambiar == 'urbana'){
		$('#barrio').css('display','block');
		$('#vereda').css('display','none');
		$('#labarrio').css('display','block');
		$('#lavereda').css('display','none');

	}else if (cambiar == 'rural'){
		$('#barrio').css('display','none');
		$('#vereda').css('display','block');
		$('#lavereda').css('display','block');
		$('#labarrio').css('display','none');
	}else if (cambiar == 'seleccionar'){
		$('#barrio').css('display','none');
		$('#vereda').css('display','none');
		$('#lavereda').css('display','none');
		$('#labarrio').css('display','none');
}

});