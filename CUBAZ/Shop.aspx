<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="CUBAZ.Shop" %>

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
    <form id="form1" runat="server">
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
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="search"  runat="server"></asp:TextBox>  <asp:ImageButton ID="searchButton" ImageUrl="./images/searching.png" runat="server" Height="33px" Width="27px" />
   
      </div>
  </header>
    
    
    <div>
        <h1>Here are Some Products you want</h1>
    </div>

   
    
    
<div style="display:block; margin-left:500px;"> 

             

            <asp:GridView id="ShowProducts" runat="server"></asp:GridView>
        </div>  
        <div class="row ind">
            <div class="container-fluid">
                <div class="col-lg-2 img-thumbnail">
                    <img src=".\images\mobile\s9.jpg" alt="Onion" style="height:150px; width:150px; "/>
                    <p>Samsung Galaxy S9</p>
                    <p>Price: </p>
                    <p>Tell us the Quantity </p>
                    
                    <asp:TextBox ID="first" runat="server" />
                     <asp:Button Text="Add To Cart" OnClick="AddToCart_Click" runat="server" ID="Textbox1" />

                </div>
                <div class="col-lg-2 img-thumbnail">
                    <img src=".\images\mobile\s8.jpg" alt="Mint"  style="height:150px; width:150px;  "/>
                    <p>Samsung Galaxy S8+</p>
                    <p>Price: </p>
                    <p>Tell us the Quantity </p>
                    
                    <asp:TextBox ID="second" runat="server" />
                     <asp:Button Text="Add To Cart" OnClick="AddToCart_Click" runat="server" ID="Textbox2" />
                </div>
                <div class="col-lg-2 img-thumbnail">
                    <img src=".\images\mobile\note8.jpg" alt="Banana"  style="height:150px; width:150px; "/>
                    <p>Samsung Galaxy Note 8</p>
                    <p>Price: </p>
                    <p>Tell us the Quantity </p>
                    
                    <asp:TextBox ID="third" runat="server" />
                    <asp:Button ID="Textbox3" Text="Add To Cart" OnClick="AddToCart_Click" runat="server" />
                    
                </div>
                <div class="col-lg-2 img-thumbnail">
                    <img src=".\images\mobile\p20.jpg" alt="Lemon"  style="height:150px; width:150px; "/>
                    <p>Huawei P20 lite</p>
                    <p>Price: </p>
                    <p>Tell us the Quantity </p>
                    
                    <asp:TextBox ID="fourth" runat="server" />
                    <asp:Button Text="Add To Cart" OnClick="AddToCart_Click" runat="server" ID="Textbox4" />
                </div>

                <div class="col-lg-2 img-thumbnail">
                    <img src=".\images\mobile\y7.jpg" alt="Lemon"  style="height:150px; width:150px; "/>
                    <p>Huawei Y7 Prime 2018</p>
                    <p>Price: </p>
                    <p>Tell us the Quantity </p>
                    
                    <asp:TextBox ID="fifth" runat="server" />
                    <asp:Button Text="Add To Cart" OnClick="AddToCart_Click" runat="server" ID="Button1" />
                </div>
            
                <div class="col-lg-2 img-thumbnail">
                    <img src=".\images\mobile\oppo.jpg" alt="Lemon"  style="height:150px; width:150px; "/>
                    <p>oppo F7</p>
                    <p>Price: </p>
                    <p>Tell us the Quantity </p>
                    
                    <asp:TextBox ID="sixth" runat="server" />
                    <asp:Button Text="Add To Cart" OnClick="AddToCart_Click" runat="server" ID="Button2" />
                </div>

                <div class="col-lg-2 img-thumbnail">
                    <img src=".\images\cloth\jacket.jpg" alt="Lemon"  style="height:150px; width:150px; "/>
                    <p>XL Jacket</p>
                    <p>Price: </p>
                    <p>Tell us the Quantity </p>
                    
                    <asp:TextBox ID="seventh" runat="server" />
                    <asp:Button Text="Add To Cart" OnClick="AddToCart_Click" runat="server" ID="Button3" />
                </div>

                <div class="col-lg-2 img-thumbnail">
                    <img src=".\images\cloth\shirt.png" alt="Lemon"  style="height:150px; width:150px; "/>
                    <p>Cotton Shirt</p>
                    <p>Price: </p>
                    <p>Tell us the Quantity </p>
                    
                    <asp:TextBox ID="eighth" runat="server" />
                    <asp:Button Text="Add To Cart" OnClick="AddToCart_Click" runat="server" ID="Button4" />
                </div>
                <div class="col-lg-2 img-thumbnail">
                    <img src=".\images\cloth\jeans.jpg" alt="Lemon"  style="height:150px; width:150px; "/>
                    <p>Levis jeans</p>
                    <p>Price: </p>
                    <p>Tell us the Quantity </p>
                    
                    <asp:TextBox ID="ninth" runat="server" />
                    <asp:Button Text="Add To Cart" OnClick="AddToCart_Click" runat="server" ID="Button5" />
                </div>

                <div class="col-lg-2 img-thumbnail">
                    <img src=".\images\cloth\tie.jpg" alt="Lemon"  style="height:150px; width:150px; "/>
                    <p>GUCCI Black Tie</p>
                    <p>Price: </p>
                    <p>Tell us the Quantity </p>
                    
                    <asp:TextBox ID="ten" runat="server" />
                    <asp:Button Text="Add To Cart" OnClick="AddToCart_Click" runat="server" ID="Button6" />
                </div>
                <div class="col-lg-2 img-thumbnail">
                    <img src=".\images\cloth\belt.jpg" alt="Lemon"  style="height:150px; width:150px; "/>
                    <p>GUCCI Black Belts</p>
                    <p>Price: </p>
                    <p>Tell us the Quantity </p>
                    
                    <asp:TextBox ID="eleven" runat="server" />
                    <asp:Button Text="Add To Cart" OnClick="AddToCart_Click" runat="server" ID="Button7" />
                </div>
                <div class="col-lg-2 img-thumbnail">
                    <img src=".\images\cloth\tshirt.jpg" alt="Lemon"  style="height:150px; width:150px; "/>
                    <p>Armani T-Shirt</p>
                    <p>Price: </p>
                    <p>Tell us the Quantity </p>
                    
                    <asp:TextBox ID="twelve" runat="server" />
                    <asp:Button Text="Add To Cart" OnClick="AddToCart_Click" runat="server" ID="Button8" />
                </div>
                <div class="col-lg-2 img-thumbnail">
                    <img src=".\images\electronics\fridge.jpg" alt="Lemon"  style="height:150px; width:150px; "/>
                    <p>Dawlance Double Regrigrator</p>
                    <p>Price: </p>
                    <p>Tell us the Quantity </p>
                    
                    <asp:TextBox ID="thirteen" runat="server" />
                    <asp:Button Text="Add To Cart" OnClick="AddToCart_Click" runat="server" ID="Button9" />
                </div>

                <div class="col-lg-2 img-thumbnail">
                    <img src=".\images\electronics\machine.jpg" alt="Lemon"  style="height:150px; width:150px; "/>
                    <p>Dawlance Washing Machine</p>
                    <p>Price: </p>
                    <p>Tell us the Quantity </p>
                    
                    <asp:TextBox ID="fourteen" runat="server" />
                    <asp:Button Text="Add To Cart" OnClick="AddToCart_Click" runat="server" ID="Button10" />
                </div>

                <div class="col-lg-2 img-thumbnail">
                    <img src=".\images\electronics\ac.jpg" alt="Lemon"  style="height:150px; width:150px; "/>
                    <p>Dawlance Inspire Plus Inverter</p>
                    <p>Price: </p>
                    <p>Tell us the Quantity </p>
                    
                    <asp:TextBox ID="fifteen" runat="server" />
                    <asp:Button Text="Add To Cart" OnClick="AddToCart_Click" runat="server" ID="Button11" />
                </div>

                <div class="col-lg-2 img-thumbnail">
                    <img src=".\images\electronics\generator.jpg" alt="Lemon"  style="height:150px; width:150px; "/>
                    <p>Sogo Generator</p>
                    <p>Price: </p>
                    <p>Tell us the Quantity </p>
                    
                    <asp:TextBox ID="sixteen" runat="server" />
                    <asp:Button Text="Add To Cart" OnClick="AddToCart_Click" runat="server" ID="Button12" />
                </div>

                <div class="col-lg-2 img-thumbnail">
                    <img src=".\images\electronics\led.jpg" alt="Lemon"  style="height:150px; width:150px; "/>
                    <p>LG 40" LED TV</p>
                    <p>Price: </p>
                    <p>Tell us the Quantity </p>
                    
                    <asp:TextBox ID="seventeen" runat="server" />
                    <asp:Button Text="Add To Cart" OnClick="AddToCart_Click" runat="server" ID="Button13" />
                </div>

                <div class="col-lg-2 img-thumbnail">
                    <img src=".\images\electronics\watch.jpg" alt="Lemon"  style="height:150px; width:150px; "/>
                    <p>Samsung Smart Watch</p>
                    <p>Price: </p>
                    <p>Tell us the Quantity </p>
                    
                    <asp:TextBox ID="eighteen" runat="server" />
                    <asp:Button Text="Add To Cart" OnClick="AddToCart_Click" runat="server" ID="Button14" />
                </div>

                <div class="col-lg-2 img-thumbnail">
                    <img src=".\images\shoes\casual.jpg" alt="Lemon"  style="height:150px; width:150px; "/>
                    <p>NIKE Casual Shoes</p>
                    <p>Price: </p>
                    <p>Tell us the Quantity </p>
                    
                    <asp:TextBox ID="ninteen" runat="server" />
                    <asp:Button Text="Add To Cart" OnClick="AddToCart_Click" runat="server" ID="Button15" />
                </div>
                <div class="col-lg-2 img-thumbnail">
                    <img src=".\images\shoes\black.jpeg" alt="Lemon"  style="height:150px; width:150px; "/>
                    <p>Hush Puppie Black Shoes</p>
                    <p>Price: </p>
                    <p>Tell us the Quantity </p>
                    
                    <asp:TextBox ID="twenty" runat="server" />
                    <asp:Button Text="Add To Cart" OnClick="AddToCart_Click" runat="server" ID="Button16" />
                </div>

                <div class="col-lg-2 img-thumbnail">
                    <img src=".\images\shoes\joggers.jpg" alt="Lemon"  style="height:150px; width:150px; "/>
                    <p>NIKE Joggers</p>
                    <p>Price: </p>
                    <p>Tell us the Quantity </p>
                    
                    <asp:TextBox ID="twenty1" runat="server" />
                    <asp:Button Text="Add To Cart" OnClick="AddToCart_Click" runat="server" ID="Button17" />
                </div>

                <div class="col-lg-2 img-thumbnail">
                    <img src=".\images\shoes\reebokS.jpg" alt="Lemon"  style="height:150px; width:150px; "/>
                    <p>Reebok Stylish Shoes</p>
                    <p>Price: </p>
                    <p>Tell us the Quantity </p>
                    
                    <asp:TextBox ID="twenty2" runat="server" />
                    <asp:Button Text="Add To Cart" OnClick="AddToCart_Click" runat="server" ID="Button18" />
                </div>

                <div class="col-lg-2 img-thumbnail">
                    <img src=".\images\shoes\reebok.jpg" alt="Lemon"  style="height:150px; width:150px; "/>
                    <p>Reebok Futsal Shoes</p>
                    <p>Price: </p>
                    <p>Tell us the Quantity </p>
                    
                    <asp:TextBox ID="twenty3" runat="server" />
                    <asp:Button Text="Add To Cart" OnClick="AddToCart_Click" runat="server" ID="Button19" />
                </div>

                <div class="col-lg-2 img-thumbnail">
                    <img src=".\images\shoes\led.jpg" alt="Lemon"  style="height:150px; width:150px; "/>
                    <p>NIKE LED Shoes</p>
                    <p>Price: </p>
                    <p>Tell us the Quantity </p>
                    
                    <asp:TextBox ID="twenty4" runat="server" />
                    <asp:Button Text="Add To Cart" OnClick="AddToCart_Click" runat="server" ID="Button20" />
                </div>

                <div class="col-lg-2 img-thumbnail">
                    <img src=".\images\perfume\loveSeason.jpg" alt="Lemon"  style="height:150px; width:150px; "/>
                    <p>Love Season Perfume</p>
                    <p>Price: </p>
                    <p>Tell us the Quantity </p>
                    
                    <asp:TextBox ID="twenty5" runat="server" />
                    <asp:Button Text="Add To Cart" OnClick="AddToCart_Click" runat="server" ID="Button21" />
                </div>

                <div class="col-lg-2 img-thumbnail">
                    <img src=".\images\perfume\blackxs.jpg" alt="Lemon"  style="height:150px; width:150px; "/>
                    <p>Black xs Perfume</p>
                    <p>Price: </p>
                    <p>Tell us the Quantity </p>
                    
                    <asp:TextBox ID="twenty6" runat="server" />
                    <asp:Button Text="Add To Cart" OnClick="AddToCart_Click" runat="server" ID="Button22" />
                </div>

                <div class="col-lg-2 img-thumbnail">
                    <img src=".\images\perfume\white.jpg" alt="Lemon"  style="height:150px; width:150px; "/>
                    <p>White Diamond Perfume</p>
                    <p>Price: </p>
                    <p>Tell us the Quantity </p>
                    
                    <asp:TextBox ID="twenty7" runat="server" />
                    <asp:Button Text="Add To Cart" OnClick="AddToCart_Click" runat="server" ID="Button23" />
                </div>

                <div class="col-lg-2 img-thumbnail">
                    <img src=".\images\perfume\ck.jpg" alt="Lemon"  style="height:150px; width:150px; "/>
                    <p>ck be Perfume</p>
                    <p>Price: </p>
                    <p>Tell us the Quantity </p>
                    
                    <asp:TextBox ID="twenty8" runat="server" />
                    <asp:Button Text="Add To Cart" OnClick="AddToCart_Click" runat="server" ID="Button24" />
                </div>

                <div class="col-lg-2 img-thumbnail">
                    <img src=".\images\perfume\blackArrow.jpg" alt="Lemon"  style="height:150px; width:150px; "/>
                    <p>Black Arrow Perfume</p>
                    <p>Price: </p>
                    <p>Tell us the Quantity </p>
                    
                    <asp:TextBox ID="twenty9" runat="server" />
                    <asp:Button Text="Add To Cart" OnClick="AddToCart_Click" runat="server" ID="Button25" />
                </div>

                <div class="col-lg-2 img-thumbnail">
                    <img src=".\images\perfume\jadore.jpg" alt="Lemon"  style="height:150px; width:150px; "/>
                    <p>Jadore Perfume</p>
                    <p>Price: </p>
                    <p>Tell us the Quantity </p>
                    
                    <asp:TextBox ID="thirty" runat="server" />
                    <asp:Button Text="Add To Cart" OnClick="AddToCart_Click" runat="server" ID="Button26" />
                </div>

                <div class="marg btn btn-success">
                    <br />
                    <br />
                    <asp:Button Text="CheckOut" OnClick="CheckOut_Click" runat="server" Height="56px" Width="223px" />
                </div>

            </div>
            <br />

        </div>
       
    </form>
    <span class="glyphicon glyphicon-search" style="color:black"></span>

            
            
        </body>
</html>


 