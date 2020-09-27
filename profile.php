
<html>
<head>
<style>

#candidates {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#candidates td, #candidates th {
  border: 1px solid #ddd;
  padding: 8px;
}

#candidates tr:nth-child(even){background-color: #f2f2f2;}

#candidates tr:hover {background-color: #a9d9b6;}

#candidates th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
</head>
<body>


<?php
if(!isset($_SESSION)) { 
session_start();
}
include ("./db/auth.php");
include ("./frames/header_voter.php");
include ("./db/connection.php");

?>



<h4> Welcome <?php echo $_SESSION['SESS_NAME']; ?> </h4>

<table id="candidates">
<tr>

<th>Information</th>
</tr>

<tr><td>

<?php
$username = $_SESSION['SESS_NAME'];
$sql = mysqli_query($con,'SELECT firstname FROM voters WHERE username="'.$_SESSION['SESS_NAME'].'" ');

$row = mysqli_fetch_assoc($sql);
        echo "First_Name: " . " " . $row['firstname'];
        ?>
</td></tr>
<tr><td>

<?php
$username = $_SESSION['SESS_NAME'];
$sql = mysqli_query($con,'SELECT lastname FROM voters WHERE username="'.$_SESSION['SESS_NAME'].'" ');

$row = mysqli_fetch_assoc($sql);
        echo "Last_Name: " . " " . $row['lastname'];
        ?>
</td></tr>






<tr><td>

<?php
$username = $_SESSION['SESS_NAME'];
$sql = mysqli_query($con,'SELECT voteridnumber FROM voters WHERE username="'.$_SESSION['SESS_NAME'].'" ');

$row = mysqli_fetch_assoc($sql);
        echo "Voter Id number: " . " " . $row['voteridnumber'];
        ?>
</td></tr>

<tr><td>

<?php
$username = $_SESSION['SESS_NAME'];
$sql = mysqli_query($con,'SELECT phonenumber FROM voters WHERE username="'.$_SESSION['SESS_NAME'].'" ');

$row = mysqli_fetch_assoc($sql);
        echo "Phone Number: " . " " . $row['phonenumber'];
        ?>
</td></tr>

<tr><td>

<?php
$username = $_SESSION['SESS_NAME'];
$query = 'SELECT status FROM voters WHERE username="'.$_SESSION['SESS_NAME'].'" AND status = "VOTED"';
if ($result = mysqli_query($con,$query)) {
if (mysqli_num_rows($result) > 0) {
$sql = mysqli_query($con, 'SELECT voted from voters WHERE username="'.$_SESSION['SESS_NAME'].'"');
$row = mysqli_fetch_assoc($sql);
        echo "You have voted for: " . " " . $row['voted'];
    } else {
        echo "You have not voted yet. Please submit your vote!";
    }
}

?></td></tr>




</body>
</html>
