
<%@page contentType="text/html" pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <title>Cyborg - Awesome HTML5 Template</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-cyborg-gaming.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
  <link rel="stylesheet" href="assets/css/Style.css">
<!--

TemplateMo 579 Cyborg Gaming

https://templatemo.com/tm-579-cyborg-gaming

-->
  </head>

<body>

  <!-- ***** Preloader Start ***** -->
  <div id="js-preloader" class="js-preloader">
    <div class="preloader-inner">
      <span class="dot"></span>
      <div class="dots">
        <span></span>
        <span></span>
        <span></span>
      </div>
    </div>
  </div>
  <!-- ***** Preloader End ***** -->

  <!-- ***** Header Area Start ***** -->
  <header class="header-area header-sticky">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="main-nav">
                    <!-- ***** Logo Start ***** -->
                    <a href="index.html" class="logo">
                        <img src="assets/images/logo.png" alt="">
                    </a>
                    <!-- ***** Logo End ***** -->
                    <!-- ***** Search End ***** -->
                    <div class="search-input">
                      <form id="search" action="#">
                        <input type="text" placeholder="Type Something" id='searchText' name="searchKeyword" onkeypress="handle" />
                        <i class="fa fa-search"></i>
                      </form>
                    </div>
                    <!-- ***** Search End ***** -->
                    <!-- ***** Menu Start ***** -->
                    <ul class="nav">
                        <li><a href="index.html">Home</a></li>
                        <li><a href="browse.html">Browse</a></li>
                        <li><a href="details.html">Details</a></li>
                        <li><a href="streams.html">Streams</a></li>
                        <li><a href="profile.html" class="active">Profile <img src="assets/images/profile-header.jpg" alt=""></a></li>
                    </ul>   
                    <a class='menu-trigger'>
                        <span>Menu</span>
                    </a>
                    <!-- ***** Menu End ***** -->
                </nav>
            </div>
        </div>
    </div>
  </header>
  <!-- ***** Header Area End ***** -->

  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="page-content">

          <!-- ***** Banner Start ***** -->
          <div class="row" action="#" method="GET">
              <%
            // Lấy thông tin người chơi từ request attribute
            Model.Gamers gamer = (Model.Gamers) request.getAttribute("gamer");
            if (gamer != null) {
        %>
            <div class="col-lg-12">
              <div class="main-profile ">
                <div class="row">
                  <div class="col-lg-4">
                    <img src="<%=gamer.getAvatarLink() %>" alt="" style="border-radius: 23px;">
                  </div>
                  <div class="col-lg-4 align-self-center">
                    <div class="main-info header-text">
                      <h4><%=gamer.getName() %></h4>
                      <p>Email: <%=gamer.getGmail()%></p>
                      <p>Tham gia từ : 11/05/2024</p>
                      <div class="main-border-button">
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-4 align-self-center">
                    <ul>
                      <li>Games Downloaded <span>3</span></li>
                      <li>Cast <span><%=gamer.getMoney()%> VNĐ</span></li>
                      <li>Review History <span>None</span></li>
                      <li>Wish Lists <span>2</span></li>
                    </ul>
                      <div>
                        <a href="Update.jsp">UPDATE</a><br/>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-lg-12">
                    <div class="clips">
                      <div class="row">
                        <div class="col-lg-12">
                          <div class="heading-section">
                            <h4><em>Recent game</em></h4>
                          </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                          <div class="item">
                            <div class="thumb">
                              <img src="assets/images/unnamed.png" alt="" style="border-radius: 23px;">
                              <a href="https://youtube.com/watch?v=R8htow_6tRc" target="_blank"><i class="fa fa-play"></i></a>
                            </div>
                            <div class="down-content">
                              <h4>Wuthering Wave</h4>

                            </div>
                          </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                          <div class="item">
                            <div class="thumb">
                              <img src="assets/images/genshin.jpg" alt="" style="border-radius: 23px;">
                              <a href="https://www.youtube.com/watch?v=qqnEjmnitgc" target="_blank"><i class="fa fa-play"></i></a>
                            </div>
                            <div class="down-content">
                              <h4>Genshin Impact</h4>
                            </div>
                          </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                          <div class="item">
                            <div class="thumb">
                              <img src="assets/images/Honai.jpg" alt="" style="border-radius: 23px;">
                              <a href="https://www.youtube.com/watch?v=w8vPZrMFiZ4" target="_blank"><i class="fa fa-play"></i></a>
                            </div>
                            <div class="down-content">
                              <h4>Honkai Star Rail</h4>
                            </div>
                          </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                          <div class="item">
                            <div class="thumb">
                              <img src="assets/images/PUBG.jpg" alt="" style="border-radius: 23px;">
                              <a href="https://www.youtube.com/watch?v=URBy9t6e8rY" target="_blank"><i class="fa fa-play"></i></a>
                            </div>
                            <div class="down-content">
                              <h4>PUBG : Player Unknow Battleground</h4>
                            </div>
                          </div>
                        </div>
                        <div class="col-lg-12">
                          <div class="main-button">
                            <a href="#">Load More Games</a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
                       <% } else { %>
            <p>Không tìm thấy thông tin người chơi.</p>
        <% } %>
          </div>
          <!-- ***** Banner End ***** -->

   
     <!-- ***** Gaming Library Start ***** -->
          <div class="gaming-library profile-library">
            <div class="col-md-12">
              <div class="heading-section">
                <h4><em>Transaction History</em> </h4>
              </div>
              <div class="item">
                <ul>
              
                  <li><h4>MB bank</h4></li>
                   <li><h4>Content</h4><span>ID:123</span></li>
                  <li><h4>Date Added</h4><span>24/08/2036</span></li>
                   <li><div class="main-border-button border-no-active"><a href="#">120.000</a></div></li>
                </ul>
              </div>
              <div class="item">
                <ul>
                  <li><h4>MB bank</h4></li>
                  
                   <li><h4>Content</h4><span>ID:123</span></li>
                  <li><h4>Date Added</h4><span>22/06/2036</span></li>
                  <li><div class="main-border-button border-no-active"><a href="#">200.000</a></div></li>
                </ul>
              </div>
              <div class="item last-item">
                <ul>
                  <li><h4>MB bank</h4></li>
                  
                   <li><h4>Content</h4><span>ID:123</span></li>
                  <li><h4>Date Added</h4><span>21/04/2022</span></li>
                <li><div class="main-border-button border-no-active"><a href="#">120.000</a></div></li>
                </ul>
              </div>
            </div>
          </div>
          <!-- ***** Gaming Library End ***** -->
        </div>
      </div>
    </div>
  </div>
  
  <footer>
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <p>Copyright © 2024 <a href="#">FPTeam</a> Company. All rights reserved. 
    
        </div>
      </div>
    </div>
  </footer>


  <!-- Scripts -->
  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

  <script src="assets/js/isotope.min.js"></script>
  <script src="assets/js/owl-carousel.js"></script>
  <script src="assets/js/tabs.js"></script>
  <script src="assets/js/popup.js"></script>
  <script src="assets/js/custom.js"></script>


  </body>

</html>
