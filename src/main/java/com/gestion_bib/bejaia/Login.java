package com.gestion_bib.bejaia;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

       
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uemail = request.getParameter("email");
		String upwd = request.getParameter("mdp");
		String roleValue = request.getParameter("role");
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Gestion_Bib","root","dbPasswordqiven");
			PreparedStatement pst = con.prepareStatement("select * from Utilisateurs where email= ? and mdp = ? and role= ?");
			pst.setString(1, uemail);
			pst.setString(2, upwd);
			pst.setString(3, roleValue);
			
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				
				String userRole = rs.getString("role");
				// Vérifier le rôle et rediriger en conséquence
                if ("gestionnaire".equals(userRole)) {
                	session.setAttribute("name", rs.getString("nom"));
                    dispatcher = request.getRequestDispatcher("gestionnaire.jsp");
                } else if ("abonnee".equals(userRole)) {
                	session.setAttribute("name", rs.getString("nom"));
                    dispatcher = request.getRequestDispatcher("abonnee.jsp");
                } else if ("bibliothecaire".equals(userRole)) {
                	session.setAttribute("name", rs.getString("nom"));
                    dispatcher = request.getRequestDispatcher("bibliothecaire.jsp");
                }} else {
				request.setAttribute("status", "failed");
				dispatcher = request.getRequestDispatcher("Login.jsp");
			}
			
			dispatcher.forward(request, response);
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		
	}

}
