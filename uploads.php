<?php
// Check if file was uploaded without errors
if (isset($_FILES["file"]) && $_FILES["file"]["error"] == 0) {
    // Get file properties
    $file_name = $_FILES["file"]["name"];
    $file_type = $_FILES["file"]["type"];
    $file_size = $_FILES["file"]["size"];
    $file_tmp = $_FILES["file"]["tmp_name"];

    // Get additional info from form inputs
    $name = $_POST["name"];

    // Move uploaded file to specified location
    move_uploaded_file($file_tmp, "uploads/" . $file_name);

    // Display success message
    echo "File uploaded successfully.";
} else {
    // Display error message
    echo "Error uploading file.";
}
?>
