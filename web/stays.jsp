<%@page import="com.domain.web.VehicleStay"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String enterParkingErrorMessage = null;
    if(request.getParameter("enter-parkig") != null){
        String model = request.getParameter("model");
        String color = request.getParameter("color");
        String plate = request.getParameter("plate");
        try{
            VehicleStay.addVehicleStay(model, color, plate);
            response.sendRedirect(request.getRequestURI());
        }catch(Exception e){
            enterParkingErrorMessage = e.getMessage();
        }
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ESTADIAS - Parking WebApp</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>Estadias</h2>
        <fieldset>
            <legend>Nova Entrada</legend>
            <form>
                Modelo: <input type="text" name="model"/>
                Cor: <input type="text" name="color"/>
                Placa: <input type="text" name="plate"/>
                <input type="submit" name="enter" value="Registrar"/>
            </form>
        </fieldset>
        <hr/>
        <table border="1">
            <tr>
                <th>Modelo</th>
                <th>Cor</th>
                <th>Placa</th>
                <th>Entrada</th>
                <th>Controle</th>
            </tr>
            <tr>
                <td>Volks Fusca</td>
                <td>Azul calcinha</td>
                <td>AAA-0001</td>
                <td>2017-10-31 14:00</td>
                <td>
                    <form>
                        <input type="hidden" name="id" value=""/>
                        <input type="submit" name="exit-parking" value="Registrar saída"/>
                    </form>
                </td>
            </tr>
            <tr>
                <td>Fiat Palio</td>
                <td>Rosa</td>
                <td>AAA-0002</td>
                <td>2017-10-31 13:00</td>
                <td>
                    <form>
                        <input type="hidden" name="id" value=""/>
                        <input type="submit" name="exit-parking" value="Registrar saída"/>
                    </form>
                </td>
            </tr>
        </table>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>