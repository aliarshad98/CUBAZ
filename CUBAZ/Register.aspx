<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CUBAZ.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Register</title>
	 <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  



	<style>

		
 html, body {
	height: 100%;
	 
}
 
		.head{
			color:black;
			width:1180px;
			height:150px;
			margin:auto 150px;
			
			
			display:block;
		}
		
		.head-content{
			margin:auto;
			margin-top:1%;
			height:10px;
			vertical-align: middle;
			/*background-color: green*/
		}
		.head-content-left{
			float:left;
			/*background-color: purple;*/
		}
		.head-content-right{
			
			margin:auto;
			height:10px;
			float:right;
			/*background-color: yellow;*/
			
		}
		.head-content-right li{
			display:inline-block;
			padding:7px;
			
			
		}
		.head-content-right li a{
			color:red;
		}

		.ind{
			margin-left:250px;
			margin-top:150px;
			margin-bottom:150px;
		}

		h1{
			text-align:center;
		}








	   *, *:before, *:after {
  box-sizing: border-box;
}

html {
  overflow-y: scroll;
}

body {
  background:white;
  font-family: 'Titillium Web', sans-serif;
}

a {
  text-decoration: none;
  color: #1ab188;
  -webkit-transition: .5s ease;
  transition: .5s ease;
}
a:hover {
  color: #179b77;
}

.form {
  background: rgba(19, 35, 47, 0.9);
  padding: 40px;
  max-width: 600px;
  margin: 40px auto;
  border-radius: 4px;
  box-shadow: 0 4px 10px 4px rgba(19, 35, 47, 0.3);
}

.tab-group {
  list-style: none;
  padding: 0;
  margin: 0 0 40px 0;
}
.tab-group:after {
  content: "";
  display: table;
  clear: both;
}
.tab-group li a {
  display: block;
  text-decoration: none;
  padding: 15px;
  /*background: rgba(160, 179, 176, 0.25);*/
  color: #a0b3b0;
  font-size: 20px;
  float: left;
  width: 50%;
  text-align: center;
  cursor: pointer;
  -webkit-transition: .5s ease;
  transition: .5s ease;
}
.tab-group li a:hover {
  background: #179b77;
  color: #ffffff;
}
.tab-group .active a {
  background: #1ab188;
  color: #ffffff;
}

.tab-content > div:last-child {
  display: none;
}

h1 {
  text-align: center;
  color: #ffffff;
  font-weight: 300;
  margin: 0 0 40px;
}

label {
  position: absolute;
  -webkit-transform: translateY(6px);
		  transform: translateY(6px);
  left: 13px;
  color: rgba(255, 255, 255, 0.5);
  -webkit-transition: all 0.25s ease;
  transition: all 0.25s ease;
  -webkit-backface-visibility: hidden;
  pointer-events: none;
  font-size: 22px;
}
label .req {
  margin: 2px;
  color: #1ab188;
}

label.active {
  -webkit-transform: translateY(50px);
		  transform: translateY(50px);
  left: 2px;
  font-size: 14px;
}
label.active .req {
  opacity: 0;
}

label.highlight {
  color: #ffffff;
}

input, textarea {
  font-size: 22px;
  display: block;
  width: 100%;
  height: 100%;
  padding: 5px 10px;
  background: none;
  background-image: none;
  border: 1px solid #a0b3b0;
  color: #ffffff;
  border-radius: 0;
  -webkit-transition: border-color .25s ease, box-shadow .25s ease;
  transition: border-color .25s ease, box-shadow .25s ease;
}
input:focus, textarea:focus {
  outline: 0;
  border-color: #1ab188;
}

textarea {
  border: 2px solid #a0b3b0;
  resize: vertical;
}

.field-wrap {
  position: relative;
  margin-bottom: 40px;
}

.top-row:after {
  content: "";
  display: table;
  clear: both;
}
.top-row > div {
  float: left;
  width: 48%;
  margin-right: 4%;
}
.top-row > div:last-child {
  margin: 0;
}

.button {
  border: 0;
  outline: none;
  border-radius: 0;
  padding: 15px 0;
  font-size: 2rem;
  font-weight: 600;
  text-transform: uppercase;
  letter-spacing: .1em;
  background: #1ab188;
  color: #ffffff;
  -webkit-transition: all 0.5s ease;
  transition: all 0.5s ease;
  -webkit-appearance: none;
}
.button:hover, .button:focus {
  background: #179b77;
}

.button-block {
  display: block;
  width: 100%;
}

.forgot {
  margin-top: -20px;
  text-align: right;
}

	</style>
</head>
<body>
	<header>
	  <div class="head">    
		  <div class="head-content">
			  <div class="head-content-left">
				 <asp:Image ID="Image1" ImageUrl="images\l1.png" runat="server" Height="112px" Width="187px" />
			  </div>
			  
			  <div class="head-content-right">
				  <ul>
					  <li><a href=".\Default.aspx">Home</a></li>
					  <li><a href=".\Track.aspx">Track Order</a></li>
					  <li><a href=".\Shop.aspx">Shop</a></li>
					  <li><a href=".\Register.aspx">Register\Login</a></li>
					  <li><a href=".\Admin.aspx">Admin</a></li>
					  <li><a href=".\Search.aspx"><span class="glyphicon glyphicon-search" style="color:black"/></a></li>
					  <li><a href=".\Cart.aspx"><img src=".\images\cart.png" style="width:43px; height:43px; padding-bottom:9px;" alt="cart"/></a></li>
				  </ul>
			  </div>
		  </div>
	  </div>
  </header>
 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 
    <asp:Label ID="Message" runat="server" Font-Size="X-Large" ForeColor="#00cc00" Text=""></asp:Label>


	<div class="form">
	  
	  <ul class="tab-group">
		<li class="tab active"><a href="#signup">Sign Up</a></li>
		<li class="tab"><a href="#login">Log In</a></li>
	  </ul>
	  
	  <div class="tab-content">
		<div id="signup">   
		  <h1>Sign Up for Free</h1>
		  
	<form method="post" runat="server">
		  
		  <div class="top-row">
			<div class="field-wrap">
			  <label>
				Name<span class="req">*</span>
			  </label>
				 <asp:TextBox ID="textbox_name" runat="server"></asp:TextBox>
				
			</div>
		
			<div class="field-wrap">
			  <label>
				Phone<span class="req">*</span>
			  </label>
				<asp:TextBox ID="textbox_phone" runat="server"></asp:TextBox>
			</div>
		  </div>

		  <div class="field-wrap">
			<label>
			  Email<span class="req">*</span>
			</label>
			   <asp:TextBox ID="textbox_email" runat="server"></asp:TextBox>
		  </div>
		  
		  <div class="field-wrap">
			<label>
			  Set A Password<span class="req">*</span>
			</label>
			  <asp:Textbox runat="server" TextMode="Password" id ="textbox_password" />
<!--			   <asp:TextBox type="Password" ID="TextBox4" runat="server"></asp:TextBox>-->
		  </div>

			  <div class="field-wrap">
			<label>
			  Address<span class="req">*</span>
			</label>
			   <asp:TextBox ID="textbox_address" runat="server"></asp:TextBox>
		  </div>
		  
		  <asp:Button ID="but" runat="server" OnClick="Register_Click" Text="Register"/>
		
		</div>

		<div id="login">   
		  <h1>Welcome Back!</h1>
			<div class="field-wrap">
			<label>
			  Email<span class="req">*</span>
			</label>
			 <asp:Textbox runat="server" id ="LogInId" />
		  </div>
		  
		  <div class="field-wrap">
			<label>
			  Password<span class="req">*</span>
			</label>
			 <asp:Textbox runat="server" TextMode="Password" id ="LogInPassword" />
		  </div>
		  
		  <p class="forgot"><a href="#">Forgot Password?</a></p>
		  
		  <asp:Button class="button button-block" text="Log In" runat="server" OnClick="Login_Click"/> 
		
		</div>
	
	  </div><!-- tab-content -->
	 </form>
	  
</div> <!-- /form -->
  
<%--	<div class="container-fluid">
			<div>
			   <form action="login.php" method="post" >
				   <div class = "form-group">
					  <label for="username">Username</label>
					   <input type="text" class="form-control" value="Value is showing this" name="username"/>
				   
				   </div>
			   
			   
				   <div class = "form-group">
					  <label for="password">Password</label>
					   <input type="password" class="form-control" name="password"/>
				   
				   </div>
			   
				   <input class="btn btn-primary" type="submit" name="Submit" value="Submit"/>
			   </form>
			
			
			</div>
		
	 </div>--%>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

		<script type="text/javascript">
			$('.form').find('input, textarea').on('keyup blur focus', function (e) {

				var $this = $(this),
					label = $this.prev('label');

				if (e.type === 'keyup') {
					if ($this.val() === '') {
						label.removeClass('active highlight');
					} else {
						label.addClass('active highlight');
					}
				} else if (e.type === 'blur') {
					if ($this.val() === '') {
						label.removeClass('active highlight');
					} else {
						label.removeClass('highlight');
					}
				} else if (e.type === 'focus') {

					if ($this.val() === '') {
						label.removeClass('highlight');
					}
					else if ($this.val() !== '') {
						label.addClass('highlight');
					}
				}

			});

			$('.tab a').on('click', function (e) {

				e.preventDefault();

				$(this).parent().addClass('active');
				$(this).parent().siblings().removeClass('active');

				target = $(this).attr('href');

				$('.tab-content > div').not(target).hide();

				$(target).fadeIn(600);

			});

	</script>
</body>
</html>
