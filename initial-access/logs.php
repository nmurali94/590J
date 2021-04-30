<!DOCTYPE html>
<!-- Based on https://code-boxx.com/simple-php-file-upload/ -->
<html>
<title>590J Log portal</title>
<h1>Log Portal</h1>

<form action="upload.php" enctype="multipart/form-data" method="POST" />
Upload your error logs<br/>
<input type="file" name="filename[]" multiple="multiple" required> <br />
<input type="submit" value="Upload" name="submit"/>
</form>

<!--Support Status:<?php echo file_get_contents('status.txt'); ?> -->
</html>
