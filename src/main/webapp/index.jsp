<%@ page import="cl.praxis.business.HabitacionBusiness" %>
<%@ page import="java.util.List" %>
<%@ page import="cl.praxis.models.Habitacion" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="es">

<%@include file="assets/components/head.jsp"%>

<% HabitacionBusiness hab = new HabitacionBusiness();
    List<Habitacion> rooms = hab.getHabitaciones();
    request.setAttribute("rooms",rooms);
%>

<body>

    <%@include file="assets/components/header.jsp"%>
    <%@include file="assets/components/banner.jsp"%>

    <h2 class="mt-4">Habitaciones disponibles ( <%=rooms.size()%>)</h2>
    <hr style="height: 2px; background-color: #1a1d20">
    <form action="proceso.jsp" METHOD="post" class="my-4">
        <div class="container-fluid row row-gap-3">
            <c:forEach var="room" items="${rooms}">
                <div class="col-12 col-sm-6 col-md-4 col-lg-3 mt-5">
                    <div class="card mx-auto" style="width: 18rem;">
                        <img src="${room.getImage()}" class="card-img-top" alt="...">
                        <div class="card-body text-center">
                            <h5 class="card-title"> ${room.getName()} <span>${room.getId()}</span> </h5>
                            <p class="card-text">${room.getDescription()}</p>
                            <p>CLP $ ${room.getPrice()}</p>
                            <div class="d-flex justify-content-center align-items-center">
                                <input class="form-check-input" type="radio" name="selectedOption" id="selectedOption" value="${room.getId()}" checked>
                            <label class="form-check-label" for="selectedOption">
                            </label>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>

        <h2 class="mt-4">Informacion de Reserva de Habitacion</h2>
            <div class="container">
                <!--Nombre y apellido-->
                <div class="row">
                    <div class="mb-3 col-6">
                        <label for="name" class="form-label">Nombre</label>
                        <input type="text" class="form-control" id="name" placeholder="Ingrese Nombre" name="name">
                    </div>
                    <div class="mb-3 col-6">
                        <label for="lastName" class="form-label">Apellido</label>
                        <input type="text" class="form-control" id="lastName" placeholder="Ingrese Apellido" name="lastName">
                    </div>
                </div>
                <!--Correo y los select-->
                <div class="row">
                    <div class="mb-3 col-6">
                        <label for="email" class="form-label">Email address</label>
                        <input type="email" class="form-control" id="email" placeholder="name@example.com" name="email">
                    </div>
                    <!--Select--->
                    <div class="col-6 d-flex justify-content-between">
                        <div class="d-flex flex-column">
                            <label for="payment" class="form-label">Medio de pago</label>
                            <select name="payment" id="payment" class="form-control">
                                <option value="Contado">Contado</option>
                                <option value="Credito">Credito</option>
                                <option value="Debito">Debito</option>
                            </select>
                        </div>

                        <div class="d-flex flex-column">
                            <label for="days" class="form-label">dias</label>
                            <select name="days" id="days" class="form-control">
                                <option value="1">1 dia</option>
                                <option value="2">2 dias</option>
                                <option value="3">3 dias</option>
                                <option value="4">4 dias</option>
                            </select>
                        </div>

                        <div class="d-flex flex-column">
                            <label for="dateChecking" class="form-label">Fecha entrada</label>
                            <input type="date" class="form-control" id="dateChecking" name="dateChecking">
                        </div>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Enviar solicitud de compra</button>
            </div>
        </form>
    <%@include file="assets/components/footer.jsp"%>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
</body>
</html>