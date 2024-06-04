<%-- 
    Document   : UploadGame
    Created on : May 27, 2024, 11:59:07 PM
    Author     : LENOVO
--%>


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
                    <a href="Home.jsp" class="logo">
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
                        <li><a href="Home.jsp" class="active">Home</a></li>
                        <li><a href="browse.html">Browse</a></li>
                        <li><a href="details.html">Details</a></li>
                        <li><a href="streams.html">Streams</a></li>
                        <li><a href="profile.html">Profile <img src="assets/images/profile-header.jpg" alt=""></a></li>
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

    <!-- ***** Game Presentation Start ***** -->
    <section class="game-presentation">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading">
                          <h2>Our BestSeller Games</h2>
                        <span>Top 6 bestseller games</span>
                    </div>
                    <div class="game-box">
                        <img src="assets/images/24252.jpg" alt="Game Avatar" class="game-avatar">
                        <div class="game-description">
                            <h2>Clannad</h2>
                               <p class="best-seller">Number of Buyer: 100</p>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                        </div>
                    </div>
                    <div class="game-box">
                        <img src="assets/images/68753.jpg" alt="Game Avatar" class="game-avatar">
                        <div class="game-description">
                            <h2>Game Title 2</h2>
                               <p class="best-seller">Number of Buyer: 99</p>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                        </div>
                    </div>
                    <div class="game-box">
                        <img src="assets/images/46806.jpg" alt="Game Avatar" class="game-avatar">
                        <div class="game-description">
                            <h2>Game Title 3</h2>
                               <p class="best-seller">Number of Buyer: 98</p>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                        </div>
                    </div>
                     <div class="game-box">
                        <img src="assets/images/58250.jpg" alt="Game Avatar" class="game-avatar">
                        <div class="game-description">
                            <h2>Clannad</h2>
                               <p class="best-seller">Number of Buyer: 97</p>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                        </div>
                    </div>
                     <div class="game-box">
                        <img src="assets/images/7063.jpg" alt="Game Avatar" class="game-avatar">
                        <div class="game-description">
                            <h2>Clannad</h2>
                               <p class="best-seller">Number of Buyer: 96</p>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                        </div>
                    </div>
                     <div class="game-box">
                        <img src="assets/images/Ace-Attorney.webp" alt="Game Avatar" class="game-avatar">
                        <div class="game-description">
                            <h2>Clannad</h2>
                               <p class="best-seller">Number of Buyer: 95</p>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                        </div>
                    </div>
                </div>
            </div>
             <!-- Pagination Controls -->
           
        </div>
    </section>
    <!-- ***** Game Presentation End ***** -->



<!-- Button to show the chart -->
<button id="showChartBtn" class="btn btn-primary">Show Chart</button>

<!-- Chart container -->
<div id="chartContainer" style="display: none;">
    <canvas id="myChart"></canvas>
</div>


   

       <footer>
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <p>Copyright © 2036 <a href="#">Cyborg Gaming</a> Company. All rights reserved. 
          
          <br>Design: <a href="https://templatemo.com" target="_blank" title="free CSS templates">TemplateMo</a></p>
        </div>
      </div>
    </div>
  </footer>
        <!-- jQuery -->
        <script src="assets/js/jquery-2.1.0.min.js"></script>

        <!-- Bootstrap -->
        <script src="assets/js/popper.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
        <!-- Plugins -->
        <script src="assets/js/owl-carousel.js"></script>
        <script src="assets/js/accordions.js"></script>
        <script src="assets/js/datepicker.js"></script>
        <script src="assets/js/scrollreveal.min.js"></script>
        <script src="assets/js/waypoints.min.js"></script>
        <script src="assets/js/jquery.counterup.min.js"></script>
        <script src="assets/js/imgfix.min.js"></script>
        <script src="assets/js/slick.js"></script>
        <script src="assets/js/lightbox.js"></script>
        <script src="assets/js/isotope.js"></script>

        <!-- Global Init -->
        <script src="assets/js/custom.js"></script>
        <script>
        
  // Function to toggle chart visibility
    function toggleChartVisibility() {
        const chartContainer = document.getElementById('chartContainer');
        chartContainer.style.display = chartContainer.style.display === 'none' ? 'block' : 'none';
    }

    // Add event listener to the button
    document.getElementById('showChartBtn').addEventListener('click', function() {
        toggleChartVisibility();
        if (chartContainer.style.display === 'block') {
            // Call function to generate chart when button is clicked and chart is visible
            generateChart();
        }
    });

    // Function to generate the chart
    function generateChart() {
        const ctx = document.getElementById('myChart').getContext('2d');
        const myChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: ['Game 1', 'Game 2', 'Game 3', 'Game 4', 'Game 5', 'Game 6'], // Add your game names here
                datasets: [{
                    label: 'Number of Buyers',
                    data: [100, 99, 98,97,96,95], // Add the number of buyers for each game here
                    backgroundColor: [
                        'rgba(255, 99, 132, 0.2)',
                        'rgba(54, 162, 235, 0.2)',
                        'rgba(255, 206, 86, 0.2)'
                    ],
                    borderColor: [
                        'rgba(255, 99, 132, 1)',
                        'rgba(54, 162, 235, 1)',
                        'rgba(255, 206, 86, 1)'
                    ],
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
    }


        
        </script>
    </body>

</html>
