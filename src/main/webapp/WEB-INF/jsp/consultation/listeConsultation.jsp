

<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.dentisterie.model.nify.Consultation" %>
<%--
  Created by IntelliJ IDEA.
  User: falyarivelo
  Date: 10/12/2023
  Time: 22:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<Consultation> consultations= (List<Consultation>) request.getAttribute("consultation");

%>

<jsp:include page="../template/header.jsp" />

<div class="col-lg-12 grid-margin stretch-card">
    <div class="card">
        <div class="card-body">
            <h4 class="card-title">liste des voyages </h4>
            <p class="card-description">
                Add class <code>.table</code>
            </p>
            <%--                description de l'activité --%>
<%--            <div class="form-group">--%>
<%--                <form action="${pageContext.request.contextPath}/searchvoyage" method="post">--%>
<%--                    <label for="idEtudiant3">recherche </label>--%>
<%--                    <input type="text" id="idEtudiant3" class="form-control " name="recherche" required> </input>--%>
<%--                    <br>--%>
<%--                </form>--%>

<%--            </div>--%>


            <div class="table-responsive">
            <table border="1" class="table">
                <tr>
                    <th>_</th>
                    <th>nom patient</th>
                    <th>date de consultation</th>
                    <th>budget</th>
                    <th>-</th>

                </tr>
                <tbody>

                <% for (Consultation consultation: consultations) { %>
                <tr>
                    <td><%=consultation.getId()%></td>
                    <td><%=consultation.getPatient().getNomPatient()%></td>
                    <td><%=consultation.getDateConsultation()%></td>
                    <td><%=consultation.getBudget()%></td>
                    <td><a href="/factureConsultations/<%=consultation.getId()%>">voir détails</a></td>

                </tr>
                <% } %>
                </tbody>

            </table>

            </div>
        </div>
    </div>
</div>
<jsp:include page="../template/footer.jsp" />

