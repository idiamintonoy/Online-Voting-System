<script src='https://www.google.com/recaptcha/api.js'></script>
<?php include ("./frames/header.php");
if(!isset($_SESSION)) {
session_start();
}
if (isset($_SESSION['SESS_NAME'])!="") {
	header("Location: voter.php");
}
?>
<br>
<br>
<center>
<legend> <h3> Register </h3></legend> </center>
<?php global $nam; echo $nam; ?> 
<?php global $error; echo $error; ?>
<center><font size="4" >
<form action= "reg_action.php" method= "post" id="myform" >
Firstname:
<input type="text" name="firstname" value="" />
<br>
<br>
Lastname: 
<input type="text" name="lastname" value="" />
<br>
<br>
Username: 
<input type="text" name="username" value="" />
<br>
<br>
Voteridnumber: 
<input type="text" name="voteridnumber" value="" />
<br>
<br>
Phonenumber: 
<input type="text" name="phonenumber" value="" />
<br>
<br>
Password: 
<input type="password" name="password" value="" />
<br>
<br>
<div class="g-recaptcha" data-sitekey="6LeD3hEUAAAAAKne6ua3iVmspK3AdilgB6dcjST0"></div> 
<br>
<br>
<input type="submit" name="submit" value="Next" />
</form>
</font>
</center>
<script type= "text/javascript" >
 var frmvalidator = new Validator("myform"); 
 frmvalidator.addValidation("firstname","req","Please enter your firstname"); 
 frmvalidator.addValidation("firstname","maxlen=50");
 frmvalidator.addValidation("lastname","req","Please enter your lastname"); 
 frmvalidator.addValidation("lastname","maxlen=50");
 frmvalidator.addValidation("username","req","Please enter your username"); 
 frmvalidator.addValidation("username","maxlen=50");
 frmvalidator.addValidation("voteridnumber","req","Please enter your VoterIdNumber"); 
 frmvalidator.addValidation("voteridnumber","maxlen=50");
 frmvalidator.addValidation("phonenumber","req","Please enter your PhoneNumber"); 
 frmvalidator.addValidation("phonenumber","maxlen=50");
 frmvalidator.addValidation("password","req","Please enter your password"); 
 frmvalidator.addValidation("password","minlen=6","Password must not be less than 6 characters.");

</script>
<?php include ("./frames/footer.php") ;?>
