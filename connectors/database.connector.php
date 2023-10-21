<?php
$conexio = mysqli_connect("localhost", "root", "") or die("Fatal error: Localhost Connection");
$bd = mysqli_select_db($conexio, "motogp") or die("Fatal error 015: DB error");

$query = $_POST['query'];

$consulta = mysqli_query($conexio, $query);

if ($consulta) {
    $data = array(); // Create an array to store the results

    while ($row = mysqli_fetch_array($consulta, MYSQLI_ASSOC)) {
        $data[] = $row; // Add each row as an element to the array
    }

    // Convert the array into a JSON string
    $json = json_encode($data);

    // Return the JSON string as the response
    echo $json;
} else {
    echo "Error in the query: " . mysqli_error($conexio);
}
?>
