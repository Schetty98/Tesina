package it.schetty.tesina.model;

public class AccountAdmin {

    public AccountAdmin(String email, String password){
        setEmail(email);
        setPassword(password);
    }

    public AccountAdmin(){

    }



    private String email;
    private String password;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
