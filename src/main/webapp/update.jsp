<%@ page import="sn.dev.crudjee.web.ProduitModel" %>
<%@ page import="java.util.List" %>
<%@ page import="sn.dev.crudjee.entity.Produit" %>
<%@ page import="sn.dev.crudjee.dao.IProduitDao" %>
<%@ page import="sn.dev.crudjee.dao.ProduitImplDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% Produit produit = (Produit) request.getAttribute("produit"); %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>

<div class="container mt-5 col-md-5 col-xm-12 col-sm-6 col-md-offset-3">
    <div class="card">
        <div class="card-header center">
            Modification Produit
        </div>
        <div class="card-body">
            <form action="update" method="post">
                <input type="hidden" name="id" value="<%= produit.getId() %>">
                <div class="form-group">
                    <label class="control-label">Designation </label>
                    <input type="text" class="form-control" name="designation" value="<%= produit.getDesignation() %>">
                </div>
                <br>
                <div class="form-group">
                    <label class="control-label">Prix </label>
                    <input type="text" class="form-control" name="prix" value="<%= produit.getPrix() %>">
                </div>
                <br>
                <div class="form-group">
                    <label class="control-label">Quantite </label>
                    <input type="text" class="form-control" name="quantite" value="<%= produit.getQuantite() %>">
                </div>
                <br>
                <div>
                    <button type="submit" class="btn btn-outline-success">Modifier</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
