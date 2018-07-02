

function submitData() {
    var materia = document.getElementById("Materia").textContent;
    var testoForm = document.getElementById("res").textContent;
    $.get("../SaveTextServlet?materia="+materia+"&testo="+testoForm, function (responseJson){
        viewEditor('close');
        getMateria(materia)
    })
}

function chargeData() {
    viewEditor('show');
    var editor =  document.getElementById("editor");
    var materia = document.getElementById("Materia").textContent;
    $.get("../GetMaterieServlet?materia="+materia, function (responseJson){
        editor.innerHTML="";
        var testo = responseJson.testo;
        editor.append(testo);

})}


function addHTML(tag) {
    var selection = window.getSelection();
    var range = selection.getRangeAt(0);
    var strong = document.createElement(tag);
    range.surroundContents(strong);
    $("#editor").focus()
};var index;
var a = ["a", "b", "c"];
for (index = 0; index < a.length; ++index) {
    console.log(a[index]);
}
function image() {
    var url=prompt("inserisci un immagine");
    document.execCommand('insertImage', false, url)
}
$(document).on('keyup',function(){$('#res').text($('#editor').html())})
$(document).on('click',function(){$('#res').text($('#editor').html())})
$(".panel-default .panel-heading .btn-group .btn").on('click',function(){$('#res').text($('#editor').html())})