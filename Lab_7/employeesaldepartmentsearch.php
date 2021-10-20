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

		$query = $_GET['salary'];
		$query1 = $_GET['department'];
		$query2 = $_GET['ssn'];

		$rawresult = "SELECT a.lname, a.fname, b.department, a.salary FROM employee a, department b WHERE a.dno = b.dnumber 
		AND a.salary LIKE '%".$query."%' AND d.department LIKE '%".$query1."%' AND a.ssn LIKE '%".$query2."%'";


		if ($result = mysqli_query($connection, $rawresult))
		{ 
			echo "<table>
				<tr>
				<th>Employee Last Name</th>
				<th>Employee First Name</th>
				<th>Department Name</th>
				<th>Salary</th>
				</tr>";
			while ($row = $result -> fetch_assoc())
			{
				echo "<tr><td> (" . $row['lname'] . ")</td>
					<td>(" . $row['fname'] . ")</td>
					<td>(" . $row['department'] . ")</td>
					<td>(" . $row['salary'] . ")</td></tr>";
					
			}
			echo "</table>";
			mysqli_free_result($result);
		}
		mysqli_close($connection);
	?>
</body>
</html>