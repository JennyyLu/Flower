<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="./product.css">
<link rel="stylesheet" href="headder.css" />
</head>

<body>



	<%@ include file="header.jsp"%>

	<main>

	<div id="sidebar">
		<div id="plz-sort" class="sortfilter">
			<label for="sort" class="select">Sort By: </label> <select
				name="sort" class="select arrange">
				<option value="">select</option>
				<option value="dsc-p">Price: High To Low</option>
				<option value="asc-p">Price: Low To High</option>
				<option value="str-i">A - Z</option>
				<option value="str-d">Z - A</option>
			</select>
		</div>



		<div id="filtering" class="sortfilter">
			<label for="filter" class="select">Filter By:</label> <select
				name="filter" id="filter" class="select">
				<option value="">select</option>
				<option value="price">Filter By Price</option>
				<!-- <option value="asc-p">Price: Low To High</option> -->
				<option value="Basket Of Wishes">Wish Basket</option>
				<option value="Vibrant Spring Basket">Vibrant Spring</option>
				<option value="Lovely Lavender Bouquet">Lavender Bouquett</option>


			</select>

		</div>
		<!-- <img class="canvaimage" src="Flower4Ucropped.gif" alt=""> -->
	</div>




















	<div id="container">
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/1103.jpg">
			</div>
			<h2>Vibrant Spring Basket</h2>
			<h3>₹ 73.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/2344.jpg">
			</div>
			<h2>Floral Jewels Arrangement</h2>
			<h3>₹ 64.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/2976.jpg">
			</div>
			<h2>Lovely Lavender Bouquet</h2>
			<h3>₹ 59.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/8501.jpg">
			</div>
			<h2>Rising Star</h2>
			<h3>₹ 69.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/9098.jpg">
			</div>
			<h2>Rainbows of Glimmer</h2>
			<h3>₹ 59.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/4820.jpg">
			</div>
			<h2>Basket Of Wishes</h2>
			<h3>₹ 49.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/3767.jpg">
			</div>
			<h2>A Dash of Vibrance</h2>
			<h3>₹ 69.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/9187.jpg">
			</div>
			<h2>Tons of Love</h2>
			<h3>₹ 69.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/5934.jpg">
			</div>
			<h2>A Touch of Softness</h2>
			<h3>₹ 84.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/3427.jpg">
			</div>
			<h2>I'll Fly Away</h2>
			<h3>₹ 59.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/6246.jpg">
			</div>
			<h2>Assorted Sunshine Gerbers</h2>
			<h3>₹ 54.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/1118.jpg">
			</div>
			<h2>French Country Bouquet</h2>
			<h3>₹ 69.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/1941.jpg">
			</div>
			<h2>Forever Yours Bouquet</h2>
			<h3>₹ 69.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/5873.jpg">
			</div>
			<h2>Spring Dazzler</h2>
			<h3>₹ 49.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/6657.jpg">
			</div>
			<h2>An Early Spring</h2>
			<h3>₹ 69.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/7983.jpg">
			</div>
			<h2>Timeless Affections</h2>
			<h3>₹ 74.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/6307.jpg">
			</div>
			<h2>Fashionista Chic</h2>
			<h3>₹ 59.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/7634.jpg">
			</div>
			<h2>Make Me Blush</h2>
			<h3>₹ 69.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/8129.jpg">
			</div>
			<h2>Mystical Allure</h2>
			<h3>₹ 69.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/1996.jpg">
			</div>
			<h2>I Dream of Roses</h2>
			<h3>₹ 64.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/3141.jpg">
			</div>
			<h2>Purity Bouquet</h2>
			<h3>₹ 51.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/1628.jpg">
			</div>
			<h2>Colorful Birthday Bliss</h2>
			<h3>₹ 89.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/3023.jpg">
			</div>
			<h2>A Windfall of Orchids</h2>
			<h3>₹ 59.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/8029.jpg">
			</div>
			<h2>Emerging Sunset Passions</h2>
			<h3>₹ 64.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/1103.jpg">
			</div>
			<h2>Vibrant Spring Basket</h2>
			<h3>₹ 73.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/2344.jpg">
			</div>
			<h2>Floral Jewels Arrangement</h2>
			<h3>₹ 64.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/2976.jpg">
			</div>
			<h2>Lovely Lavender Bouquet</h2>
			<h3>₹ 59.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/8501.jpg">
			</div>
			<h2>Rising Star</h2>
			<h3>₹ 69.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/9098.jpg">
			</div>
			<h2>Rainbows of Glimmer</h2>
			<h3>₹ 59.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/4820.jpg">
			</div>
			<h2>Basket Of Wishes</h2>
			<h3>₹ 49.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/3767.jpg">
			</div>
			<h2>A Dash of Vibrance</h2>
			<h3>₹ 69.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/9187.jpg">
			</div>
			<h2>Tons of Love</h2>
			<h3>₹ 69.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/5934.jpg">
			</div>
			<h2>A Touch of Softness</h2>
			<h3>₹ 84.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/3427.jpg">
			</div>
			<h2>I'll Fly Away</h2>
			<h3>₹ 59.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/6246.jpg">
			</div>
			<h2>Assorted Sunshine Gerbers</h2>
			<h3>₹ 54.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/1118.jpg">
			</div>
			<h2>French Country Bouquet</h2>
			<h3>₹ 69.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/1941.jpg">
			</div>
			<h2>Forever Yours Bouquet</h2>
			<h3>₹ 69.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/5873.jpg">
			</div>
			<h2>Spring Dazzler</h2>
			<h3>₹ 49.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/6657.jpg">
			</div>
			<h2>An Early Spring</h2>
			<h3>₹ 69.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/7983.jpg">
			</div>
			<h2>Timeless Affections</h2>
			<h3>₹ 74.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/6307.jpg">
			</div>
			<h2>Fashionista Chic</h2>
			<h3>₹ 59.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/7634.jpg">
			</div>
			<h2>Make Me Blush</h2>
			<h3>₹ 69.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/8129.jpg">
			</div>
			<h2>Mystical Allure</h2>
			<h3>₹ 69.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/1996.jpg">
			</div>
			<h2>I Dream of Roses</h2>
			<h3>₹ 64.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/3141.jpg">
			</div>
			<h2>Purity Bouquet</h2>
			<h3>₹ 51.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/1628.jpg">
			</div>
			<h2>Colorful Birthday Bliss</h2>
			<h3>₹ 89.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/3023.jpg">
			</div>
			<h2>A Windfall of Orchids</h2>
			<h3>₹ 59.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
		<div class="box">
			<div>
				<img src="https://img-src2.akamaized.net/img/p/GEN/lgwt/8029.jpg">
			</div>
			<h2>Emerging Sunset Passions</h2>
			<h3>₹ 64.99</h3>
			<div id="wish">
				<button>Add to Cart</button>
				<button>Add to Wish</button>
			</div>
		</div>
	</div>

	</main>
    <%@ include file="footer.jsp"%>
	<script src="./product.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

</body>

</html>
<script src="./product.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>