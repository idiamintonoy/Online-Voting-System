<?php include ("./frames/header.php");
session_start();
if (isset($_SESSION['SESS_NAME'])!="") {
	header("Location: voter.php");
}
?>
<?php global $msg; echo $msg;?>

<p><center><legend><font color='#00004d' size='20'>Login To vote.</p>
<p>In order to make a vote you have to register first and then login.</font></legend></center>
    <p>&nbsp;&nbsp;</p>
<?php include ("./frames/footer.php");?>
