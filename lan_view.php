<html>
<head>
<style>
body  {
  background-image: url("./images/ec1.png");
  background-repeat: no-repeat;
  background-size: 1880px 880px;

  background-color: #ffffff;
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
?>
<center><h3> Voting So Far  </h3></center>
<?php
include ("./db/connection.php");
$member = mysqli_query($con, 'SELECT * FROM candidates' );
if (mysqli_num_rows($member)== 0 ) {
	echo '<font color="red">No results found</font>';
}
else {
	echo '<center><table><tr bgcolor="#80ffe1">
<td width="60px">ID</td>		
<td width="200px">Candidate Name</td>
<td width="200px">Party</td>
<td width="60px">VOTE</td>
</tr>';
while($mb=mysqli_fetch_object($member))
		{	
			$id=$mb->lan_id;
			$name=$mb->fullname;
			$about=$mb->about;
			$vote=$mb->votecount;
			echo '<tr bgcolor="#f2d8bb">';
	echo '<td>'.$id.'</td>';		
	echo '<td>'.$name.'</td>';
	echo '<td>'.$about.'</td>';
	echo '<td>'.$vote.'</td>';
	echo "</tr>";
		}
		echo'</table></center>';
	}
?>
</body>
</html>
