/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Bike;
import services.BikeLoader;
import services.Partition;

/**
 * BikeInfoServlet,a servlet which controls BikeInfoPage.jsp content display, including
 * filter control, Json loading, and inventory content
 *
 * @author april wan
 */

@WebServlet(name = "BikeInfoServlet", urlPatterns = {"/BikeInventory"})
public class BikeInfoServlet extends HttpServlet {

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
        
        
         //Variables
        String emptyjson = "";
        String minPrice = request.getParameter("minPrice");
        String maxPrice = request.getParameter("maxPrice");
        String bikeMake = request.getParameter("bikeMake"); //Brand Name
        String bikeModel = request.getParameter("bikeModel");
        String bikeSize = request.getParameter("bikeSize");
        String nextPage = request.getParameter("nextPage");
        String prePage = request.getParameter("prePage");
        
        
        List<Bike> asList = new ArrayList();

        // Load bike json infomation into List      
        BikeLoader loader = new BikeLoader();
        List<Bike> bikeList = loader.readJSON();

        //Start session attribute
        HttpSession session = request.getSession();
        
        //Page control, nextPage
        if (nextPage != null && !nextPage.equals("")) {
            Object pageTemp = session.getAttribute("pageTotal");
            int pageTotal = (Integer)pageTemp; 
            String currentPage = request.getParameter("currentPage");
            int next = Integer.parseInt(currentPage) ;
            next++;

            //Make sure the page does not go beyond the Bike Sublist
            if(pageTotal>= next ){
                Object temp = session.getAttribute("finalList");
                List<Bike> page = (List<Bike>) ((List<Bike>) temp).get(next);
                
                if(pageTotal== next){
                    request.setAttribute("listMessage", "End of the search result");
                }
            
                request.setAttribute("currentPage", String.valueOf(next));
                session.setAttribute("emptyjson", "false");
                session.setAttribute("bikes", page);
                
            }
            else { 
                next--;
                Object temp = session.getAttribute("finalList");
                List<Bike> page = (List<Bike>) ((List<Bike>) temp).get(next);
            
                session.setAttribute("emptyjson", "false");
                session.setAttribute("bikes", page);
                request.setAttribute("currentPage", String.valueOf(next));
                request.setAttribute("listMessage", "End of the search result");
                
            }
            
           
        }//Page control, prePage 
        else if (prePage != null && !prePage.equals("")) {
            Object pageTemp = session.getAttribute("pageTotal");
            int pageTotal = (Integer)pageTemp; 
            String currentPage = request.getParameter("currentPage");
            int next = Integer.parseInt(currentPage) ;
            next--;
            
             //Make sure the page does not go less than 0
            if(next>=0){
                Object temp = session.getAttribute("finalList");
                List<Bike> page = (List<Bike>) ((List<Bike>) temp).get(next);

                request.setAttribute("currentPage", String.valueOf(next));
                session.setAttribute("emptyjson", "false");
                session.setAttribute("bikes", page);
                
            }
            else{
                next++;
                Object temp = session.getAttribute("finalList");
                List<Bike> page = (List<Bike>) ((List<Bike>) temp).get(next);

                request.setAttribute("currentPage", String.valueOf(next));
                session.setAttribute("emptyjson", "false");
                session.setAttribute("bikes", page);
                
            }
            

            
            
            
        } //Page control, simple search or first load
        else {
            // If the json file is empty
            if (bikeList.isEmpty()) {
                emptyjson = "true";
                session.setAttribute("emptyjson", emptyjson);
                session.setAttribute("bikemessage", "Not Bike instock. Please con back during the event.");
                
            } 
            //If the json file is not empty
            else {
                emptyjson = "false";

                List<Bike> filterList = bikeList;

                //Price Filter handler
                if (maxPrice != null && minPrice != null && !maxPrice.equals("") && !minPrice.equals("")) {
                    double min = Double.parseDouble(minPrice);
                    double max = Double.parseDouble(maxPrice);
                    filterList = loader.filterPrice(filterList, min, max);
                }

                //Brand Filter handler
                if (bikeMake != null && !bikeMake.equals("") && filterList.size() != 0) {
                    filterList = loader.filterBrand(filterList, bikeMake);
                }

                //Model Filter handler
                if (bikeModel != null && !bikeModel.equals("") && filterList.size() != 0) {
                    filterList = loader.filterModel(filterList, bikeModel);
                }

                //Model Size handler
                if (bikeSize != null && !bikeSize.equals("") && filterList.size() != 0) {
                    filterList = loader.filterSize(filterList, bikeSize);
                }

                //Double check if the filter list get empty (no match) after filtering
                if (filterList.size() != 0) {
                    asList = filterList;
                } else {
                    emptyjson = "ture";
                    request.setAttribute("message", "no bike match");
                }

                final List<Bike> pageBreak = asList;
                // 6 items per page, number of item can be changed
                List<List<Bike>> pageArrange = (Partition.ofSize(pageBreak, 6)); 
                
                //make sure total pages that will wrap up all items while displaying 6 items, double must be ceil
                //If the # in Partition.ofSize(pageBreak, #)) changed, the divisor also needed to be change
                double pageMath = Math.ceil(asList.size() / 6.0);  
                int pageTotal = ((int) pageMath)-1;// page start from 0

                int currentPage = 0;

                List<Bike> page = pageArrange.get(currentPage);

                session.setAttribute("pageTotal", pageTotal);
                session.setAttribute("finalList", pageArrange);
                session.setAttribute("emptyjson", emptyjson);
                request.setAttribute("bikes", page);
                request.setAttribute("currentPage", currentPage);
            }
        }
        request.getRequestDispatcher("WEB-INF/BikeInfoPage.jsp").forward(request, response);
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
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
