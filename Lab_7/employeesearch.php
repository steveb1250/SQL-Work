<!DOCTYPE html>
<html>
<head>
	<title>Simple Database Access</title>
</head>
<body>


	<?php

		
		$db_hostname = "localhost";
		$db_username = "smoody";
		$db_password = "smoody2021";
		$db_database = "smoody";

		$connection = mysqli_connect($db_hostname, $db_username, $db_password);
		if (!$connection) die ("Unable to connect to MySQL: " .mysqli_error($connection));
		$db_select = mysqli_select_db($connection, $db_database);
		if (!$db_select) die ("Unable to select database: " .mysqli_error($connection));

		$query = $_GET['query'];

		$rawresult = "SELECT a.lname, a.fname, b.dependent_name, b.relationship FROM employee a, dependent b WHERE a.ssn = b.essn 
		AND a.ssn LIKE '%".$query."%'";


		if ($result = mysqli_query($connection, $rawresult))
		{ 
			echo "<table>
				<tr>
				<th>Employee Last Name</th>
				<th>Employee First Name</th>
				<th>Dependent Name</th>
				<th>Relationship</th>
				</tr>";
			while ($row = $result -> fetch_assoc())
			{
				echo "<tr><td> (" . $row['lname'] . ")</td>
					<td>(" . $row['fname'] . ")</td>
					<td>(" . $row['dependent_name'] . ")</td>
					<td>(" . $row['relationship'] . ")</td></tr>";
					
			}
			echo "</table>";
			mysqli_free_result($result);
		}
		mysqli_close($connection);
	?>
</body>
</html>