<!DOCTYPE html>
<html lang="es">
<head>
  <title>Buscador de alojamientos</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="css/global.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<!-- Latest compiled and minified CSS -->
<script src="js/global.js"></script>
</head>
<?php 

  require('config/db_con.php'); 
  ini_set('display_errors', 1);
  ini_set('display_startup_errors', 1);
  error_reporting(E_ALL);

  $stage = 'project_av';
  $nRowsCities = $conn->query("
  SELECT COUNT(DISTINCT rom.town) FROM rom WHERE 1")->fetchColumn();
  $nRowsHostings = $conn->query("
  SELECT COUNT(DISTINCT rom.name) FROM rom WHERE 1")->fetchColumn();
  $nRowsTypes = $conn->query("
  SELECT COUNT(DISTINCT rom.type) FROM rom WHERE 1")->fetchColumn();
  $statement = $conn->prepare("
  SELECT rom.romnr, rom.type, rom.city, rom.stars, rom.img, rom.town, rom.persons,rom.name
  FROM rom
  WHERE (rom.city LIKE CONCAT('%', :hosting_data ,'%') OR rom.town LIKE CONCAT('%', :hosting_data ,'%') OR CONCAT(SUBSTRING_INDEX(rom.name, ' ', 1), ' ', rom.city) LIKE CONCAT('%', :hosting_data ,'%') OR CONCAT(SUBSTRING_INDEX(rom.name, ' ', 1), ' ', rom.town) LIKE CONCAT('%', :hosting_data ,'%') OR LEFT(rom.city , 3 ) LIKE CONCAT('', :hosting_data ,'%') OR LEFT(rom.town , 3 ) LIKE CONCAT('', :hosting_data ,'%') OR LEFT(SUBSTRING_INDEX(rom.name, ' ', -1), 3 ) LIKE CONCAT('', :hosting_data ,'%') OR LEFT(SUBSTRING_INDEX(rom.name, ' ', 1), 3 ) LIKE CONCAT('', :hosting_data ,'%') OR LEFT(SUBSTRING_INDEX(rom.name, ' ', 1), -1 ) LIKE CONCAT('', :hosting_data ,'%') OR CONCAT(rom.type, ' ', rom.town) LIKE CONCAT('', :hosting_data ,'%') OR CONCAT(rom.type, ' ', rom.city) LIKE CONCAT('', :hosting_data ,'%'))
  ORDER BY SUBSTRING_INDEX(rom.name, ' ', -1) ASC");

  $hosting_data = isset($_POST["hosting_data"]) ? trim($_POST["hosting_data"]) : false;
  $statement->execute(['hosting_data' => $hosting_data]);

  $results = $statement->fetchAll(PDO::FETCH_ASSOC);

  if($hosting_data) {
  echo '<div class="jumbotron text-center" style="margin-bottom:0"><h1>Búsqueda / ' .$hosting_data. '  /</h1></div>'; 
} else {
  echo '<div class="jumbotron text-center" style="margin-bottom:0"><h1>Alojamientos ' .$stage. ' </h1></div>'; 
 }
?>

<div class="container" style="margin-top:30px">
  <div class="row">
    <div class="col-sm-4">
    <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="post">
  <div class="form-group">
    <label for="city">Búsqueda de Hospedaje</label>
    <input type="text" value ="<?php echo $hosting_data; ?>" name="hosting_data" id="hosting_data" class="form-control" placeholder="Madrid, Apartamentos, Hotel Ibiza ..." id="email" required>
    <span id="searchclear" class="glyphicon glyphicon-remove-circle"></span>
  </div>
  <button type="submit" class="btn btn-primary"> <span class="glyphicon glyphicon-search"></span> Buscar </button> <a class="remove_content" onClick="window.location.reload()">Inicio</a>
</form>
  </div>
 <div class="col-sm-8">
 

<?php 
if($hosting_data) {
if($results) {

  echo ' <div class="counter"> Se ' .(count($results) == 1 ? 'ha' : 'han').' encontrado  ' . count($results) .' ',(count($results) == 1 ? 'resultado' : 'resultados').'</div>'; 
  foreach ($results as $key => $row) {
    $location = $row['city'] == $row['town'] ? $row['city'] : $row['town'].' ('.$row['city'].').';
    echo ' 
    <div class="row">
    <div class="col-md-3">
    <img class="card-img-top" src="image/'  . $row['img'] .'.jpeg" alt="project_av img">
    </div>
    <div class="col-md-9">
    <div class="text-block">
    <h4 class="card-title">' . $row['name'] .' </h4>
    <p class="card-text">'  . $row['type'] . ' </p>
    <p class="card-text">'  . $row['stars'] .' ',($row['stars'] == 1 ? 'estrella' : 'estrellas').'</p>
    <p class="card-text"> '  . $location .' </p>
    </div>
    </div>
  </div>
  ' ;
   }
  
  } else {
    echo "<div class='alert alert-secondary' role='alert'>No se encontraron opciones de alojamiento</div>";
   }
    
  } else {
    echo '<div class="row" id="box-search">
    <div class="thumbnail text-center">
        <img src="image/present_img.jpg" alt="" class="present img-responsive">
        <div class="caption">
            <h2>Búsqueda de alojamientos  '. $stage. ' </h2>
            <p>' . $nRowsHostings .'  Alojamientos disponibles</p>
            <p>' . $nRowsCities .'  Ubicaciones disponibles</p>
            <p>' . $nRowsTypes .'  Tipos de alojamiento</p>
        </div>
    </div>
</div>
';
  }

?>
  </div>  
</div> 
 </div>

<!-- Footer -->

<div class="footer">
<?php 
if($hosting_data) {
  echo '<p class="search_value"> Búsqueda / ' .$hosting_data. '   /</p>'; 
} else {
  echo '<p> '. $stage.' '.date("Y"). '</p>'; 
 }
?>

</div>

<!-- Footer -->





