<!-- Based on https://code-boxx.com/simple-php-file-upload/ -->
<!--https://www.w3schools.com/php/php_file_upload.asp -->
<?php
$target_dir="uploads/";

for ($i=0; $i<count($_FILES['filename']['name']); $i++) {
  $source = $_FILES["filename"]["tmp_name"][$i];
  $destination = $_FILES["filename"]["name"][$i];
  $target_file="$target_dir$destination";

  if (move_uploaded_file($source, $target_file))
  {
    echo "The file has been uploaded.";
  } 
  else {
    echo "Sorry, there was an error uploading your file.";
  }
  echo "<br />Log Support Status: ";
  echo file_get_contents('status.txt');
}
?>
