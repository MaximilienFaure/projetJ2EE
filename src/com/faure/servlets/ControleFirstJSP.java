package com.faure.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.faure.beans.Utilisateur;

public class ControleFirstJSP extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String paramUtilisateur = req.getParameter("paramUtilisateur");
		String monMessage = "\"Chaine passé via une servlet !\"\nEt un paramètre utilisateur : " + paramUtilisateur;
		
		Utilisateur utilisateur = new Utilisateur();
		utilisateur.setConnaitJ2EE(false);
		utilisateur.setNom("FAURE");
		utilisateur.setPrenom("Maximilien");
		utilisateur.setSexe("Homme");
		
		req.setAttribute("attributServlet", monMessage);
		req.setAttribute("utilisateur", utilisateur);
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/firstJSP.jsp").forward(req, resp);
	}
	
}
