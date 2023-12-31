<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Zaplanuj Jedzonko</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
        crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Charmonman:400,700|Open+Sans:400,600,700&amp;subset=latin-ext"
        rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
</head>

<body>
<jsp:include page="app-header.jsp"/>

    <section class="dashboard-section">
        <div class="row dashboard-nowrap">
            <jsp:include page="app-side-menu.jsp"/>
        
            <div class="m-4 p-3 width-medium text-color-darker">
                    <div class="dashboard-content border-dashed p-3 m-4 view-height">
                        <div class="mt-4 ml-4 mr-4">
                            <div class="row border-bottom border-3">
                                <div class="col"><h3 class="color-header text-uppercase">Szczegóły przepisu</h3></div>
                                <div class="col d-flex justify-content-end mb-2"><a href="/app/recipe/list" class="btn btn-color rounded-0 pt-0 pb-0 pr-4 pl-4">Powrót</a></div>
                            </div>
                    
                            <table class="table borderless">
                                <tbody>
                                    <tr class="d-flex">
                                        <th scope="row" class="col-2">Nazwa Przepisu</th>
                                        <td class="col-7">
                                            ${recipe.name}
                                        </td>
                                    </tr>
                                    <tr class="d-flex">
                                        <th scope="row" class="col-2">Opis przepisu</th>
                                        <td class="col-7">${recipe.description}</td>
                                    </tr>
                                    <tr class="d-flex">
                                        <th scope="row" class="col-2">Przygotowanie (minuty)</th>
                                        <td class="col-7">
                                            ${recipe.preparationTime}
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
        
                            <div class="row d-flex">
                                <div class="col-5 border-bottom border-3"><h3 class="text-uppercase">Sposób przygotowania</h3></div>
                                <div class="col-2"></div>
                                <div class="col-5 border-bottom border-3"><h3 class="text-uppercase">Składniki</h3></div>
                            </div>
                            <div class="row d-flex">
                                <div class="col-5 p-4">
                                    <p>${recipe.preparation}</p>
                                </div>
                                <div class="col-2"></div>
                                <ul class="col-5 p-4 list-unstyled">
                                    <c:forEach items="${ingredients}" var="ingredient">
                                        <li>${ingredient}</li>
                                    </c:forEach>
                                </ul>
                            </div>
                       
                    </div>
                </div>
            </div>
        </div>
    </section>


    <jsp:include page="footer.jsp" />
</body>
</html>