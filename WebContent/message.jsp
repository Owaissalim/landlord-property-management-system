<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <!-- Required meta tags -->
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Bootstrap CSS -->
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
   <link rel="stylesheet" type="text/css" href="login.css">
	<title>Messages | Simple Property - Property Management System</title>

</head>

		<%            
      		  int id = (int)session.getAttribute("clientId");
        %>
        
<body class = "bg-light">

	<nav id = "mainNavbar" class = "navbar bg-dark navbar-dark navbar-expand-md py-0 fixed-top">
		<div class = "container">
			<a href="home.html" class = "navbar-brand"><i class="fas fa-home"></i> Simple Property</a>
			<button class = "navbar-toggler" data-toggle = "collapse" data-target = "#navLinks">
			<span class = "navbar-toggler-icon"></span>
			</button>
			<div class = "collapse navbar-collapse" id = "navLinks">
				<ul class = "navbar-nav">
					<li class = "nav-items">
					<a href="home.jsp" class = "nav-link active">HOME</a>
					</li>
					<li class = "nav-items">
					<a href="about.jsp" class = "nav-link">ABOUT US</a>
					</li>
					<li class = "nav-items">
					<a href="contact.jsp" class = "nav-link">CONTACT US</a>
					</li>
				</ul>
				<ul class = "navbar-nav ml-auto">
					<li class = "nav-items">
						<a href="signup.jsp" class = "nav-link" <%session.removeAttribute("clientId"); %>>Signup  <i class="fas fa-user-plus"></i></a>
					</li>
					<li class = "nav-items">
                    	<a href="signIn.jsp" class = "nav-link" <%session.removeAttribute("clientId"); %>> Login  <i class="fa fa-user"></i></a>
                  	</li>
					<!-- <li class = "nav-items">
					<a href="login.html" class = "nav-linkLogin  <i class="fa fa-user"></i></a>
					</li> -->
				</ul>
			</div>
		</div>
	</nav>

	<div class = "container pt-4 px-0">
		<div class = "row align-items-center justify-content-center">
			<!-- <div class = "col-4"></div> -->
			<div id = "login-div" class = "col-md-4 col-lg-4 mx-auto border rounded bg-white">
				<h3 class="text-center mb-4">Send A Message</h3>
					<form name="messageForm" action="${pageContext.request.contextPath}/MessageServlet" 
        method="post">
          <fieldset>
            <legend>Please fill out the following:</legend>
            <label for="senderID">Your ID:</label>
            <textarea name="senderID" rows="1" readonly><%out.print(id);%></textarea>
            <label for="recipient">Recipient Email:</label>                        
            <input id="recipient" type="text" step="0.01" min=0 name="recipient" required>
            <br>
            <label for="address">Message:</label>
            <textarea name="message" rows="4" cols="30" required></textarea>
            <br><br>
            <input id="button" type="submit" value="Submit">
          </fieldset>
        </form>
        
        <form action="clientMessages.jsp">
    <input type="submit" value="Go to My Messages" />
</form>

			</div>
			
			<!-- <div class = "col-4"></div> -->
		</div>
	</div>
	

	<!-- <section class = "container py-3 ">
		<div class = "col-lg-4 my-5"></div>
		<div class = "col-lg-4 my-5">
                  <div class = "card">
                    <div class="container-fluid bg-light py-3">
				    <form id="contact-form" method="post" action="contact.php" role="form">
				        <div class="clearfix"></div>
				        <div class="row">
				            <div class="col-md-12">
				                <div class="form-group pt-1">
				                    <label for="form_message">Message *</label>
				                    <textarea id="form_message" name="message" class="form-control" placeholder="Type your message *" rows="4" required="required" data-error="send a message."></textarea>
				                    <div class="help-block with-errors"></div>
				                </div>
				            </div>
				            <div class="col-md-12">
				                <a href="ownerMessage.html" class = "btn btn-outline-success btn-md">Send Message</a>
				            </div>
				        </div>
				        
				    </form>
					</div>
                  </div>
               </div>
               <div class = "col-lg-4 my-5"></div>
	</section> -->

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"        crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>

	<script>
		$(function () {
			$(document).scroll(function(){
			var $nav = $("#mainNavbar");
			$nav.toggleClass("scrolled", $(this).scrollTop() > $nav.height());
			});
		});
   </script>
   
  <% 
 
  session.setAttribute("clientId", id);
  
  %>

</body>
</html>
