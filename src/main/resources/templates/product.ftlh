<!DOCTYPE html>
<html>
<head>
    <title>Страница товара</title>
</head>
<body>
<div>
        <h3>${product.name}</h3><br>
        <p>${product.price}р.</p> <p>Продавец: ${product.seller}</p> <p>${product.description}</p><br>
    <form action="/product/delete/${product.id}" method="post">
        <input type="submit" value="Удалить">
    </form>

</div>
</body>
</html>