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

		$query = "SELECT * FROM employee ORDER BY lname ASC";


		if ($result = mysqli_query($connection, $query))
		{ 
			echo "<table>
				<tr>
				<th>Last Name</th>
				<th>First Name</th>
				<th>Salary</th>
				</tr>";
			while ($row = $result -> fetch_assoc())
			{
				echo "<tr><td> (" . $row['lname'] . ")</td>
					<td>(" . $row['fname'] . ")</td>
					<td>(" . $row['salary'] . ")</td></tr>";
			}
			echo "</table>";
			mysqli_free_result($result);
		}
		mysqli_close($connection);
	?>
</body>
</html>