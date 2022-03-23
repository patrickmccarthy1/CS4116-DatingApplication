<!--include connection file-->
<?php
include_once './additional-files/database-connection.php';
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>User Profile</title>
  <!--import bootstrap css-->
  <link rel="stylesheet" href="./additional-files/bootstrap-5.1.3-dist/css/bootstrap.css">

  <link rel="stylesheet" href="user-profile.css">
</head>

<body>
  <!--import bootstrap js-->
  <script src="./additional-files/bootstrap-5.1.3-dist/js/bootstrap.bundle.js"></script>

  <!--navbar-->
  <nav class="navbar navbar-light bg-light">
    <!--fluid makes nav responsive-->
    <div class="container-fluid" id="nav">
      <a class="navbar-brand" href="#">
        <img src="./additional-files/images/icons/spark.png" alt="spark-logo">
        Spark
      </a>

      <!--hamburger menu button-->
      <!--navbar-bs-toggler = listener-->
      <!--navbar-bs-target = id of menu items-->

      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarMenu">
        <!--this is the icon for the hamburger menu-->
        <span class="navbar-toggler-icon"></span>
      </button>

      <!--menu-->
      <div class="collapse navbar-collapse" id="navbarMenu">
        <ul class="navbar-nav">
          <!--home-->
          <li class="nav-item">
            <a class="nav-link" href="#">
              <img src="./additional-files/images/icons/home.png" alt="home">
              Home
            </a>
          </li>

          <!--account-->
          <li class="nav-item">
            <a class="nav-link" href="#">
              <img src="./additional-files/images/icons/account.png" alt="account">
              Account
            </a>
          </li>

          <!--liked-profile-->
          <li class="nav-item">
            <a class="nav-link" href="#">
              <img src="./additional-files/images/icons/heart.png" alt="liked-profiles">
              Liked Profiles
            </a>
          </li>

          <!--notifications-->
          <li class="nav-item">
            <a class="nav-link" href="#">
              <img src="./additional-files/images/icons/bell.png" alt="notifications">
              Notifications
            </a>
          </li>

          <!--log-out-->
          <li class="nav-item">
            <a class="nav-link" href="#">
              <img src="./additional-files/images/icons/logout.png" alt="log-out">
              Log Out
            </a>
          </li>
        </ul>
      </div>

    </div>
  </nav>
  <!--end of navbar-->

  <!--container width of screen always-->
  <div class="container">

    <div class="row">
      <div class="col-12">
        <h1>
          John Smith
        </h1>
      </div>
    </div>

    <div class="row">

      <!--left column-->
      <div class="col-lg-3 col-md-4">

        <!--profile picture-->
        <div class="thick-border-div" id="profile-frame">
          <img src="./additional-files/images/profile/1.png" alt="profile-pic" class="img-fluid user-image">
        </div>
        <!--end of profile picture-->

        <!--location-->
        <div class="thick-border-div" id="location">
          <div>
            <img src="./additional-files/images/icons/location.png" alt="location" class="img-fluid" id="location-icon">
            <p class="bold-text">
              Limerick, Ireland
            </p>
          </div>
        </div>
        <!--end of location-->

        <!--edit profile link-->
        <div id="edit-profile">
          <a href="#" class="bold-text">
            Edit Profile
          </a>
        </div>
        <!--end of edit profile link-->

        <!--left column user data-->
        <div id="left-div-info">

          <!--age-->
          <div class="data-row">
            <!--title-->
            <div class="data-row-title">
              <p class="bold-text">Age:</p>
            </div>

            <!--display-->
            <div class="bordered-div left-text" style="width: 60%;">
              <?php
              $sql = "SELECT age FROM users WHERE login_id = 1;";

              $result = mysqli_query($conn, $sql);

              $resultChecker = mysqli_num_rows($result);

              if ($resultChecker > 0) {
                while ($row = mysqli_fetch_assoc($result)) {
                  echo $row['age'];
                }
              }
              ?>
            </div>
          </div>

          <!--gender-->
          <div class="data-row">
            <!--title-->
            <div class="data-row-title">
              <p class="bold-text">Gender:</p>
            </div>

            <!--display-->
            <div class="bordered-div left-text" style="width: 60%;">
              <?php
              $sql = "SELECT gender FROM users WHERE login_id = 1;";

              $result = mysqli_query($conn, $sql);

              $resultChecker = mysqli_num_rows($result);

              if ($resultChecker > 0) {
                while ($row = mysqli_fetch_assoc($result)) {
                  echo $row['gender'];
                }
              }
              ?>
            </div>
          </div>

          <!--likes-->
          <div class="data-row">
            <!--title-->
            <div class="data-row-title">
              <p class="bold-text">Likes:</p>
            </div>

            <!--display-->
            <div class="bordered-div left-text" style="width: 60%;">
              <?php
              $sql = "SELECT seeking_gender FROM users WHERE login_id = 1;";

              $result = mysqli_query($conn, $sql);

              //check if we got results back by counting number of rows of data
              $resultChecker = mysqli_num_rows($result);

              if ($resultChecker > 0) {
                while ($row = mysqli_fetch_assoc($result)) {
                  echo $row['seeking_gender'];
                }
              }
              ?>
            </div>
          </div>

          <!--height-->
          <div class="data-row">
            <!--title-->
            <div class="data-row-title">
              <p class="bold-text">Height:</p>
            </div>

            <!--display-->
            <div class="bordered-div left-text" style="width: 60%;">
              <?php
              $sql = "SELECT height FROM users WHERE login_id = 1;";

              $result = mysqli_query($conn, $sql);

              $resultChecker = mysqli_num_rows($result);

              if ($resultChecker > 0) {
                while ($row = mysqli_fetch_assoc($result)) {
                  echo $row['height'] . " cm";
                }
              }
              ?>
            </div>
          </div>

          <!--weight-->
          <div class="data-row">
            <!--title-->
            <div class="data-row-title">
              <p class="bold-text">Weight:</p>
            </div>

            <!--display-->
            <div class="bordered-div left-text" style="width: 60%;">
              <?php
              $sql = "SELECT weight FROM users WHERE login_id = 1;";

              $result = mysqli_query($conn, $sql);

              $resultChecker = mysqli_num_rows($result);

              if ($resultChecker > 0) {
                while ($row = mysqli_fetch_assoc($result)) {
                  echo $row['weight'] . " kg";
                }
              }
              ?>
            </div>
          </div>

          <!--star sign-->
          <div class="data-row">
            <!--title-->
            <div class="data-row-title">
              <p class="bold-text">Star Sign:</p>
            </div>

            <!--display-->
            <div class="bordered-div left-text" style="width: 60%;">
              <?php
              $sql = "SELECT star_sign FROM users WHERE login_id = 1;";

              $result = mysqli_query($conn, $sql);

              $resultChecker = mysqli_num_rows($result);

              if ($resultChecker > 0) {
                while ($row = mysqli_fetch_assoc($result)) {
                  echo $row['star_sign'];
                }
              }
              ?>
            </div>
          </div>
        </div>
        <!--end of left column user data-->

      </div>
      <!--end of left column-->

      <!--centre column-->
      <div class="col-lg-6 col-md-8">


        <!--div contians the rest of the center column's content to apply correct padding-->
        <div class="rest-of-column">
          <!--this div is used to align content in the central div-->
          <div style="text-align: left;">
            <!--about me title-->
            <p class="bold-middle-text" id="about-me-title"> About Me:</p>
            <!--about me content-->
            <div style="margin-bottom: 3em;" class="center-box scroll-y">
              <p class="middle-text">
                Lorem ipsum dolor sit, amet consectetur adipisicing elit. Enim aut dolores sint in ullam dignissimos nulla illum! Culpa
                quas natus numquam excepturi? Quae commodi, quisquam facilis exercitationem obcaecati minus, aliquid soluta sunt impedit
                deleniti recusandae. Reiciendis consectetur dignissimos animi doloribus.
              </p>
            </div>

            <!--interests-hobbies-skills-->
            <p class="bold-middle-text" id="about-me-title"> Interest/Hobbies/Skills:</p>
            <div class="center-box">

              <!--top row-->
              <div class="interest-row middle-text">

                <div class="center-tablet">Dancing</div>
                <div class="center-tablet">Sailing</div>
                <div class="center-tablet">Hurling</div>
              </div>

              <!--mid row-->
              <div class="interest-row  middle-text">
                <div class="center-tablet">Motorcycles</div>
                <div class="center-tablet">Archery</div>
                <div class="center-tablet">Snowboarding</div>
              </div>

              <!--end row-->
              <div class="interest-row  middle-text">
                <div class="center-tablet"></div>
                <div class="center-tablet"></div>
                <div class="center-tablet"></div>
              </div>
            </div>

            <!--center column user data-->
            <div id="center-div-info">

              <!--relationship type-->
              <div class="data-row">
                <!--title-->
                <div class="data-row-title">
                  <p class="bold-middle-text">What Am I Looking For?</p>
                </div>

                <!--display-->
                <div class="bordered-div middle-text" style="width: 60%;">
                  Serious Relationship
                </div>
              </div>

              <!--job title-->
              <div class="data-row">
                <!--title-->
                <div class="data-row-title">
                  <p class="bold-middle-text">What is My Job?</p>
                </div>

                <!--display-->
                <div class="bordered-div middle-text" style="width: 60%;">
                  Software Engineer
                </div>
              </div>

              <!--education-->
              <div class="data-row">
                <!--title-->
                <div class="data-row-title">
                  <p class="bold-middle-text">Education?</p>
                </div>

                <!--display-->
                <div class="bordered-div middle-text" style="width: 60%;">
                  Undergraduate
                </div>
              </div>

              <!--driving-->
              <div class="data-row">
                <!--title-->
                <div class="data-row-title">
                  <p class="bold-middle-text">Can I Drive?</p>
                </div>

                <!--display-->
                <div class="bordered-div middle-text" style="width: 60%;">
                  Yes
                </div>
              </div>

              <!--drinking-->
              <div class="data-row">
                <!--title-->
                <div class="data-row-title">
                  <p class="bold-middle-text">Do I Drink?</p>
                </div>

                <!--display-->
                <div class="bordered-div middle-text" style="width: 60%;">
                  Socially
                </div>
              </div>

              <!--smoking-->
              <div class="data-row">
                <!--title-->
                <div class="data-row-title">
                  <p class="bold-middle-text">Do I Smoke?</p>
                </div>

                <!--display-->
                <div class="bordered-div middle-text" style="width: 60%;">
                  No
                </div>
              </div>

              <!--exercise-->
              <div class="data-row">
                <!--title-->
                <div class="data-row-title">
                  <p class="bold-middle-text">Do I Exercise?</p>
                </div>

                <!--display-->
                <div class="bordered-div middle-text" style="width: 60%;">
                  Yes
                </div>
              </div>

              <!--has children-->
              <div class="data-row">
                <!--title-->
                <div class="data-row-title">
                  <p class="bold-middle-text">Do I Have Children?</p>
                </div>

                <!--display-->
                <div class="bordered-div middle-text" style="width: 60%;">
                  No
                </div>
              </div>
            </div>
            <!--end of center column user data-->

          </div>
        </div>

      </div>
      <!--end of center column-->

      <!--right column-->
      <div class="col-lg-3" style="padding: 0;">
        <!--image title-->
        <div style="border-bottom: 1px solid black; text-align: center;">
          <h3>
            Images
          </h3>
        </div>

        <!--display image 1-->
        <div class="thick-border-div frame">
          <img src="./additional-files/images/misc/image1.png" alt="image-1" class="img-fluid user-image">
        </div>
        <!--end of display image 1-->

        <!--display image 2-->
        <div class="thick-border-div frame">
          <img src="./additional-files/images/misc/image9.png" alt="image-2" class="img-fluid user-image">
        </div>
        <!--end of display image 2-->

        <!--display image 3-->
        <div class="thick-border-div frame">
          <img src="./additional-files/images/misc/image36.png" alt="image-3" class="img-fluid user-image">
        </div>
        <!--end of display image 3-->

      </div>
      <!--end of right column-->
    </div>
  </div>
</body>

</html>