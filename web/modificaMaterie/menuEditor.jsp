<%--
  Created by IntelliJ IDEA.
  User: Mattia
  Date: 17/06/2018
  Time: 16:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="static/head.jsp"></jsp:include>
</head>
<body>

<div class="header">
    <h1>Modifica Testo</h1>
</div>

<div id="homeBar">
    <ul>
        <li>
            <a id="Bar" class="unactive"></a>
            <a  onclick="getMateria('presentazione')" class="unactive" id="PresentazioneBar">Presentazione</a>
            <a onclick="getMateria('italiano')" class="unactive" id = "ItalianoBar">Italiano</a>
            <a  onclick="getMateria('storia')" class="unactive" id = "StoriaBar">Storia</a>
            <a onclick="getMateria('inglese')" class="unactive" id="IngleseBar">Inglese</a>
            <a  onclick="getMateria('sistemi')" class="unactive" id="SistemiBar">Sistemi</a>
            <a  onclick="getMateria('TPSI')" class="unactive" id="TPSIBar">TPSI</a>
            <a  onclick="getMateria('informatica')" class="unactive" id="InformaticaBar">Informatica</a>


        </li>
    </ul>

</div>

<div>
    <div class="text" id="Text" hidden="true" >

            <button class="button-modifica"><img src="../immages/icons8-modificare-26.png" onclick="chargeData()"></button>


        <h1 class="materia" id="Materia">
        </h1>
        <p class="argomento" id="Argomento">
        </p>
        <p class="testo" id="Testo">

        </p>
    </div>
</div>
<jsp:include page="modalForm.jsp"></jsp:include>

<script src="js/stileJs.js"></script>
</body>
</html>
