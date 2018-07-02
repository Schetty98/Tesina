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
import java.util.List;
import java.util.Map;

@WebServlet(name = "GetMaterieServlet")
public class GetMaterieServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void processRequest (HttpServletRequest request, HttpServletResponse response){
        String esito = "";
        Gson gson = new Gson();
        Materie materie = new Materie();
        materie.setMateria(request.getParameter("materia"));

        if (materie.getMateria().equals("no")){
            List<Materie> materieList = DaoMaterie.getMaterie();
            esito = gson.toJson(materieList);

        } else {

            Materie materieComplete = DaoMaterie.getTesto(materie);
            if (materieComplete.getArgomento() == null || materieComplete.getTesto() == null){
                System.err.println("errore");
                esito = gson.toJson("errore");

            }
            else {

                esito = gson.toJson(materie);
            }
        }



        try {
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(esito);
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
