<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="CUBAZ.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="UTF-8"/>
    <title>CUBAZ Shopping Mart</title>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
    <style>
        
 html, body, #myCarousel, .carousel-inner, .item {
    height: 100%;
     
}
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 100%;
      margin: 0px auto auto auto;
        }
        h3
        {
            margin-top:30px;
            margin-bottom:10px;
        }
        
        p
        {
            line-height:1.7em;
        }
        .head{
            color:black;
            width:1180px;
            height:150px;
            margin:auto 50px;
            z-index: 15;
            position:static;
        }
        
        .head-content{
            margin:initial;
            margin-top:1%;
            height:10px;
            vertical-align:top;
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
        
        .container{
            margin-bottom:50px;
        }
        
        #container2Link{
            color:green;
        }
        
        
        .reviews{
             height:563px;
             width:1180px;
             margin:auto;
            margin-left:50px;
            /*background-image: url(images/image-17.jpg);*/
            
        }
        
        .footer{
            margin-top: 10px;
            background-color:#F2F5F8;
            height:90px;
            width:100%;
            bottom:0;
            /*float:down;*/
            
        }
        .footer-Content{
            width:1000px;
            height:21px;
            margin:80px auto;
        }
        
        .right-footer-Content li{
            display:inline-block;
            padding-left:15px;
        }
        
        .right-footer-Content{
            float:right;
        }
        
        .left-footer-Content{
            float:left;
            color:red;
        }
        
        .left-footer-Content a{
            
            color:red;
        }
  </style>
</head>


<body>

  <header>
      <div class="head">    
          <div class="head-content">
              <asp:Image ID="Image1" ImageUrl="images\l1.png" runat="server" Height="112px" Width="187px" />
              <div class="head-content-left">
                  
              </div>
              
              <div class="head-content-right">
                  <ul>
                      <li><a href=".\Default.aspx">Home</a></li>
                      <li><a href=".\Track.aspx">Track Order</a></li>
                      <li><a href=".\Shop.aspx">Products</a></li>
                      <li><a href=".\Register.aspx">SignUp\Login</a></li>
                      <li><a href=".\Admin.aspx">Admin</a></li>
                      <li><span class="glyphicon glyphicon-search" style="color:black"/></li>
                      <li><a href=".\Cart.aspx"><img src="images\cart.png" style="width:43px; height:43px; padding-bottom:9px;" alt="cart"/></a></li>
                  </ul>
              </div>
          </div>
      </div>
  </header>
    
	<form id="form1" runat="server">
	<div class="design">
		<asp:GridView id="CartViewId" runat="server"></asp:GridView>
	</div>
		
		<div class="design"> 
			<asp:GridView id="TotalBillId" runat="server">
				
			</asp:GridView>
		</div>
		
	</form>
</body>
</html>
