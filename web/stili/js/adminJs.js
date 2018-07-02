
function validate(){
    debugger;
    var email = document.forms["loginForm"]["email"].value;
    var password = document.forms["loginForm"]["password"].value;
    if (password == "" || email == ""){
        alert("Inserisci le credenziali");
    } else {
        $.get("AccediServlet?Email="+email+"&Password="+password, function (responseJson){
            var risposta = responseText;
            if (risposta==0){
                alert("credenziali errate")
            } else {
                alert("chiappe")
            }

        }

        )
    }

}