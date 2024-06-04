<%-- 
    Document   : SearchResult
    Created on : May 28, 2024, 1:53:10 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
                          <h2>Search Result</h2>
                    </div>
                    <!-- Filter Form -->
<form id="filterForm">
    <div class="form-row">
        <!-- Category Filter -->
        <div class="form-group col-md-12">
            <label for="categoryFilter">Category</label>
            <select class="form-control" id="categoryFilter">
                <option value="">Original</option>
                <option value="action">Prequel</option>
                <option value="adventure">Sequel</option>
                <!-- Add more categories as needed -->
            </select>
        </div>
         <!-- Genre Filter -->
                        <div class="form-group col-md-12">
                            <label for="genreFilter">Genre</label>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="genre1" value="Action">
                                        <label class="form-check-label" for="genre1">Action</label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="genre2" value="Adventure">
                                        <label class="form-check-label" for="genre2">Adventure</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="genre3" value="Romance">
                                        <label class="form-check-label" for="genre3">Romance</label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="genre4" value="Detective">
                                        <label class="form-check-label" for="genre4">Detective</label>
                                    </div>
                                </div>
                            </div>
                        </div>
        <!-- Name Filter -->
        <div class="form-group col-md-12">
            <label for="nameFilter">Name</label>
            <input type="text" class="form-control" id="nameFilter" placeholder="Enter game name">
        </div>
        <div class="form-group">
                                <label for="gameName">Game Publisher</label>
                                <input type="text" class="form-control" id="gamePublisher" placeholder="Enter Game Publisher">
                            </div>
        <!-- Year of Publication Filter -->
        <div class="form-group col-md-12">
            <label for="yearFilter">Year of Publication</label>
            <input type="number" class="form-control" id="yearFilter" placeholder="Enter year">
        </div>
    </div>
    <div class="form-row">
        <!-- Language Filter -->
        <div class="form-group col-md-12">
            <label for="languageFilter">Languages </label>
            <div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" id="EN" value="EN">
                    <label class="form-check-label" for="Lan1">EN</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" id="VN" value="VN">
                    <label class="form-check-label" for="Lan2">VN</label>
                </div>
                <!-- Add more genres as needed -->
            </div>
        </div>
        <!-- Price Filter -->
        <div class="form-group col-md-12">
                                <label for="price">Price</label>
                                <div class="input-group">
                                    <input type="number" class="form-control" id="priceAmount" placeholder="Enter price">
                                    <div class="input-group-append">
                                        <select class="custom-select" id="priceCurrency">
                                            <option value="USD">Lower</option>
                                            <option value="EUR">Upper</option>
                                            <!-- Add more currencies as needed -->
                                        </select>
                                    </div>
                                </div>
                            </div>
        <!-- Submit Button -->
        <div class="form-group col-md-2">
            <button type="submit" class="btn btn-primary">Apply Filters</button>
        </div>
    </div>
</form>

                    <div class="game-box">
                        <img src="assets/images/24252.jpg" alt="Game Avatar" class="game-avatar">
                        <div class="game-description">
                            <h2>Clannad</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                        </div>
                    </div>
                    <div class="game-box">
                        <img src="assets/images/68753.jpg" alt="Game Avatar" class="game-avatar">
                        <div class="game-description">
                            <h2>Game Title 2</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                        </div>
                    </div>
                    <div class="game-box">
                        <img src="assets/images/46806.jpg" alt="Game Avatar" class="game-avatar">
                        <div class="game-description">
                            <h2>Game Title 3</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                        </div>
                    </div>
                     <div class="game-box">
                        <img src="assets/images/58250.jpg" alt="Game Avatar" class="game-avatar">
                        <div class="game-description">
                            <h2>Clannad</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                        </div>
                    </div>
                     <div class="game-box">
                        <img src="assets/images/7063.jpg" alt="Game Avatar" class="game-avatar">
                        <div class="game-description">
                            <h2>Clannad</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                        </div>
                    </div>
                     <div class="game-box">
                        <img src="assets/images/Ace-Attorney.webp" alt="Game Avatar" class="game-avatar">
                        <div class="game-description">
                            <h2>Clannad</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                        </div>
                    </div>
                </div>
            </div>
             <!-- Pagination Controls -->
           
        </div>
    </section>
    <!-- ***** Game Presentation End ***** -->





  
  
  
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


  <!-- Scripts -->
  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
  <script >  
  document.addEventListener('DOMContentLoaded', function () {
    const filterForm = document.getElementById('filterForm');
    const gameItems = document.querySelectorAll('.game-item');

    filterForm.addEventListener('submit', function (e) {
        e.preventDefault();
        const selectedGenres = Array.from(document.querySelectorAll('#filterForm input[type="checkbox"]:checked')).map(checkbox => checkbox.value);

        gameItems.forEach(item => {
            const itemGenre = item.getAttribute('data-genre');
            if (selectedGenres.length === 0 || selectedGenres.includes(itemGenre)) {
                item.style.display = 'block';
            } else {
                item.style.display = 'none';
            }
        });
    });
});


</script>
  <script src="assets/js/isotope.min.js"></script>
  <script src="assets/js/owl-carousel.js"></script>
  <script src="assets/js/tabs.js"></script>
  <script src="assets/js/popup.js"></script>
  <script src="assets/js/custom.js"></script>


  </body>

</html>

