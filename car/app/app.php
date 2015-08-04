<?php
  require_once __DIR__."/../vendor/autoload.php";
  require_once __DIR__."/../src/car.php";

  $app = new Silex\Application();

  $app->get("/", function() {
    return "Home";
  });

  $app->get("/search_car", function(){
    return "
      <!DOCTYPE html>
        <html>
        <head>
            <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css'>
            <title>Search for a car!</title>
        </head>
        <body>
            <div class='container'>
                <h1>Search Car</h1>
                <p>Enter price and mileage below</p>
                <form action='/view_car'>
                    <div class='form-group'>
                      <label for='price'>Enter the maximum price :</label>
                      <input id='price' name='price' class='form-control' type='number'>
                    </div>
                    <div class='form-group'>
                      <label for='miles'>Enter the maximum mileage:</label>
                      <input id='miles' name='miles' class='form-control' type='number'>
                    </div>
                    <button type='submit' class='btn-success'>Create</button>
                </form>
            </div>
        </body>
        </html>
      ";
    });

  $app->get("/car_search", function(){

    $first_car = new Car ("Honda Accord", 1000, "img/hondaaccord.jpeg", 200);
    $second_car = new Car ("Honda Element", 1000, "img/hondaelement.jpeg", 200);
    $third_car = new Car ("Ferrari LaFerrari", 50000, "img/ferrari.jpeg", 50);
    $fourth_car = new Car ("Tesla Model S", 3000, "img/tesla.jpg", 3000);
    $cars = array($first_car, $second_car, $third_car, $fourth_car);

    function carSearch($cars)
    {
      $car_search = array();
      foreach ($cars as $car) {
        if($car->getPrice() < $_GET["price"] && $car->getMiles() <= $_GET["miles"]) {
            array_push($car_search, $car);
        }
      }
      return $car_search;
    }
  })

  return $app;
?>