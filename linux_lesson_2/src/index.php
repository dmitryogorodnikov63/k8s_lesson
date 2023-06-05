<html lang="en">
  <head>
    <title>Russian Far East Regions</title>
    <link rel="stylesheet" href="style.css" type="text/css" />
  </head>
  <body>
    <h1>Regions</h1>
    <table>
      <tr>
        <th>Full name</th>
        <th>Login</th>
        <th>Address</th>
      </tr>
      <?php
				$mysqli = new mysqli($_ENV["MYSQL_HOST"],
            $_ENV["MYSQL_USER"],
              $_ENV["MYSQL_PASSWORD"],
              $_ENV["MYSQL_SKILLFACTORY_DATABASE_NAME"]
          );
        foreach ($mysqli->query("SELECT * FROM users") as $row) {
        echo "
        <tr>
          <td>{$row['full_name']}</td>
          <td>{$row['login']}</td>
          <td>{$row['address']}</td>
        </tr>
      "; } 
      ?>
    </table>
    <?php
			phpinfo();
		?>
  </body>
</html>
