<?php
require_once "../include/connection-config.inc.php";
session_start();
$userID = $_SESSION["username"];
$userID = "guest";
?>

<?php
if(isset($_POST["title"])){
	$title = $_POST["title"];
}
if(isset($_POST["product_type"])){
	$product_type = mysqli_real_escape_string($conn,$_POST["product_type"]);
}
if(isset($_POST["product_name"])){
	$product_name = mysqli_real_escape_string($conn,$_POST["product_name"]);
}
if(isset($_POST['quantity'])){
	$quantity = mysqli_real_escape_string($conn,$_POST['quantity']);
}
if(isset($_POST["shipping"])){
	$shipping = mysqli_real_escape_string($conn,$_POST["shipping"]);
}
if(isset($_POST["size"])){
	$size = mysqli_real_escape_string($conn,$_POST["size"]);
}
if(isset($_POST["paper_type"])){
	$paper_type = mysqli_real_escape_string($conn,$_POST["paper_type"]);
}
if(isset($_POST["side_pages"])){
	$side_pages = mysqli_real_escape_string($conn,$_POST["side_pages"]);
}
if(isset($_POST["coating"])){
	$coating = mysqli_real_escape_string($conn,$_POST["coating"]);
}
if(isset($_POST["color"])){
	$color = mysqli_real_escape_string($conn,$_POST["color"]);
}
if(isset($_POST["lamination"])){
	$lamination = mysqli_real_escape_string($conn,$_POST["lamination"]);
}
if(isset($_POST["add_details"])){
	$add_details = mysqli_real_escape_string($conn,$_POST["add_details"]);
}

if(empty($title)){
	$titleError = "Required Title!";
}
if(empty($product_name)){
	$product_nameError = "Required Product Name!";
}
if(empty($quantity)){
	$quantityError = "Required Quantity!";
}
if(empty($size)){
	$sizeError = "Required Size!";
}
if(empty($paper_type)){
	$paper_typeError = "Required Paper Type!";
}
if(empty($side_pages)){
	$side_pagesError = "Required Side Pages!";
}


// if(isset($_POST["submit"]) && !empty($title) &&
// !empty($product_name) && !empty($quantity) && !empty($size) && !empty($paper_type) && !empty($side_pages)){

	// if(mysqli_connect_error()){
	// 	die('Connect Error('. mysqli_connect_errno().')'. mysqli_connect_error());
	// }else{


		 $name=$_FILES['file']['name'];
		 $temp=$_FILES['file']['tmp_name'];
		 move_uploaded_file($temp,"../file_store/customer_design/".$name);

		 $INSERT = "INSERT Into Quote(CustomerUserID, Date, Title, Product_Type, Product_Name, Quantity, Shipping, Size, Paper_Type, Side_Pages, Coating,
		 Color, Lamination, Add_Details, File)
		 values("$userID",CURRENT_TIMESTAMP,"$title","$product_type","$product_name","$quantity","$shipping","$size","$paper_type","side_pages","$coating","$color","$lamination","$add_details","$name")";
		 if(mysqli_query($conn, $sql)){
    	echo "Records added successfully.";
			} else{
    		echo "ERROR: Could not able to execute $sql. " . mysqli_error($conn);
		}
		// //$SELECT = "SELECT
		// $INSERT = "INSERT Into quote(CustomerUserID, Date, Title, Product_Type, Product_Name, Quantity, Shipping, Size, Paper_Type, Side_Pages, Coating,
		// Color, Lamination, Add_Details, File)
		// values(?,CURRENT_TIMESTAMP,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		// //check here  15
		// //Prepare statement
		// $stmt = $conn->prepare($INSERT);
		// $stmt->bind_param("sssssssssssssss", $userID, $title, $product_type, $product_name,
		// $quantity, $shipping, $size, $paper_type ,$side_pages, $coating, $color, $lamination, $add_details, $name);
		// $stmt->execute();
		// $stmt->close();
		// $conn->close();

		//}
//}
	include('request_quote.php');
?>
