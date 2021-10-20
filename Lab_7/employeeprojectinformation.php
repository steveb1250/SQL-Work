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

		$query = "SELECT a.lname, a.fname, b.dependent_name, b.relationship FROM employee a, debendent b WHERE a.ssn=b.essn 
		AND a.ssn LIKE '%".$query."%'";


		if ($result = mysqli_query($connection, $query))
		{ 
			echo "<table>
				<tr>
				<th>Last Name</th>
				<th>First Name</th>
				<th>Project Name</th>
				<th>Hours Worked</th>
				<th>Department Name</th>
				<th>Manager Last Name</th>
				</tr>";
			while ($row = $result -> fetch_assoc())
			{
				echo "<tr><td> (" . $row['lname'] . ")</td>
					<td>(" . $row['fname'] . ")</td>
					<td>(" . $row['pname'] . ")</td>
					<td>(" . $row['pno'] . ")</td>
					<td>(" . $row['dname'] . ")</td>
					<td>(" . $row['lname'] . ")</td></tr>";
					
			}
			echo "</table>";
			mysqli_free_result($result);
		}
		mysqli_close($connection);
	?>
</body>
</html>