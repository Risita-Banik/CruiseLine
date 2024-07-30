<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  
<head>
    
    <link href=
'https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'>
  
    <script src=
'https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js'>
    </script>
  
    <script src=
'https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'>
    </script>
  
    <link rel="stylesheet" href="styles.css">
</head>
  
<body>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-11 col-sm-9 col-md-7 
                col-lg-6 col-xl-5 text-center p-0 mt-3 mb-2">
                <div class="px-0 pt-4 pb-0 mt-3 mb-3">
                    <form id="form" action="" method="POST">
                        <ul id="progressbar">
                            <li class="active" id="step1">
                                <strong>WHERE</strong>
                            </li>
                            <li id="step2"><strong>WHAT</strong></li>
                            <li id="step3"><strong>YOUR INFORMATION</strong></li>
                            <li id="step4"><strong>SUBMIT INFO</strong></li>
                        </ul>
                        <div class="progress">
                            <div class="progress-bar"></div>
                        </div> <br>
    <!--start-->                    
                        <fieldset>
                            <div class="form-control mt-3" style="width: 50%;left:25%;position: absolute;
                                 padding-bottom: 10px;background-color: rgba(25,25,124);">
                            <h2 style="text-align:center;color:white;padding-top: 15px;" >
                  Where did you lose your item?</h2>
              <h3 class="heading" style="text-align:left;margin-left: 25px;">Your Email</h3>
              <input type="email" name="email" placeholder="Your Email Address" style="padding:10px;width: 90%;" required>
              <h5 style="margin: 0;color:rgb(178, 190, 181);text-align:left;margin-left: 25px;">(Enter a valid E-mail address you will like us to contact on)</h5>
              
              <h3 class="heading" style="text-align:left;margin-left: 25px;">
                     Cell Phone
              </h3>
              <input type="text" name="phone" placeholder="Phone Number" style="padding:10px;width: 90%;" required>
              <h3 class="heading" style="text-align:left;margin-left: 25px;">
                     Ship
              </h3>
              <select name="ship" id="ship" style="padding:10px;width: 93%;background-color: rgb(209, 210, 212);text-align:left;" required="">
                     <option disable="" selected="" style="background-color: rgb(72, 71, 71);color: aliceblue;">-SELECT-</option>
                     <option style="background-color: rgb(72, 71, 71);color: aliceblue;">Pride of American</option>
                     <option style="background-color: rgb(72, 71, 71);color: aliceblue;">Norwegian Gateway</option>
                     <option style="background-color: rgb(72, 71, 71);color: aliceblue;">Norwegian Sky</option>
                     <option style="background-color: rgb(72, 71, 71);color: aliceblue;">Norwegian Sun</option>
              </select>
              <h3 class="heading" style="text-align:left;margin-left: 25px;">
                     Sail Date
              </h3>
              <input type="text" name="sail_date" placeholder="Departure Date" onfocus="(this.type='date')" style="padding:10px;width: 90%;" required="">
              <h3 class="heading" style="text-align:left;margin-left: 25px;">
                     Departure Port
              </h3>
              <input type="text" name="departure_port" placeholder="Departure Port" style="padding:10px;width: 90%;" required=""><br><br>
              <h3 class="heading" style="text-align:left;margin-left: 25px;">
                     Location Item/Bag Was Lost
              </h3>
              <select name="ship" id="ship" style="padding:10px;width: 93%;;background-color: rgb(209, 210, 212);text-align:left;" required="">
                     <option disable="" selected="" style="background-color: rgb(72, 71, 71);color: aliceblue;">-SELECT-</option>

              </select>
              <h3 class="heading" style="text-align:left;margin-left: 25px;">
                     Debark Port
              </h3>
              <input type="text" name="debark_port" placeholder="Debark Port" style="padding:10px;width: 90%;" required="">
              <h3 class="heading" style="text-align:left;margin-left: 25px;">
                     Debarkation Date
              </h3>
              <input type="text" name="debarkation_date" placeholder="Debarkation Date" onfocus="(this.type='date')" style="padding:10px;width: 90%;" required="">
              </div>
                            <input type="button" name="next-step" 
                                class="next-step" value="Next Step">
                            
                            
                        </fieldset>
    <!next-->                    
                        <fieldset>
                            <h2>Welcome To GFG Step 2</h2>
                            <input type="button" name="next-step" 
                                class="next-step" value="Next Step" />
                            <input type="button" name="previous-step" 
                                class="previous-step" 
                                value="Previous Step" />
                        </fieldset>
    <!next-->                     
                        <fieldset>
                            <h2>Welcome To GFG Step 3</h2>
                            <input type="button" name="next-step" 
                                class="next-step" value="Final Step" />
                            <input type="button" name="previous-step" 
                                class="previous-step" 
                                value="Previous Step" />
                        </fieldset>
    <!next-->                     
                        <fieldset>
                            <div class="finish">
                                <h2 class="text text-center">
                                    <strong>FINISHED</strong>
                                </h2>
                            </div>
                            <input type="submit" name="submit" 
                                class="next-step" value="Submit">
                        </fieldset>
                        
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
<script src="script.js"></script>
  
</html>