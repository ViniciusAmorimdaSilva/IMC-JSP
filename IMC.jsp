<!DOCTYPE html>
<%@page contentType="text/html" import="java.util.*, java.text.*" pageEncoding="ISO-8859-1"%>
<html lang="pt">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Calculo de IMC</title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
  </head>
  <body class="container">

    <div class="row-fluid">
      <div class="col-md-4">
      </div>
      <div class="col-md-4" style="margin-top: 40px; border: 1px #000 solid; border-radius: 5px; padding:30px; background-color: #f7f7f7">
      <div class="row-fluid">
        <div class="col-md-12 text-center">
          <h1>IMC</h1>
        </div>
      </div>

          <div class="row-fluid">
            <div class="col-md-6 text-center" style="background-color: green; padding: 0px;">
              <button class="btn btn-danger" id="escolhaMulher" style="width: 100%; border-radius: 0px;">Mulher</button>
            </div>
            <div class="col-md-6 text-center" style="padding: 0px;">
              <button class="btn btn-primary" id="escolhaHomem" style="width: 100%; border-radius: 0px;">Homem</button>
            </div>
          </div>

          <div class="row-fluid">
            <div class="col-md-12">
              <div class="form-group" style="margin-top: 30px !important;">
                <label for="campIdade">Idade (anos)</label>
                <input type="text" class="form-control" id="campIdade" placeholder="Exemplo:  35">
              </div>

              <div class="form-group">
                <label for="campAltura">Altura (m)</label>
                <input type="text" class="form-control" id="campAltura" placeholder="Exemplo:  1.60">
              </div>

              <div class="form-group" style="margin-bottom: 30px;">
                <label for="campPeso">Peso (Kg)</label>
                <input type="text" class="form-control" id="campPeso" placeholder="Exemplo:  62.5">
              </div>
            </div>
          </div>

          <label>Atividade Física</label>
          <div class="row-fluid">
            <div class="col-md-4 text-center" style="background-color: green; padding: 0px;">
              <button class="btn" id="atividadeSedentaria" style="width: 100%; border-radius: 0px;">Sedentária</button>
            </div>
            <div class="col-md-4 text-center" style="padding: 0px;">
              <button class="btn" id="atividadeModerada" style="width: 100%; border-radius: 0px;">Moderada</button>
            </div>
            <div class="col-md-4 text-center" style="padding: 0px;">
              <button class="btn" id="atividadeIntensa" style="width: 100%; border-radius: 0px;">Intensa</button>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12">
              <button class="btn btn-success" id="calcularIMC" style="width: 100%; margin-top: 20px;"> Calcular </button>
            </div>
          </div>

      </div>
      <div class="col-md-4">
      </div>
    </div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>



    <!-- COMMIT INICIAL, VERIFICAR VARIÁVEIS -->
    <!-- FAZER LÓGICA DE ESCOLHA DA ATIVIDADE -->


    <%
        String alturaString = request.getParameter("altura");
        String pesoString = request.getParameter("peso");
        String sexoString = request.getParameter("sexo");
        double altura = alturaString == null ? 0 : Double.parseDouble(alturaString);
        double peso = pesoString == null ? 0 : Double.parseDouble(pesoString);
        int sexo = sexoString == null ? 0 : Integer.parseInt(sexoString);
        if(peso !=0 && altura !=0 && sexo != 0){
          double imc = peso/(altura*altura);
          if(sexo == 2){
            if(imc <= 19.1){
              %>
              <h3>Abaixo do peso!</h3>
              <%
            }else if(imc > 19.1 && imc <= 25.8 ){
              %>
              <h3>No peso normal!</h3>
              <%
            }else if(imc > 25.8 ){
              %>
              <h3>Acima do peso!</h3>
              <%
            }
          }else if(sexo == 1){
            if(imc <= 20.7){
              %>
              <h3>Abaixo do peso!</h3>
              <%
            }else if(imc > 20.7 && imc <= 26.4 ){
              %>
              <h3>No peso normal!</h3>
              <%
            }else if(imc > 27.8 ){
              %>
              <h3>Acima do peso!</h3>
              <%
            }
          }
        }
%>
    
  </body>
</html>