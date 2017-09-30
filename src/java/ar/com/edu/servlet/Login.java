/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ar.com.edu.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author educacionit
 */
@WebServlet(name="lg", urlPatterns="/login")
public class Login extends HttpServlet{
    
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
        String usuario = request.getParameter("usu");
        String pass = request.getParameter("pass");
        PrintWriter out = response.getWriter();
        if(usuario.equals("coco")&&pass.equals("123")){
            out.println("usuario correcto");            
        }else{
            out.println("usuario incorrecto");
        }
        out.close();
    }
    
}
