<%-- 
    Document   : Login
    Created on : May 26, 2024, 5:53:50 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="assets/css/login_design.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    </head>
    <body>
    <div class="container">
        <div class="box">
            <div class="form sign_in">
                <h3>Sign In</h3>
                <span>or use your account</span>

                <form action="#" id="form_input">
                    <div class="type">
                        <input type="email" placeholder="Email" name="" id="email">

                    </div>
                    <div class="type">
                        <input type="password" placeholder="Password" name="" id="password">

                    </div>
                    
                    <div class="forgot">
                        <label for=""><input type="checkbox" ${(cookie.remember.value eq 'ON')? "checked":""} name="remember" value="ON"/>Remember</label>
                        <span><a href="ForgetPass.jsp">Forgot the password?</a></span>
                    </div>

                    <button class="btn bkg">Sign In</button>
                         
                </form>
            </div>
    
            <div class="form sign_up">
                <h3>Sign Up</h3>
                <span>or use your email for register</span>

                <form action="#" id="form_input">
                    <div class="type">

                        <input type="text" name="" placeholder="Name" id="name">
                    </div>
                    <div class="type">
                        
                        <input type="email" name="" placeholder="Email" id="email">
                    </div>
                    <div class="type">

                        <input type="password" name="" placeholder="Password" id="password">
                    </div>

                    <button class="btn bkg">Sign Up</button>
                </form>
            </div>
        </div>

        <div class="overlay">
            <div class="page page_signIn">
                <h3>Welcome Back!</h3>
                <p>Please log in with your personal information and have a nice time</p>

                <button class="btn btnSign-in">Sign Up <i class="bi bi-arrow-right"></i></button>
            </div>

            <div class="page page_signUp">
                <h3>Hello Friend!</h3>
                <p>Enter your personal details and start journey with us</p>

                <button class="btn btnSign-up">
                    <i class="bi bi-arrow-left"></i> Sign In</button>
            </div>
        </div>
    </div>
    

    <!-- link script -->
    <script>
        const container = document.querySelector('.container');
        const btnSignIn = document.querySelector('.btnSign-in');
        const btnSignUp = document.querySelector('.btnSign-up');

        btnSignIn.addEventListener('click', () => {
            container.classList.add('active');
        });

        btnSignUp.addEventListener('click', () => {
            container.classList.remove('active');
        });
    </script>
    
    
</body>
    
</html>
