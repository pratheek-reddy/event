<?php
require 'connection.php';
require 'valid.php';
$output='';
if(loggedin())
{
	echo 'Welcome '.$_SESSION['user_id'];
	}
else
{
	Header('Location: login.php');	
}
if(isset($_POST['from']))
{
	$from = $_POST['from'];
  $to = $_POST['to'];
  $query = mysqli_query($conn,"SELECT id,name,description,image_link FROM event WHERE date BETWEEN '$from' AND '$to' ") or die("could not search!");
  $count = mysqli_num_rows($query);
  if($count !== 0)
		{
		while($row = mysqli_fetch_array($query)){
      $event_id = $row['id'];
      $event_name = $row['name'];
      $event_desc = $row['description'];
      $event_image = $row['image_link'];

      $output .= '<div class="row">
      <div class="col s12 m7">
        <div class="card">
          <div class="card-image">
            <img src="'.$event_image.'">
            <span class="card-title">'.$event_name.'</span>
          </div>
          <div class="card-content">
            <p>'.$event_desc.'</p>
          </div>
          <div class="card-action">
            <form action="detail.php" method="post">
              <div class="btn-group btn-group-justified" role="group" aria-label="...">
                <div class="btn-group" role="group">
                  <input type="submit" class="btn btn-default" name="navbtnplace" value="'.$event_id.'">
                </div>
              </div>
              </form>
            
          </div>
        </div>
      </div>
    </div>';
}
    }
    else if($count ==0){
      $output = 'There was no search result!';
    }
  }

?>
<!DOCTYPE html>
<html>

<head>
<style type="text/css">
   body { background: #2f4f4f !important; } /* Adding !important forces the browser to overwrite the default style applied by Bootstrap */
</style>
  <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

  <!-- Compiled and minified JavaScript -->


  <!--Let browser know website is optimized for mobile-->
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>

<body>
  <?php echo $output; ?>

  
  <!--<a href="#" class="btn btn-primary">Go somewhere</a>-->


  <!--JavaScript at end of body for optimized loading-->
  <script type="text/javascript" src="js/materialize.min.js"></script>
</body>

</html>