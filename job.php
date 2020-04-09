<html>
<head>
    <link rel="shortcut icon" href="2.png" type="image/x-icon"  style="width : 100%; height: 60%;" >
    <title>
        JOB-SEARCH 
    </title>
    <meta charset="UTF-8">
	<title>Search Box Design</title>
	
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
	

	
	
	
	</head>
	 
      
<style>
@import url('https://fonts.googleapis.com/css?family=Comfortaa');
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: #4CAF50;
  }
div.transbox {
  
  background-color: #ffffff;
  
  opacity: 0.4;
  background-size: cover;
  width:100%;
  height:100%;
}

    
    
    .wrapper0{
	position: absolute;

    transform: translate(-50%, -50%);
    background: rgba(2,0,36, .6);
        background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(121,9,9,1) 35%, rgba(0,212,255,1) 100%) ;
    max-width: 180px;
    width: 100%;
     padding: 8px;
    margin-left: 670px;
    display: flex;
    justify-content: space-between;
    border-radius: 5px;
    }

.wrapper{
	position: absolute;
    top: 60%;
    left: 50%;
    transform: translate(-50%, -50%);
    background: rgba(0, 0, 0,.6);
    max-width: 550px;
    width: 100%;
    padding: 15px;
    display: flex;
    justify-content: space-between;
    border-radius: 5px;
}

.wrapper .input {
    width: 85%;
    padding: 15px 20px;
    border: none;
    border-radius: 5px;
    font-weight: bold;
}


    
    
    .btn{
        
         background: #ffec00;
    width: 10%;
    border-radius: 8px;
    position: relative;
    cursor: pointer;
        
    }

 
 
    
    
</style>


<body>




<ul>
  <li><a class="active" href="#home">JOB-SEARCH</a></li>
  <li><a href="#contact">Contact</a></li>
  <li><a href="#about">About</a></li>
</ul>
<div class="transbox">
<img src="1.png" width = "1340px";>
</div>
    <form action="" method="POST">
<div id="livesearch">
<div class="wrapper">
	<input type="text" name="skill" class="input" 
	placeholder="Write Your Skill !">
	<input type="submit" class="btn" name="search" value="Search Data">
</div>
</div>
    </form>
    
    
    
    
    <?php
    
    session_start();
    include_once"job.php";
    $db_host = "localhost";
// Place the username for the MySQL database here
$db_username = "root"; 
// Place the password for the MySQL database here


$db_name = "jobdb";
    
    
    
    
$connection = mysqli_connect("$db_host", "$db_username", "" );
    
$db=mysqli_select_db($connection, "$db_name" )  or die ("No database"); 
 
   
    
    if(isset($_POST['search']))
{
   $set = $_POST["skill"];

    $query = "SELECT * FROM abc WHERE skill = '$set' ";
    $result = mysqli_query( $connection, $query );
        
        if (!$result) {
    $message  = 'Invalid query: ' . mysqli_error() . "\n";
    $message .= 'Whole query: ' . $query;
    die($message);
}

       

    while ($row =mysqli_fetch_array($result )) {

?> 
    <div class="result" style="margin-top :-150px; opacity :1; " >
    <center>
    <form action="" method="POST">
        <h4>Skill</h4>
    <div class="wrapper0">
        <input style="border-radius: 5px; " type="text" name="skill" value="<?php  echo $row ['skill'] ?>" />
        </div>
        <h4 style="margin-top: 50px">Company</h4>
        <div class="wrapper0">
       <input type="text" name="Company" value="<?php echo $row ['Company']?>"/>
        
        </div>
            <h4 style="margin-top:50" >Job</h4>
        <div class="wrapper0">
        <input type="text" name="Job" value=" <?php echo $row ['Job']?>" />
            
        </div>
        </form>
    </center>
    </div>
<?php
    }
        
    }
        
     else{
         
         
          echo"nothing Found";
    }
        
         
?>
  

</body>

</html>
