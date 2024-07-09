<?php
	// Start the session.
	session_start();
	if(!isset($_SESSION['user'])) header('location: login.php');

	$user = $_SESSION['user'];

?>

<!DOCTYPE html>
<html>
<head>
	<title>Point of Sales</title>
	<link rel="stylesheet" type="text/css" href="css/login.css">
	<script src="https://use.fontawesome.com/0c7a3095b5.js"></script>
</head>
<body>
	<div id="dashboardMainContainer">
		<?php include('partials/app-sidebar.php') ?>
		<div class="dasboard_content_container" id="dasboard_content_container">
			<?php include('partials/app-topnav.php') ?>
			<div class="dashboard_content">
				<div class="dashboard_content_main">
                <div class="row">
                            <div class="column column-7">                                
                                <div class="searchInputContainer">
                                    <input type="text" placeholder="Search Product...">
                                </div> 
                                <div class="searchResultContainer">
                                    <div class="row">
                                        <div class="col-4">
                                            <div class="productResultContainer">
                                            <img src="images\sakto.png" alt="">
                                            <div class="productInfoContainer">
                                                <div class="row">
                                                    <div class="col-md-8">
                                                        <p class="productName">1.5kg Sakto</p>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <p class="productPrice">P155.00</p>
                                                    </div>
                                                </div>
                                            </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="productResultContainer">
                                            <img src="images\11kg.png" alt="">
                                            <div class="productInfoContainer">
                                                <div class="row">
                                                    <div class="col-md-8">
                                                        <p class="productName">11kg Cylinder</p>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <p class="productPrice">P1016.00</p>
                                                    </div>
                                                </div>
                                            </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="productResultContainer">
                                            <img src="images\50kg.png" alt="">
                                            <div class="productInfoContainer">
                                                <div class="row">
                                                    <div class="col-md-8">
                                                        <p class="productName">50kg Cylinder</p>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <p class="productPrice">P1200.00</p>
                                                    </div>
                                                </div>
                                            </div>
                                            </div>
                                        </div>
                                    </div>
                                </div> 
                            </div>
                            <div class="column column-5 posOrderContainer">
                                <div class="pos_header">
                                    <div class="setting alignRight">
                                        <a href="javascript:void(0)"><i class="fa fa-gear"> </i></a>
                                    </div>
                                    <p class="logo">IMS</p>
                                    <p class="timeAndDate">XXX XX, XXXX    XX:XX:XX XX</p>
                                </div>
                                <div class="pos_items_container">
                                    <div class="pos_items">
                                        <p class="itemNoData">No data</p>
                                    </div>
                                    <div class="item_total_container">
                                        <p class="item_total">
                                            <span class="item_total--label">TOTAL</span>
                                            <span class="item_total--value">P0.00</span>
                                        </p>
                                    </div>
                                </div>
                                <div class="checkoutBtnContainer">
                                    <a href="javascript:void(0)" class="checkoutBtn">CHECKOUT</a>
                                </div>
                            </div>
                    </div>
			</div>
		</div>
	</div>
        <script src="js\pos_script.js?v=<?= time() ?>"> </script>
        <?php include('partials\app-scripts.php'); ?>
</body>
</html>