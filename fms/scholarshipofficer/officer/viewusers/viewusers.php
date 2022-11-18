<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <link rel="stylesheet" href="main.css">
</head>
<body>
    <div class="container">
        <table>
            <thead>
                <tr>
                    <th colspan="6" style="text-align: center;" >Users</th>
                    
                </tr>
            </thead>
            <tbody>
                <tr>
                    
                    <th>Name</th>
                    <th>User Name</th>
                    <th>Phone</th>
                    <th>Password</th>
                    <th>Date</th>
                </tr>
                
                    <?php
                    $conn = mysqli_connect("localhost", "root", "", "login_sample_db");
                    // Check connection
                    if ($conn->connect_error) {
                    die("Connection failed: " . $conn->connect_error);
                    }
                    $sql = "SELECT name,user_name,phone,password,date FROM users";
                    $result = $conn->query($sql);
                    if ($result->num_rows > 0) {
                    // output data of each row
                    while($row = $result->fetch_assoc()) {
                    echo "<tr>
                    <td>" . $row["name"] . "</td>
                    <td>". $row["user_name"] . "</td>
                    <td>". $row["phone"] . "</td>
                    <td>". $row["password"] . "</td>
                    <td>". $row["date"]. "</td>
                    </tr>";
                    }
                    echo "</table>";
                    } else { echo "0 results"; }
                    $conn->close();
                    ?>
                   
                    
                
            </tbody>
        </table>
    </div>
</body>
</html>