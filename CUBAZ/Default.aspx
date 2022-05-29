<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CUBAZ.Default" %>

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
    
         
   <div id="myCarousel" class="carousel slide" data-ride="carousel">
          <!-- Indicators -->
          <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
                <li data-target="#myCarousel" data-slide-to="4"></li>
                <li data-target="#myCarousel" data-slide-to="5"></li>
                <li data-target="#myCarousel" data-slide-to="6"></li>
          </ol>

          <!-- Wrapper for slides -->
          <div class="carousel-inner" role="listbox">
                <div class="item active">
                      <img src=".\images\11.jpg" alt="sliderImage" style="height:440px;"/>
                </div>

                <div class="item">
                      <img src="images\22.jpg" alt="sliderImage" style="height:100%;"/>
                </div>
               <div class="item">
                      <img src="images\3.jpg" alt="sliderImage" style="height:100%;"/>
                </div>
               <div class="item">
                      <img src="images\4.jpg" alt="sliderImage" style="height:100%;"/>
                </div>
               <div class="item">
                      <img src="images\5.jpg" alt="sliderImage" style="height:100%;"/>
                </div>
               <div class="item">
                      <img src="images\6.jpg" alt="sliderImage" style="height:100%;"/>
                </div>
               <div class="item">
                      <img src="images\7.jpg" alt="sliderImage" style="height:100%;"/>
                </div>
          </div>





  <!-- Left and right controls 
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
  -->
  
        <script src="js/jquery-2.1.4.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/script.js"></script>
    </div>
   
    
    
    
    
    <!-- Page Content Starts Here -->
    <div class="middle">
        <h1 style="width:30%; margin:50px auto; padding-top:30px; padding-left:10px;   ">Welcome to our Mart</h1>
        
        <div class="container">
            <div class="col-lg-4">
                    <img src="images\free.png" height="200" width="205" alt="tractor"/>
                    <h3>Free Home Delivery</h3>
                    <p>We carefully evaluate products, and if they don’t measure up, we don’t sell them, So our every product is quality ensured and...</p>
            </div>
            <div class="col-lg-4">
                    <img src=".\images\shipping.jpg" height="200" width="205" alt="house"/>
                    <h3>No Shipping Charges</h3>
                    <p> Your ultimate solution to all the woes of buying Goods. Say goodbye to the hassles of tiresome trips to the markets, traffic jams...</p>
            </div>
            <div class="col-lg-4">
                    <img src=".\images\7D.png" height="200" width="205" alt="dish"/>
                    <h3>7 Days Return Guarantee</h3>
                    <p>CUBAZ provides premium services to our prestige clients by delivering best quality products on time with best customers support. we ensure full...</p>
            </div>
            
        </div>
        
        <h1 style="width:20%; margin:50px auto; padding-top:30px; padding-left:10px;   ">Popular Deals</h1>
        <div class="container">
            <div class="col-lg-3">
                <img src=".\images\s9.jpg" height="280" width="230" alt="Grape-Fruit"/>
                <h3>Samsung Galaxy S9</h3>
                <a href="Shop.aspx" class="container2Link">Mobile Phones</a>
            </div>
            <div class="col-lg-3">
                <img src=".\images\armani.png" height="280" width="230" alt="Timaatar"/>
                <h3>Armani Casual Shirt</h3>
                <a href="Shop.aspx" class="container2Link">Clothing</a>
            </div>
            <div class="col-lg-3">
                <img src="images\watch.jpg" height="280" width="230" alt="Bhindi"/>
                <h3>Gear 2 New Smart Watch</h3>
                <a href="Shop.aspx" class="container2Link">Watches</a>
            </div>
            <div class="col-lg-3">
                <img src="images\shoe.jpg" height="280" width="230" alt="Piyaaz"/>
                <h3>Nike Shoes</h3>
                <a href="Shop.aspx" class="container2Link">Clothing</a>
            </div>
        </div>
        
        
        
        <div class="container">
            <div class="col-lg-4" >Sale! Up to 25% off <br/> For all products only NOW</div>
            <div class="col-lg-4" >FREE SHIPPING <br/>For all orders over Rs250</div>
            <div class="col-lg-4">Money back guarantee</div>
        </div>
        
        
            <h1 style="width:40%; margin:50px auto; padding-top:15px; padding-left:60px;   "> Your review will be honored</h1>
    <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Name: <input id="Text2" type="text" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Email: <input id="Text1" type="text" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Your Opinion: <input id="Text3"  type="text" />
        <form id="form1" runat="server">

                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="109px" />

        </form>

    </div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <br />
        <span class="glyphicon glyphicon-search" style="color:black"/>
    <div>
    </div>
 </span>
    </div>
    
    
    <div class="footer ">
        <div class="footer-Content">
            <div class="left-footer-Content">

                <a href="Default.aspx">CUBAZ.com</a>
            </div>
            
            <div class="right-footer-Content">
                <ul>
                    <li><a href="#">Return & Refunds Policy</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Contacts</a></li>
                    
                </ul>   
            </div>
        </div>
    </div>
    
</body>
</html>
