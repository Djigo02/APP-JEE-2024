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
<body >

<div class="container mt-5 col-md-5 col-xm-12 col-sm-6 col-md-offset-3">
    <div class="card">
        <div class="card-header center text-center">
            Ajouter un produit
        </div>
        <div class="card-body">
            <form action="ProduitServlet.do" method="post">
                <div class="form-group">
                    <label class="control-label">Designation </label>
                    <input type="text" class="form-control" name="designation">
                </div>
                <br>
                <div class="form-group">
                    <label class="control-label">Prix </label>
                    <input type="text" class="form-control" name="prix">
                </div>
                <br>
                <div class="form-group">
                    <label class="control-label">Quantite </label>
                    <input type="text" class="form-control" name="quantite">
                </div>
                <br>
                <div>
                    <button type="submit" class="btn btn-outline-success mx-auto">Ajouter</button>
                    <a href="http://localhost:8080/crud_jee_war/" class="btn btn-info float-end">Lister les produits</a>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
