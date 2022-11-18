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
                    <th colspan="6" style="text-align: center;" >Query</th>
                    
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th>Serial Number</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Message</th>
                    
                </tr>
                
                    <?php
                    $conn = mysqli_connect("localhost", "root", "", "query_data");
                    // Check connection
                    if ($conn->connect_error) {
                    die("Connection failed: " . $conn->connect_error);
                    }
                    $sql = "SELECT id, name,email,message FROM user_form";
                    $result = $conn->query($sql);
                    if ($result->num_rows > 0) {
                    // output data of each row
                    while($row = $result->fetch_assoc()) {
                    echo "<tr><td>" . $row["id"]. "</td><td>" . $row["name"] . "</td><td>". $row["email"] . "</td><td>". $row["message"] . "</td></tr>";
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