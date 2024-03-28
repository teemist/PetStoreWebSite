<!DOCTYPE html>
<html>
<head>
    <title>Computer Store</title>
</head>
<body>
<h3>Список товаров:</h3><br>
<div>
    <#list products as product>
        <p>${product.name} | ${product.price}р. | Продавец: ${product.seller}</p>
        <a href="/product/${product.id}">Перейти на страницу товара</a>
        <br>
    </#list>
    <br>
    <h2>
        Добавить товар
        <form action="/product/new" method="post"> <br>
            Название товара: <input type="text" name="name"> <br>
            Описание товара: <input type="text" name="description"> <br>
            Стоимость: <input type="number" name="price"> <br>
            Продавец: <input type="text" name="seller"> <br>
            <input type="submit" value="Добавить"> <br>
        </form>
    </h2>
</div>
</body>
</html>