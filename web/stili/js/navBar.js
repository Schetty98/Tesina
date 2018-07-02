
window.onscroll = function () {scrollbar()};

var homeBar = document.getElementById("homeBar");
var sticky = homeBar.offsetTop;

function scrollbar() {
    if (window.pageYOffset>=sticky){
        homeBar.classList.add("sticky");
        document.getElementById("topButton").style.display = "block"}
        else
            {
            homeBar.classList.remove("sticky");
            document.getElementById("topButton").style.display = "none"
        }

}

function goTop(){

    $('html,body').animate({
        scrollTop: $('.header').offset().top
    },'slow');
    menuEvidence('Top');

}

function clickedButton(clicked){
    debugger;
    if(clicked.includes(".")){
        $('html,body').animate({
            scrollTop: $(clicked).offset().top
        },'slow');
    }

    switch (clicked){

        default:
            menuEvidence(clicked);
            break;

        case ".textPresentazione":
            menuEvidence('Presentazione');
            break;

        case '.textItaliano':
            menuEvidence('Italiano');
            break;

        case '.textInglese':
            menuEvidence('Inglese');
            break;

        case '.textStoria':
            menuEvidence('Storia');
            break;

        case '.textSistemi':
            menuEvidence('Sistemi');
            break;

        case '.textTPSI':
            menuEvidence('TPSI');
            break;

        case '.textInformatica':
            menuEvidence('Informatica');
            break;
    }

}



function menuEvidence(toEvidence){
    var HTMLcollection=document.getElementsByClassName("active");
    var prevEvidence= HTMLcollection.item(HTMLcollection.length-1);
    if(toEvidence=="Top"){
        prevEvidence.className="unactive";
    } else {
        var evidence=document.getElementById(toEvidence+"Bar");
        if(evidence==prevEvidence){

        } else {
            evidence.className="active";
            prevEvidence.className="unactive";
        }
    }




}

/*
*
* function loadData() {
    $.get("../GetMaterieServlet?materia=no", function (responseJson){
        $.each(responseJson, function(index, item) {
            var materia = item.materia.toLowerCase();
            if(materia!="presentazione"){
                document.getElementById(materia+"Titolo").innerHTML=item.argomento;
            }

            document.getElementById(materia+"Testo").innerHTML=item.testo;
        });
    })

}
* */



