<!DOCTYPE html>
<html>
<head>
    <title>Redlock Users</title>
</head>
<body>
    <h2>2502018493 Irsyad Muhammad Fawwaz</h2>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Nama</th>
                <th>Alamat</th>
                <th>Jabatan</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $host = 'db';

            $user = 'root';
            $pass = 'MYSQL_ROOT_PASSWORD';
            $dbname = 'Redlock';

            $mysqli = new mysqli($host, $user, $pass, $dbname);
            if ($mysqli->connect_error) {
                die("Connection failed: " . $mysqli->connect_error);
            }

            $sql = "SELECT * FROM users";
            $result = $mysqli->query($sql);
            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    echo "<tr>";
                    echo "<td>" . $row["ID"] . "</td>";
                    echo "<td>" . $row["Nama"] . "</td>";
                    echo "<td>" . $row["Alamat"] . "</td>";
                    echo "<td>" . $row["Jabatan"] . "</td>";
                    echo "</tr>";
                }
            } else {
                echo "<tr><td colspan='4'>No results found</td></tr>";
            }

            $mysqli->close();
            ?>
        </tbody>
    </table>
</body>
</html>