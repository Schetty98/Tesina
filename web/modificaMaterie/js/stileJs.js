
function getMateria(materia){
    $.get("../GetMaterieServlet?materia="+materia, function (responseJson){

        if(responseJson!="errore"){
            document.getElementById("Text").style.display="block"
            document.getElementById("Materia").innerHTML="";
            document.getElementById("Argomento").innerHTML="";
            document.getElementById("Testo").innerHTML="";
            var materia = responseJson.materia.toUpperCase();
            var argomento = responseJson.argomento;
            var testo = responseJson.testo;
            document.getElementById("Materia").innerHTML=materia;
            document.getElementById("Argomento").innerHTML=argomento;
            document.getElementById("Testo").innerHTML=testo;
        }else{
            alert("errore nell'esecuzione!!!")
        }
    })
}

function viewEditor(action) {
    var modal = document.getElementById("modal");
    if(action=="show"){
        modal.style.display = 'block';
    } else if (action=="close"){
        modal.style.display = 'none';
    }
}
