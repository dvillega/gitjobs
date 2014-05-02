/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package org.me.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.me.skill.KnowledgeSkill;

/**
 *
 * @author christianlevi
 */
@WebServlet(name = "MilitaryTranslator", urlPatterns = {"/Translator/translateSkills"})
public class MilitaryTranslator extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet MilitaryTranslator</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet MilitaryTranslator at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        /* 
         * Get user data fro submited form
         */
        String military = request.getParameter("militaryBranch");
        String code = request.getParameter("militaryCode");
        List<KnowledgeSkill> result = null;
        if(isValidBranch(military)){
//            MilitaryTranslation_Service service = new MilitaryTranslation_Service();
//            MilitaryTranslation port = service.getMilitaryTranslationPort();
//            result = port.getMilitarySkillCivilianTranslation(military, code);
        }else{
            String err = "Incorrect Branch '" + military + "' Given";
        }
        
        HttpSession session = request.getSession(true);
        session.setAttribute("skills", result);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/translatedSkills.jsp");
        dispatcher.forward( request, response);
    }
        
    private boolean isValidBranch(String military){
        return (military.equalsIgnoreCase("army") || military.equalsIgnoreCase("navy") ||
           military.equalsIgnoreCase("marines") || military.equalsIgnoreCase("air force"));
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
