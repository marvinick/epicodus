<?php
  class Car
  {
    private $make_model;
    private $price;
    private $miles;
    private $photo;

    function __construct($make_model, $price = 100000, $photo, $miles)
    {
      $this->model = $make_model;
      $this->price = $price;
      $this->photo = $photo;
      $this->miles = $miles;
    }

    function setMake($new_make)
    {
      $this->make_model = $new_make;
    }

    function getMake()
    {
      return $this->make_model;
    }

    function setPrice($new_price)
    {
      $float_price = (float) $new_price;
      if ($float_price != 0) {
        $formatted_price = number_format($float_price, 2);
        $this->price = $formatted_price;
      }
    }

    function getPrice()
    {
      return $this->price;
    }

    function setMiles($new_miles)
    {
      $this->miles = $new_miles;
    }

    function getMiles()
    {
      return $this->miles;
    }

    function setPhoto($new_photo)
    {
      $this->photo = $new_photo;
    }

    function getPhoto()
    {
      return $this->photo;
    }
  }
?>