<!DOCTYPE html>
<html>
<head>
  <title>PrimePC - Cadastro</title>
  <style>

    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
      background-image: url('imgs/background.svg'); /* Caminho relativo para a imagem */
      background-size: cover;
      background-position: center;
      background-repeat: no-repeat;
      text-align: center;
      align-items: center;
      height: 90vh;
      margin: 0;
      padding: 0;
    }


    h2 {
      color: #fff;
    }

    form {
      background-color: #fff;
      max-width: 400px;
      margin: 0 auto;
      padding: 20px;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    }

    label {
      display: block;
      margin: 10px 0;
    }

    input[type="text"],
    input[type="password"] {
      width: 250px;
      padding: 10px;
      margin: 10px;
      border: 1px solid #ccc;
      border-radius: 3px;
    }

    button {
      background-color: #007BFF;
      color: #fff;
      border: none;
      padding: 10px 20px;
      border-radius: 3px;
      cursor: pointer;
    }

    button:hover {
      background-color: #0056b3;
    }

    .error {
      color: red;
    }

    .logo {
      position: absolute;
      top: 0;
      left: 30px;
      z-index: 1;
    }

  </style>
</head>
</header>
<a href="/home.jsp">
  <img src="imgs/logo.svg" class="logo" alt="Logo" style="width: 350px; height: 150px; z-index: 1">
</a>
</header>
<body class="container">
<h2>Cadastrar-se</h2>
<form action="/register" method="post" onsubmit="return validateForm();">
  <label for="new-username">Usuario:</label>
  <input type="text" name="new-username" id="new-username">
  <br>
  <label for="new-password">Senha:</label>
  <input type="password" name="new-password" id="new-password">
  <br>
  <button type="submit">Cadastrar</button>
</form>

<div class="error" id="error-message"></div>

<script>
  function validateForm() {
    var username = document.getElementById("new-username").value;
    var password = document.getElementById("new-password").value;
    var errorMessage = document.getElementById("error-message");

    if (username.trim() === "" || password.trim() === "") {
      errorMessage.textContent = "Campos vazios. Preencha todos os campos.";
      return false;
    }
    errorMessage.textContent = "";

  }
</script>
</body>
</html>
