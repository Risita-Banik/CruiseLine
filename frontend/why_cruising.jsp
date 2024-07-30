<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!--BOOTSTRAP CSS-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/home.css">
    <!--FONT AWSOME-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
    <!-- Google Font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Alfa+Slab+One&family=Bad+Script&family=Poppins:ital,wght@1,200&display=swap" rel="stylesheet">
 <script>
        window.addEventListener('scroll',function(){
            const navbar = document.querySelector('.navbar');
            navbar.classList.toggle("sticky",window.scrollY > 50);
        });

  </script>
</head>
<body> 
    <%@include file="scroll.jsp"%>
    <%
      HttpSession sess=request.getSession(false);                
      %>
    <!--NAVBAR-->
    <nav class="navbar navbar-expand-lg navbar-light sticky-top" style="padding-left: 20px;">
        <div class="container-fluid">
          <img src="../images/newlogo.png" style="width: 5%;">
          <span style="font-size: 25px;color:white;">
          <i> Pearl <small style="color:rgb(247, 182, 4);font-size: 20px;">Cruise</small> Line</i>
          </span>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav ms-auto">
            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="home.jsp" style="color: whitesmoke;">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="cruise_deals.jsp" style="color: whitesmoke;">Cruise Deals</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="why_cruising.jsp" style="color: whitesmoke;">Why Pearl?</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="blogs.jsp" style="color: whitesmoke;">Cruise Blogs</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="contact.jsp" style="color: whitesmoke;">Contact Us</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="log_out.jsp" style="color: rgb(173, 165, 165);">Log out</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  
    <div style="padding: 20px;background-color:rgb(248, 246, 244) ;"
         data-aos="fade-left"
    data-aos-duration="2000">
      <span>
      <a href="review.jsp" style="padding: 20px;color: black;"><small>Cuise Reviews</small></a>
      <a href="" style="padding: 20px;color: black;"><small>Enquire Now</small></a>
      <span style="padding: 20px;"><i class="fas fa-phone"></i><small> +23-4587-5269</small></span>
      <span style="padding: 20px;"><i class="fas fa-envelope"></i><small> pearlcruise@gmail.com</small></span>
      </span>
    </div>

    <!-- div -->
    <div class="container mb-3 mt-3" style="border: 2px solid rgb(184, 179, 179);
         border-radius: 15px 15px 15px 15px;" data-aos="zoom-in-up" data-aos-duration="2000">
        <div class="row">
            <div class="col mt-2" >
                <p style="font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;font-size: 25px;padding-left: 10px;">  Why Pearl ?</p>
            </div>
        </div>
        <div class="row"  style="padding-left: 20px;padding-right: 20px;">
          <div class="col-md-7 mb-3" style="border: 2px solid rgb(211, 206, 206);border-radius: 10px 10px 10px 10px">
            <p class="mt-3" style="padding-left: 10px;">Still have two minds about taking a cruise? We are giving you 10 compelling reasons to consider a cruise for your next holiday! <br><br>
              You can watch movies, attend an enrichment lecture by experts, play backgammon or bridge. Cruise ships also offer high quality entertainment at night ranging from cabaret shows and musicals to comedy theatre, casinos, night clubs, bars etc.
              </p>  
            </div>
            <div class="col-md-1">
            </div>
            
            <div class="col-md-4 mb-3" style="border: 2px solid rgb(211, 206, 206);border-radius: 10px 10px 10px 10px">
                <p class="mt-3 contact" style="padding-left: 25px;">If you have any more questions, we would be glad to clarify. please contact our cruise consultants at </p>
                <p class="contact" style="padding-left: 25px;"><i class="fas fa-phone"></i> +23-4587-5269</p>
                <p class="contact" style="padding-left: 25px;"><i class="fas fa-envelope"></i> pearlcruise@gmail.com</p>
            </div>
        </div>
    </div>

    
<!-- attraction -->
<div class="container">
  <h1 class="att" style="margin-bottom: 0px;"
      data-aos="zoom-in" data-aos-duration="2000">Some Of Our Attractions</h1>
  <hr style="margin-top: 2px;">
</div>

<div class="container mt-3 mb-3">

  <div class="row">
    <div class="col mt-3 mb-3">
      <div class="card" data-aos="zoom-in-down" data-aos-duration="2000">
      <img src="../images/a1.jpg" style="height: 220px;" class="card-img-top" alt="...">
      <div class="card-body">
        <p class="card-text">In the competitive industry of cruise tourism, companies are pushing the limits with what can be built on their ships.

            From roller coasters to climbing walls, the things you can do on new cruise ships is incredible.</p></div>
    </div>
  </div>
  <div class="col mt-3 mb-3">
    <div class="card" data-aos="zoom-in-down" data-aos-duration="2000">
      <img src="../images/a22.jpg" style="height: 220px;" class="card-img-top" alt="...">
      <div class="card-body">
          <p class="card-text">Royal Caribbean is one of the largest cruise operators in the world, and in recent years they've made a point of ensuring they install the most creative and often unbelievable features on their ships.</p></div>
    </div>
</div>
<div class="col mt-3 mb-3">
    <div class="card" data-aos="zoom-in-down" data-aos-duration="2000">
      <img src="../images/a3.jpg" style="height: 220px;" class="card-img-top" alt="...">
      <div class="card-body">
        <p class="card-text">Their Quantum class vessels, which first set sail in 2014, are the third largest cruise ships in the world. Each have an attraction called North Star.

Essentially, it's a glass pod that's attached to a mechanical arm. </p>
      </div>
    </div>
</div>
<div class="col mt-3 mb-3">
    <div class="card" data-aos="zoom-in-down" data-aos-duration="2000">
      <img src="../images/a4.jpg" style="height: 220px;" class="card-img-top" alt="...">
      <div class="card-body">
        <p class="card-text">Cruise ships are so large they're almost like floating cities. Huge amounts of research and technology are involved in their design to ensure they're stable and comfortable at sea as possible.</p>
      </div>
    </div>
</div>
</div>
</div>

<!-- dining -->
<div class="container">
  <h1 class="att" style="margin-bottom: 0px;"
       data-aos="zoom-in" data-aos-duration="2000">Spectacular Dining Choices</h1>
  <hr style="margin-top: 2px;">
</div>

<div class="container">
<div class="row" style="margin-top: 10px;" data-aos="flip-left"
     data-aos-easing="ease-out-cubic"
     data-aos-duration="2000">
  <div class="col-md-3">
    <div class="hover13 column" style="margin-bottom: 25px;">
    <figure><img src="../images/pasta.jpg" style="height: 170px;" class="img-fluid rounded dining"></figure>
    </div>
  </div>
 
  <div class="col-md-3" >
    <div class="hover13 column" style="margin-bottom: 25px;">
    <figure><img src="../images/sushi2.jpg" style="height: 170px;width: 84%" class="img-fluid rounded dining"></figure>
    </div>
  </div>

  <div class="col-md-3">
    <div class="hover13 column" style="margin-bottom: 25px;">
    <figure><img src="../images/dessert.jpg" style="height: 170px;" class="img-fluid rounded dining"></figure>
    </div>
  </div>

  <div class="col-md-3">
    <div class="hover13 column" style="margin-bottom: 25px;">
    <figure><img src="../images/ch2.jpg" style="height: 170px;" class="img-fluid rounded dining"></figure>
    </div>
  </div>
</div>

<div class="row" style="margin-top: 10px;"data-aos="flip-right"
     data-aos-easing="ease-out-cubic"
     data-aos-duration="2000">
  <div class="col-md-3">
    <div class="hover13 column" style="margin-bottom: 25px;">
    <figure><img src="../images/chef.jpg" style="height: 170px;" class="img-fluid rounded dining"></figure>
    </div>
  </div>
 
  <div class="col-md-3" >
    <div class="hover13 column" style="margin-bottom: 25px;">
    <figure><img src="../images/prawn.jpg" style="height: 170px;" class="img-fluid rounded dining"></figure>
    </div>
  </div>

  <div class="col-md-3">
    <div class="hover13 column" style="margin-bottom: 25px;">
    <figure><img src="../images/drinks2.jpg" style="height: 170px;" class="img-fluid rounded dining"></figure>
    </div>
  </div>

  <div class="col-md-3">
    <div class="hover13 column" style="margin-bottom: 25px;">
    <figure><img src="../images/rice.jpg" style="height: 170px;width: 84%" class="img-fluid rounded dining"></figure>
    </div>
  </div>
</div>
</div>


<!-- show -->
<div class="container">
  <h1 class="att" style="margin-bottom: 0px;"
       data-aos="zoom-in" data-aos-duration="2000">Award-Winning Entertainment</h1>
  <hr style="margin-top: 2px;">
</div>

<div class="container mb-3">
  <div id="carouselExampleControls" class="carousel slide carousel-fade" data-bs-ride="carousel">
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="../images/e3.jpg" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
          <img src="../images/e4.jpg" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
          <img src="../images/e6.jpg" class="d-block w-100" alt="...">
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>
  </div>


<!--FOOTER-->
<div class="row" style="background-color: rgb(25, 25, 124); padding-left: 20px;">
  <div class="col-md-4 text-white pt-3">
        <img src="../images/newlogo.png" class="logo1">
          <span style="font-size: 25px;color:white;">
          <i> Pearl <small style="color:rgb(247, 182, 4);font-size: 20px;">Cruise</small> Line</i>
          </span>
        <h5 style="padding-left: 25px;" class="pt-3">PEARLCRUISELINE - A DIVISION OF ODYSSEY VACATIONS PVT. LTD.</h5>
        <p class="mt-3 footer" style="padding-left: 25px;">201 - 202, 2nd Floor, Jewel Tower<br> Lane No. 5,
        Koregaon Park<br> Pune 411001</p>
        <p class="footer" style="padding-left: 25px;"><i class="fas fa-phone"></i>+23-4587-5269</p>
        <p class="footer" style="padding-left: 25px;"><i class="fas fa-envelope"></i> pearlcruise@gmail.com</p>
      </div>

      <div class="col-md-4 text-white p-4">
        <h4>PEARLCRUISELINE PARTNERS</h4>

        <h5>Bangalore</h5>
        <p style="margin-bottom: 0px;" class="footer">BIT Air Travels Pvt. Ltd.</p>
        <p style="margin-bottom: 0px;" class="footer"><i class="fas fa-phone"></i> +91 96064 52955 / +91 99000 96898 / +91 98452 27249</p>
        <p class="footer"><i class="fas fa-envelope"></i> bangalore@cruisebay.in</p>

        <h5>Chennai</h5>
        <p style="margin-bottom: 0px;" class="footer">Adyar Travel Bureau</p>
        <p style="margin-bottom: 0px;" class="footer"><i class="fas fa-phone"></i> +91-98410 02681 / 044-4907 9100 / +91-98844 92684</p>
        <p class="footer"><i class="fas fa-envelope"></i> chennai@cruisebay.in</p>

        <h5>Chandigarh</h5>
        <p style="margin-bottom: 0px;" class="footer">STPL Vacations - a Div. of Shergill Travels Pvt. Ltd.</p>
        <p style="margin-bottom: 0px;" class="footer"><i class="fas fa-phone"></i> +91-8427672550 / +91-8283954399 / +91-172-5000600 / +91-172-5000500</p>
        <p class="footer"><i class="fas fa-envelope"></i> chd@cruisebay.in</p>
        <span>
          <a href=""><i class="fa-brands fa-square-facebook"></i></a>
          <a href=""><i class="fa-brands fa-square-instagram"></i></a>
          <a href=""><i class="fa-brands fa-youtube"></i></a>
          <a href=""><i class="fa-brands fa-linkedin"></i></a>
          <a href=""><i class="fa-brands fa-square-twitter"></i></a>
          <a href=""><i class="fa-brands fa-square-pinterest"></i></a>
        </span>

  </div>
  <div class="col-md-1 v mt-3"></div>
  <div class="col-md-3 text-white p-4">
    
     <a href="luxury.jsp">Luxury Cruises</a><br>
        <a href="premium.jsp">Premium Cruises</a><br>
        <a href="deluxe.jsp">Deluxe Cruises</a><br>
        <a href="river.jsp">River Cruises</a><br>
        <a href="family.jsp">Family Cruises</a>
  </div>
</div>

<!--last footer-->
<div style="background-color: rgb(247, 182, 4);" class="p-3"><p style="margin-bottom: 0px;">© PearlCruiseLine - A division of Odyssey Vacations Pvt. Ltd. All rights reserved.  |  Sitemap  |  Privacy Policy</p></div>
<!--JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>


</body>
</html>