<?php if($exibirAlerta === true) : // Si la variable de control "$exibirAlerta" es igual a TRUE activa nuestra Alerta y será visible a nuestros usuarios. ?>
   <script>
swal({
  title: "Informacion Importante",
  text: "<h3>Al navegar por nuestro sitio Web Acepta nuestras Politicas de tratamiento de datos y Privacidad la cual puede encontrar <a target='_blank' href='servicio_cliente.php'><strong>Aqui</strong>.</a></h3>",
  html: true,
  type: "info",
  confirmButtonText: "Aceptar"
});
</script>
<?php endif; ?>