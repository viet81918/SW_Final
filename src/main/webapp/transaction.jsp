<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gamer Transaction Page</title>
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-cyborg-gaming.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
    <link rel="stylesheet" href="assets/css/Style.css">
</head>

<body>
    <!-- Preloader Start -->
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
    <!-- Preloader End -->
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

       <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="page-content">
                    
                    <h2>Gamer Transaction Page</h2>
                    <div class="wallet-balance">
                        <h3>Wallet Balance: $<span id="wallet-balance">100.00</span></h3>
                    </div>
                    <div class="transaction-history">
                        <h3>Transaction History</h3>
                        <ul id="transaction-history" style="color: #F0F5FF">
                            <!-- Transaction history items will be appended here -->
                        </ul>
                    </div>
                    <div class="payment-methods" style="color: #F0F5FF">
                        <h3>Payment Methods</h3>
                        <ul>
                            <li>Credit Card: <span>**** **** **** 1234</span></li>
                            <li>PayPal: <span>example@example.com</span></li>
                            <!-- Add more payment methods here -->
                        </ul>
                    </div>
                    <div class="make-payment">
                        <h3>Make Payment</h3>
                        <form id="payment-form">
                            <div class="form-group">
                                <label for="amount">Amount:</label>
                                <input type="number" class="form-control" id="amount" name="amount" required>
                            </div>
                            <div class="form-group">
                                <label for="payment-method">Payment Method:</label>
                                <select class="form-control" id="payment-method" name="payment-method" required>
                                    <option value="wallet">Wallet</option>
                                    <option value="credit-card">Credit Card</option>
                                    <option value="paypal">PayPal</option>
                                    <!-- Add more payment methods here -->
                                </select>
                            </div>
                            <button type="submit" class="btn btn-primary">Submit Payment</button>
                        </form>
                        <div id="payment-message" class="mt-3"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer and Scripts -->
    <footer>
        <!-- Footer content -->
    </footer>

    <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/isotope.min.js"></script>
    <script src="assets/js/owl-carousel.js"></script>
    <script src="assets/js/tabs.js"></script>
    <script src="assets/js/popup.js"></script>
    <script src="assets/js/custom.js"></script>
    <script src="custom.js"></script>
    
</body>

</html>
