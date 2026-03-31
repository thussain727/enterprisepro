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
  <button class="navigationbutton" onclick="location.href='page6search.php'">Search Database</button> <!-- Navigation button linking to Search page -->
  <?php include 'databaseconnect.php'; //Database Connection
  $sqlquery = "SELECT * FROM sources_db";
  $results = $conn1->query($sqlquery); //Executes query to grab full database contents
  echo "<table>
          <tr>
            <th>Source ID</th>
            <th>Source</th>
            <th>Source Type</th>
            <th>School</th>
            <th>Department</th>
            <th>Notes</th>
            <th>Hyperlink</th>
          </tr>";
        while($row = $results->fetch_assoc()) { //Gets results and echoes them into a table on the page; if no hyperlink is provided, this is stated
            if ($row["Hyperlink"] == "NULL" or $row["Hyperlink"] == null) {
                echo "<tr>
                <td>" . $row["SourceID"] . "</td>
                <td>" . $row["Source"] . "</td>
                <td>" . $row["Source_type"] . "</td>
                <td>" . $row["School"] . "</td>
                <td>" . $row["Department"] . "</td>
                <td>" . $row["Notes"] . "</td>
                <td>No Link Available</td>
            </tr>";
            }
            else {
                echo "<tr>
                    <td>" . $row["SourceID"] . "</td>
                    <td>" . $row["Source"] . "</td>
                    <td>" . $row["Source_type"] . "</td>
                    <td>" . $row["School"] . "</td>
                    <td>" . $row["Department"] . "</td>
                    <td>" . $row["Notes"] . "</td>
                    <td><a href='" . $row["Hyperlink"] . "'>Link</a></td>
                </tr>";
                }
            }
    echo "</table>";
  ?>
</div> <!-- Closes page content container -->

<!-- Footer Section -->
<footer> <!-- Footer at the bottom of the page -->
  <div class="footer-container"> <!-- Container for footer content -->
    <p class="footer-text">Community History Research by Ray Greenhough</p> <!-- Footer text -->
  </div> <!-- Closes footer container -->
</footer> <!-- Closes footer -->

</body> <!-- Closes body section -->
</html> <!-- Closes HTMLdocument -->