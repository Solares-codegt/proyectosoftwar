<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PROYECTOFINAL.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
      <section class="vh-100 gradient-custom">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card bg-dark text-white" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">

            <div class="mb-md-5 mt-md-4 pb-5">
                
              <h2 class="fw-bold mb-2 text-uppercase">Iniciar Sesion</h2>
              <p class="text-white-50 mb-5">Por favor ingresa tu usuario y contraseña!</p>
                <!-- Inicia formularios de usuario-->
              <div class="form-outline form-white mb-4">
                <input type="email" id="usuario" class="form-control form-control-lg" />
                <label class="form-label" for="typeEmailX">Usuario</label>
              </div>
                <!-- Formulario de contraseña, para llamarlo a la progra utilizar "contra"-->
              <div class="form-outline form-white mb-4">
                <input type="password" id="contra" class="form-control form-control-lg" />
                <label class="form-label" for="contra">Contraseña</label>
              </div>

              <button class="btn btn-outline-light btn-lg px-5" type="submit">Entrar</button>

              <div class="d-flex justify-content-center text-center mt-4 pt-1">
                <a href="https://icons8.com/icon/118466/facebook" class="text-white"><i class="fab fa-facebook-f fa-lg"></i></a>
                <a href="#!" class="text-white"><i class="fab fa-twitter fa-lg mx-4 px-2"></i></a>
                <a href="#!" class="text-white"><i class="fab fa-google fa-lg"></i></a>
              </div>

            </div>

          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</body>
</html>
