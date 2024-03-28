<!DOCTYPE html>
<html>
<head>
    <title>Computer Store</title>
</head>
<body>
<h3>Список товаров:</h3><br>
<div>
<#list products as product>
    <p>${product.name} | ${product.price}р.</p> <p>${product.description}</p><br>
</#list>
</div>
</body>
</html>