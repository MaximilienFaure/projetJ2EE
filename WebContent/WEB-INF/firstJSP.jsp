<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>first JSP</title>
</head>
<body>
	<p> Page généré depuis une JSP </p>
	<p>
		<%
		String attributRequest = (String) request.getAttribute("attributServlet");
		out.println(attributRequest);
		%>
	</p>
	<p> Récupération d'un objet via un passage d'attribut dans une requète	</p>
	<p>
		<%
		com.faure.beans.Utilisateur utilisateur = (com.faure.beans.Utilisateur) request.getAttribute("utilisateur");
		out.println("L'utilisateur est : " + utilisateur.getNom() + "," + utilisateur.getPrenom());
		if(utilisateur.getSexe().equals("Homme"))
		{
			out.println("C'est un Homme");
		}
		else
		{
			out.println("C'est une Femme");
		}
		
		if(utilisateur.getConnaitJ2EE())
		{
			out.println("De plus il connait déjà J2EE !!!");
		}
		else
		{
			out.println("Malheuresement il ne connait pas encore J2EE... Mais ça ne devrait plus tarder !");
		}
		%>
	</p>
</body>
</html>