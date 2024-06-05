<%@ page import="sn.dev.crudjee.web.ProduitModel" %>
<%@ page import="java.util.List" %>
<%@ page import="sn.dev.crudjee.entity.Produit" %>
<%@ page import="sn.dev.crudjee.dao.IProduitDao" %>
<%@ page import="sn.dev.crudjee.dao.ProduitImplDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    IProduitDao produitDao = new ProduitImplDao();
    List<Produit> produits = produitDao.list();
%>
<html>
<head>
    <title>CRUD DJIGO JEE</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>

<div class="container mt-5 col-md-5 col-xm-12 col-sm-6 col-md-offset-3">
    <a href="RedirectServlet.do" class="btn btn-success float-end   ">Ajouter un produit</a>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Designation</th>
            <th scope="col">Prix</th>
            <th scope="col">Quantite</th>
            <th scope="col">Actions</th>
        </tr>
        </thead>
        <tbody>
        <%
            int num=1;
            for (Produit produit : produits)
            {
        %>
        <tr>
            <th hidden="hidden" scope="row"><%= produit.getId() %></th>
            <td><%= num %></td>
            <td><%= produit.getDesignation() %></td>
            <td><%= produit.getPrix() %></td>
            <td><%= produit.getQuantite() %></td>
            <td>
                <a href="ProduitServlet.do?action=update&id=<%= produit.getId() %>" class="btn btn-warning">Modifier</a>
                <a href="ProduitServlet.do?action=delete&id=<%= produit.getId() %>" class="btn btn-danger">Supprimer</a>
            </td>
        </tr>
        <%
                num++;
            }
        %>
        </tbody>
    </table>

</div>
</body>
</html>
