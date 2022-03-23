/**
 * validação de formulário
@author Wyslan Alves
 */

function validar(){
	let nome = frmContato.nome.value
	let fone = frmContato.fone.value
	
	if(nome === ""){
		alert("Preencha o Campo Nome");
		frmContatos.nome.focus();
		return false;
	}else if(fone === ""){
		alert("Preencha o Campo Fone");
		frmContatos.fone.focus();
		return false;
	}else{
		document.forms["frmContato"].submit();
	}
	
}
