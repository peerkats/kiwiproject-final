<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UNEED-IT - Contact</title>
    <link rel="stylesheet" href="css/aanvraag.css">
    <meta name="description" content="Your one-stop solution for all your IT needs.">
    <meta name="keywords" content="IT, repair, services, phones, laptops, PCs">
</head>
<body>
    <header>
        <div class="container">
            <div class="logo">
                <img src="img/logo.png" alt="UNEED-IT Logo">
            </div>
            <nav class="nav">
                <ul>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="about.html">About</a></li>
                    <li><a href="nieuws.php">Nieuws</a></li>
                    <li><a href="contact.html" class="active">Contact</a></li>
                    <li><a href="aanvraag.php">Aanvraag doen</a></li>
                    <li><a href="faq.php">FAQ</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <section class="hero">
        <div class="container">
            <h1>Aanvraag</h1>
            <form method="POST">
                <label for="platform">Select Platform:</label>
                <select name="device_type" id="cars">
                <option></option>
                <option value="telefoon">Telefoon</option>
                <option value="pc">PC</option>
                <option value="appel pc/mac">Apple PC/Mac</option>
                <option value="laptop">Laptop</option>
                <option value="other">Other</option>
                </select>
                <label for="name">Computer naam/Telefoon naam:</label>
                <input type="text" class="" name="computernaam" placeholder="Computer Name">
                <label for="email">Email:</label>
                <input type="text" class="" name="email" placeholder="Email">
                <label for="telefoonnummer">Telefoon nummer:</label>
                <input type="text" class="" name="telefoon_nummer" placeholder="Phone Number">
                <label for="message">Probleem met product:</label>
                <textarea name="probleem" placeholder="Probleem"></textarea>
                <input type="submit" class="btn"></input>
            </form>
        </div>
    </section>

    <section class="picture">
        <div class="container">
            <img src="img/contact_picture.jpg" alt="Contact Picture">
        </div>
    </section>

    <footer>
        <div class="container">
            <p>Contact us at: <a href="tel:+31685858588">+31 6 85858588</a> or email: <a href="mailto:2829389@student.zadkine.nl">2829389@student.zadkine.nl</a></p>
        </div>
    </footer>
</body>
</html>

<?php
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $probleem = $_POST["probleem"];
    $telefoon_nummer = $_POST["telefoon_nummer"];
    $email = $_POST["email"];
    $computernaam = $_POST["computernaam"];
    $device_type = $_POST["device_type"];

    try {

    
        if (!empty($device_type) && !empty($computernaam) && !empty($email) && !empty($telefoon_nummer) && !empty($probleem)) {
            $db  = new PDO("mysql:host=localhost;dbname=school", "root", "");
            $send = $db->prepare("INSERT INTO reparatie_aanvraag (device_type, ID, computer_naam, probleem, contact_ID) VALUES (:device_type, NULL, :computernaam, :probleem, (SELECT MAX(ID) FROM contact_info));");  
            $send2 = $db->prepare("INSERT INTO contact_info (telefoon_nummer, ID, email) values (:telefoon_nummer, NULL, :email)");

            $send2->bindParam(':email', $email);
            $send2->bindParam(':telefoon_nummer', $telefoon_nummer);
            $send2->execute();

            $send->bindParam(':device_type', $device_type);
            $send->bindParam(':computernaam', $computernaam);
            $send->bindParam(':probleem', $probleem);
            $send->execute();



            unset($probleem, $telefoon_nummer, $email, $device_type, $computernaam);
        }

    } catch(PDOException $e) {
        echo "Connection failed: " . $e->getMessage();
    }
}
?>
