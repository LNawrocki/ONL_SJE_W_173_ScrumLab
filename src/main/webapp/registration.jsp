<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Zaplanuj Jedzonko</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
        crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Charmonman:400,700|Open+Sans:400,600,700&amp;subset=latin-ext"
        rel="stylesheet">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
</head>

<body>

<jsp:include page="header.jsp" />

    <section class="dashboard-section">
        <div class="container pt-4 pb-4">
            <div class="border-dashed view-height">
                <div class="container w-25">
                    <!-- fix action, method // done -->
                    <!-- add name attribute for all inputs //  -->
                    <form id="form" class="padding-small text-center" method="post" action="/register">
                        <h1 class="text-color-darker">Rejestracja</h1>
                        <div class="form-group">
                            <input type="text" class="form-control" id="name" name="name" placeholder="podaj imię" value="${name}">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" id="surname" name="surname" placeholder="podaj nazwisko" value="${surname}">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" id="email" name="email" placeholder="podaj email" value="${email}">
                        </div>
                        <p id="checkEmail" class="d-none" style="color:red">błędny email</p>
                        <div class="form-group">
                            <input type="password" class="form-control" id="password" name="password" placeholder="podaj hasło">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" id="repassword" name="repassword" placeholder="powtórz hasło">
                        </div>
                        <p id="checkPass" class="d-none" style="color:red">Hasła nie są takie same. Spróbuj ponownie.</p>
                        <button class="btn btn-color rounded-0" type="submit">Zarejestruj</button>
                    </form>
                 </div>
            </div>
        </div>
    </section>

<jsp:include page="footer.jsp" />

<script src="JS/registration.js"></script>
</body>
</html>