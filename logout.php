<?php
session_start();
echo "<script>alert('Anda berhasil Logout');</script>";
echo "<meta http-equiv='refresh' content='0; url=index.html'>";
session_destroy();
?>