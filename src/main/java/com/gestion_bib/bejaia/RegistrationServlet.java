package com.gestion_bib.bejaia;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.gestion_bib.bejaia.RegistrationServlet.Role;

/**
 * Servlet implementation class RegistrationServlet
 */

	@WebServlet("/RegistrationServlet")
	public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public enum Role {
		bibliothecaire,
		gestionnaire,
		abonnee
	}

	    

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			   String unom = request.getParameter("nom");
			   String uprenom = request.getParameter("prenom");
			   String uemail = request.getParameter("email");
			   String umdp = request.getParameter("mdp");
			   String roleValue = request.getParameter("role");
			   Role role = null;
			   
			    if (roleValue != null && !roleValue.isEmpty()) {
			        switch (roleValue) {
			            case "bibliothecaire":
			                role = Role.bibliothecaire;
			                break;
			            case "gestionnaire":
			                role = Role.gestionnaire;
			                break;
			            case "abonnee":
			                role = Role.abonnee;
			                break;
			            default:
			                // Gérer les autres cas si nécessaire
			                break;
			        }
			    }
			

			RequestDispatcher   dispatcher = null;
			Connection con = null;
			 
			   
			   
			   try {
				   Class.forName("com.mysql.cj.jdbc.Driver");
				    con =DriverManager.getConnection("jdbc:mysql://localhost:3306/Gestion_Bib","root","dbPasswordqiven");
				   PreparedStatement pst = con.prepareStatement("insert into utilisateurs(nom,prenom,  email , mdp,role) values(?,?,?,?,?)" );
				  pst.setString(1, unom);
				  pst.setString(2,uprenom);
				  pst.setString(3,uemail);
				  pst.setString(4,umdp);
				  
				  
			        if (role != null) {
			            pst.setString(5, role.name()); // Utilisation de l'enumération Role
			        } else {
			            // Gérer le cas où le rôle n'est pas défini
			            pst.setString(5, null); // Ou une valeur par défaut dans la base de données
			        }

				  
				  
				  int rowCount = pst.executeUpdate();
				  
				  dispatcher  = request.getRequestDispatcher("Registration.jsp");
				  if(rowCount  > 0) {
					  request.setAttribute("status", "success");
					  
		   
					  
				  }else {
					  request.setAttribute("status", "failed");
				  }
				  dispatcher.forward(request, response);
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}finally {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
	         
	   
	   
		}
	}