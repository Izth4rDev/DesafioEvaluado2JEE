<%@ page import="cl.praxis.business.HabitacionBusiness" %>
<%@ page import="cl.praxis.models.Habitacion" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">
<%@include file="assets/components/head.jsp"%>
<body>
    <%@include file="assets/components/header.jsp"%>
    <%@include file="assets/components/banner.jsp"%>

    <%  String selectedOption = request.getParameter("selectedOption");
        String selectedDays = request.getParameter("days");
        HabitacionBusiness hab = new HabitacionBusiness();
        Habitacion selectedRoom = hab.getHabitacion(Integer.parseInt(selectedOption));
        String calculatedPrice = hab.calcFee(selectedDays,selectedRoom.getPrice());
    %>

    <div class="container mx-auto my-5 py-2">
        <h2 class="my-4">habitacion: <%=selectedRoom.getId()%>, <%=selectedRoom.getName()%> </h2>
        <table class="table">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Item</th>
                <th scope="col">Valor</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <th scope="row">1</th>
                <td>Nombre</td>
                <td>${param.name}</td>
            </tr>
            <tr>
                <th scope="row">2</th>
                <td>Apellido</td>
                <td>${param.lastName}</td>
            </tr>
            <tr>
                <th scope="row">3</th>
                <td>Email</td>
                <td>${param.email}</td>
            </tr>
            <tr>
                <th scope="row">4</th>
                <td>Medio Pago</td>
                <td>${param.payment}</td>
            </tr>
            <tr>
                <th scope="row">5</th>
                <td>Días</td>
                <td>${param.days}</td>
            </tr>
            <tr>
                <th scope="row">6</th>
                <td>Fecha Entrada</td>
                <td>${param.dateChecking}</td>
            </tr>
            <tr>
                <th scope="row">7</th>
                <td>Valor Pagar</td>
                <td>CLP$ <%=calculatedPrice%> </td>
            </tr>
            </tbody>
        </table>
    </div>

    <%@include file="assets/components/footer.jsp"%>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
</body>
</html>
