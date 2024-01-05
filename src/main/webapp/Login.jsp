<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<script src="https://cdn.tailwindcss.com"></script>
<link rel="stylesheet" href="css/main.css" />

<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" >


</head>
<body>
<nav  id="navbar" class=" pt-2 bg-zinc md:flex md:items-center md:justify-between rounded-full ">
<div class="flex justify-between items-center">
 <h6 class=" md:my-3 mt-2text-12xl  font font-serif cursor-pointer">
   
   <img class="h-10 inline" src="">
   
   Bibliotheque</h6>
   <span class="text-3xl cursor-pointer md:hidden block">
   <ion-icon name="menu" onclick="Menu(this)"></ion-icon>
   
   
   </span>
 
      
  
    

  </div>
  
  <ul class="md:flex md:items-center z-[-1] md:z-auto md:static absolute  w-full left-0 md:w-auto md:py-0 
   py-4md:pl-0 pl-7 md:opacity-100 opacity-0 top-[-400px] transition-all ease-in duration-500 ">
    <li class="mx-4 my-6 md:my-3 mt-2"><a href="#"  class="text-sm hover:text-cyan-500 duration-500">Acceuil</a></li>
  <li class="mx-4 my-6 md:my-3 mt-2"><a href="#"  class="text-sm hover:text-cyan-500 duration-500"> Gestionnaire</a></li>
   <li class="mx-4 my-6 md:my-3 mt-2"><a href="#" class="text-sm hover:text-cyan-500 duration-500">Bibliothécaire</a></li>
  <li class="mx-4 my-6 md:my-3 mt-2"><a href="#" class="text-sm hover:text-cyan-500 duration-500"> Abonée</a></li>
  
   
   
   <button class=" text-dark font[Poppins] duration-500  md:my-3 mt-2 px-1 py-0 mx-1 hover:bg-cyan-100 rounded-full text-sm" >
   <a href="Registration.jsp" class="">Inscription</a>
   </button>
  
  </ul>
</nav>

<script>function Menu(e){
	let list = document.querySelector('ul');
	
	e.name === 'menu' ? (e.name = "close", list.classList.add('top-[50px]'),list.classList.add('opacity-100')) :
		(e.name = "menu",list.classList.remove('top-[50px]'),list.classList.remove('opacity-100'))
}






</script>
<form class="needs-validation pt-5" method="post" action="Login" novalidate>
  <div class="form-row">
   
    
 
  <div class="   ">
    <label for="email" class="col-sm-2 col-form-label">Email</label>
    <div class="col-sm-10">
      <input type="email" class="form-control" id="inputEmail3" name="email">
    </div>
  </div>
  <div class="">
    <label for="mdp" class="col-sm-2 col-form-label">Password</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="inputPassword3" name="mdp">
    </div>
  </div>
  

    </div>
   <div class="col-md-3 mb-3">
      <label for="role">State</label>
    <select class="custom-select" id="validationCustom04" name="role" required>
    <option value="bibliothecaire">bibliothecaire</option>
    <option value="gestionnaire">gestionnaire</option>
    <option value="abonnee">abonnee</option>
          </select>
      
      <div class="invalid-feedback">
        Please select a valid state.
      </div>
    </div>
  
  <button class="btn btn-dark" type="submit">Submit form</button>
</form>

<script>
// Example starter JavaScript for disabling form submissions if there are invalid fields
(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();

</script>

 <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" ></script>




</body>
   
     
   
    
      

</html>