package it.schetty.tesina.servlet;

import com.google.gson.Gson;
import it.schetty.tesina.dao.DaoMaterie;
import it.schetty.tesina.model.Materie;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
public class SaveTextServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest (request, response);
    }



    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest (request, response);
    }

    private void processRequest(HttpServletRequest request, HttpServletResponse response) {
        Materie materie = new Materie();
        Gson gson = new Gson();
        materie.setMateria(request.getParameter("materia"));
        materie.setTesto(request.getParameter("testo"));
        boolean esito = DaoMaterie.setTesto(materie);

        try {
            String json = gson.toJson(esito);
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(json);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
