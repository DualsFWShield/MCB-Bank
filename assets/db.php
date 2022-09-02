<?php
    $con = new mysqli('localhost','root','','mybank');
    define('bankName', 'MCB Bank',true);
    $ar = $con->query("select * from userAccounts, branch where id = '$_SESSION[userId]' AND userAccounts.branch = branch.branchId");
    # Undefined array key “userId” in C:\xampp\htdocs\bank\assets\db.php on line 4
    $userData = $ar->fetch_assoc();
?>
<script type="text/javascript">
	$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})
</script>
