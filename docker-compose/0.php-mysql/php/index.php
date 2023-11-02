<html lang="en">
<head>
  <meta charset="utf-8" />
  <link rel="shortcut icon" href="/favicon.png" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Socks'n'Smells</title>
  <link href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" rel="stylesheet" />
  <link href="styles.css" rel="stylesheet" />
</head>
<body>
  <div class="nav-bar">
    <h1><a href="/">Socks'n'Smells - Our Store</a></h1>
  </div>

<?php
$db = $_ENV["MYSQL_DATABASE"];

$conn = new mysqli('socks-store-mysql', 'socksuser', 'le-pwd', $db);

$sql = "SELECT id, name, brand, variant, color, price, inventory FROM socks";
$result = $conn->query($sql);
?>
  <div class="product-listing">
    <?php
      while($row = $result->fetch_assoc()) {
        ?>
          <div class="product-line">
            <span class="favourite" style="color: <?=$row['color']?>"><i class="fas fa-star"></i></span>
            <h2><?=$row['name']?> <small>(<?=$row['variant']?>)</small></h2>
          </div>
        <?
      }
    ?>
  </div>
<?php
$conn->close();
?>
</body>
</html>
