<!DOCTYPE html>
<html>
<head>
    <title>Computer Store</title>
</head>
<body>
<form action="/" method="get">
    Поиск товара: <input type="text" name="name"><br>
    <input type="submit" value="Поиск"/>
</form>
<h3>Список товаров:</h3><br>
<div>
    <#list products as product>
        <p>${product.name} | ${product.price}р. | Продавец: ${product.seller}</p>
        <a href="/product/${product.id}">Перейти на страницу товара</a>
        <br>
        <#else>
            <h3>Товаров нет</h3>
    </#list>
    <br>
    <h2>
        Добавить товар
        <form action="/product/new" method="post" enctype="multipart/form-data"> <br>
            Название товара: <input type="text" name="name"> <br>
            Описание товара: <input type="text" name="description"> <br>
            Стоимость: <input type="number" name="price"> <br>
            Продавец: <input type="text" name="seller"> <br>
            Главное фото: <input type="file" name="file1"> <br>
            Второе фото: <input type="file" name="file2"> <br>
            Третье фото: <input type="file" name="file3"> <br>

            <input type="submit" value="Добавить"> <br>
        </form>
    </h2>
</div>
</body>
</html>