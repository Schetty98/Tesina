package it.schetty.tesina.servlet;

import com.google.gson.Gson;
import it.schetty.tesina.dao.DaoAccesso;
import it.schetty.tesina.model.AccountAdmin;

import java.io.IOException;

public class AccediServet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        processResquest(request,response);
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        processResquest(request,response);
    }
    static DaoAccesso dao = new DaoAccesso();

    protected void processResquest(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws IOException {

        AccountAdmin accountAdmin = new AccountAdmin(
                request.getParameter("email"),
                request.getParameter("password")
        );

        if(!dao.accedi(accountAdmin)){
            response.sendRedirect("modifica.jsp?errore=1");
        } else {

            response.sendRedirect("/modificaMaterie/menuEditor.jsp");
        }


    }
}
