/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "WelcomeServlet", urlPatterns = {"/WelcomeServlet"})
public class WelcomeServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        HttpSession session = request.getSession();
        
        String checkId = request.getParameter("cityId");
        
        //request.getRequestDispatcher("WEB-INF/index.jsp").forward(request, response);
        
        if(checkId==null){
            
            request.getRequestDispatcher("WEB-INF/index.jsp").forward(request, response);
        }
        else{
            int cityId = Integer.parseInt(request.getParameter("cityId"));
            
            
            session.setAttribute("cityId", cityId);        
                
         String location = "";
         String when = "";
         String consign= "";
         String buy = "";
         String donate= "";
         String className= "";
      
        
        
        //send location information to the location page. 
        //Hard code the event information here, also hard code in the location servlet as well
        
        //If the city is Calgary (1)
        if(cityId == 1){
            location = "Sunridge Mall (NE Corner between AHS and HBC) at 2525 36 St NE";
            when = "May 7 & May 8, 2022";
            consign = "May 7 0800-1600";
            buy = "May 8 0900-1400";
            donate = "May 7 0800-1600";
            className = "YYC";
            
        }
        //If the city is Lethbridge (2)
        else if(cityId == 2){
            location = "Lethbridge Exhibition Park North Pavilion 3401 Parkside Drive South";
            when = "April 30, 2022";
            consign = "0900-1400";
            buy = "1430-1600";
            donate = "0900-1600";
            className = "YQL";
            
        }
        //If the city is Edmonton (3)
        else {
            location = "MacEwan University - City Centre 107 Street Underground Parkade";
            when = "May 14, 2022";
            consign = "May 14, 2022 0800-1400";
            buy = "May 14, 2022 1430-1600";
            donate = "May 14, 2022";
            className ="YEG";

          };
        
        session.setAttribute("location", location);  
        session.setAttribute("when", when);  
        session.setAttribute("consign", consign);  
        session.setAttribute("buy", buy);  
        session.setAttribute("donate", donate);  
        session.setAttribute("className", className);
               
        request.getRequestDispatcher("/WEB-INF/locations.jsp").forward(request, response);
        }
                
        
        
        
        
        
       
        
        
        
        
        
        
        
        
        
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
