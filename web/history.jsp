<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HISTÓRICO - Parking WebApp</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>Histórico</h2>
        <fieldset>
            <legend>Filtro</legend>
            <form>
                Placa: <input type="text" name="plate"/>
                Data: <input type="date" name="date"/>
                <input type="submit" name="filter" value="Filtrar"/>
                <input type="submit" name="clear" value="Limpar filtro"/>
            </form>
        </fieldset>
        <hr/>
        <table border="1">
            <tr>
                <th>Modelo</th>
                <th>Cor</th>
                <th>Placa</th>
                <th>Entrada</th>
                <th>Saída</th>
                <th>Preço</th>
            </tr>
            <tr>
                <td>Volks Fusca</td>
                <td>Azul calcinha</td>
                <td>AAA-0001</td>
                <td>2017-10-31 14:00</td>
                <td>2017-10-31 15:00</td>
                <td>R$ 5,00</td>
            </tr>
            <tr>
                <td>Fiat Palio</td>
                <td>Rosa</td>
                <td>AAA-0002</td>
                <td>2017-10-31 13:00</td>
                <td>2017-10-31 15:00</td>
                <td>R$ 10,00</td>
            </tr>
        </table>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>