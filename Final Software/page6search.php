<!DOCTYPE html> <!-- HTML document -->
<html> <!-- Opens the HTML document -->

<head> <!-- Head section contains setup information for the webpage -->
    <meta charset="UTF-8"> <!-- Sets character encoding so text displays correctly -->
    <title>Ray's Research</title> <!-- Title displayed in the browser tab -->
    <link rel="stylesheet" href="style template.css"> <!-- Links to the external CSS stylesheet -->
</head> <!-- Closes header section -->

<body> <!-- Opens the visible content of the webpage -->

<header> <!-- Header section at the top of the page -->
    <h1>Marshfield School History</h1> <!-- Main heading displayed on the page -->
</header> <!-- Closes header section -->

<!-- Picture -->
<div class="logo-container"> <!-- Container for the school image-->
  	<img src="https://1drv.ms/i/c/d9e291bfbf03390e/IQTlLvny-Qr5R4Hv4BJaG7zrAcqNxcAnuMHcPfPSPMo1XHo?width=897&height=251" width="897" height="251" alt="Marshfield School"> <!-- Displays the school image, externally linked to OneDrive -->
</div> <!-- Closes logo container -->

<!-- Navigation Bar Section, change colour when mouse goes to each button -->
<nav class="navigationbar"> <!-- Navigation bar container -->
    <button class="navigationbutton" onclick="location.href='page1.html'">About</button> <!-- Navigation button linking to About page -->
    <button class="navigationbutton" onclick="location.href='page2.html'">Chapel Green Board School</button> <!-- Navigation button linking to Chapel Green page -->
    <button class="navigationbutton" onclick="location.href='page3.html'">Thornton Lane Board School</button> <!-- Navigation button linking to Thornton Lane page -->
    <button class="navigationbutton" onclick="location.href='page4.html'">Marshfield School</button> <!-- Navigation button linking to Marshfield page -->
    <button class="navigationbutton" onclick="location.href='page5.php'">Staff Database</button> <!-- Navigation button linking to Staff Database, not completed yet -->
    <button class="navigationbutton" onclick="location.href='page6.php'">Sources Database</button> <!-- Navigation button linking to Sources Database, not completed yet -->
</nav> <!-- Closes navigation bar -->

<div class="childpagecontent"> <!-- Main content container holding page text and table -->
<form action="page6results.php" method="post">  <!-- POST form to get search variables -->
    <?php include 'databaseconnect.php'; //Database Connection
    $sqlquery = "SELECT DISTINCT School FROM sources_db"; //Fetches distinct schools to populate search dropdown
    $results = $conn1->query($sqlquery);
    echo
    "<label for='School'>Search by school (blank is for unlabelled sources):</label>
    <select name='School' id='School'>"; //Search dropdown for schools, populated by database query
    while($row = $results->fetch_assoc()) {
    echo 
        "<option value='" . $row['School'] . "'>" . $row['School'] . "</option>";
    }
    echo
    "</select>";
    ?>
    <?php include 'databaseconnect.php'; //Database Connection
    $sqlquery = "SELECT DISTINCT `Source_type` FROM sources_db"; //Fetches distinct source types to populate search dropdown
    $results = $conn1->query($sqlquery);
    echo
    "<label for='Sourcetype'>Search by source type:</label>
    <select name='Sourcetype' id='Sourcetype'>"; //Search dropdown for source types, populated by database query
    while($row = $results->fetch_assoc()) {
    echo 
        "<option value='" . $row["Source_type"] . "'>" . $row["Source_type"] . "</option>";
    }
    echo
    "</select>";
    ?>
    <input type="Submit" value=Search>
</form>
</div> <!-- Closes page content container -->

<!-- Footer Section -->
<footer> <!-- Footer at the bottom of the page -->
  <div class="footer-container"> <!-- Container for footer content -->
    <p class="footer-text">Community History Research by Ray Greenhough</p> <!-- Footer text -->
  </div> <!-- Closes footer container -->
</footer> <!-- Closes footer -->

</body> <!-- Closes body section -->
</html> <!-- Closes HTMLdocument -->