<?php

$host = 'localhost';  // Set database host
$user = 'root';       // Set database username
$pass = '';           // Set database password
$db   = 'staff';      // Set database name

$conn = mysqli_connect($host, $user, $pass, $db);  // Create database connection

if (!$conn) {  // Check if connection failed
    die('Connection failed: ' . mysqli_connect_error());  // Stop program and show error
}

$schoolNames = mysqli_query($conn, "SELECT DISTINCT `School name` FROM staff ORDER BY `School name`");  // Query unique school names
$departments = mysqli_query($conn, "SELECT DISTINCT `Dept` FROM staff ORDER BY `Dept`");  // Query unique departments
$positions   = mysqli_query($conn, "SELECT DISTINCT `Position` FROM staff WHERE `Position` != '' ORDER BY `Position`");  // Query positions
$lastNames   = mysqli_query($conn, "SELECT DISTINCT `Last Name` FROM staff WHERE `Last Name` != '' ORDER BY `Last Name`");  // Query last names

$results  = null;   // Variable to store results
$searched = false;  // Variable to track search status

$fSchool    = '';  // Store selected school
$fDept      = '';  // Store selected department
$fLastName  = '';  // Store selected last name
$fPosition  = '';  // Store selected position
$fStartYear = '';  // Store entered start year

if ($_SERVER['REQUEST_METHOD'] === 'POST') {  // Check if form submitted
    $searched = true;  // Mark that search occurred

    $fSchool    = trim($_POST['school_name'] ?? '');  // Get school input safely
    $fDept      = trim($_POST['dept'] ?? '');  // Get department input
    $fLastName  = trim($_POST['last_name'] ?? '');  // Get last name input
    $fPosition  = trim($_POST['position'] ?? '');  // Get position input
    $fStartYear = trim($_POST['start_year'] ?? '');  // Get start year input

    if ($fStartYear !== '' && !preg_match('/^\d{4}$/', $fStartYear)) {  // Validate year format
        $fStartYear = '';  // Reset if invalid
    }

    $conditions = [];  // Create array for SQL conditions
    $types      = '';  // Create string for parameter types
    $params     = [];  // Create array for parameter values

    if ($fSchool !== '') {  // If school selected
        $conditions[] = "`School name` = ?";  // Add condition
        $types .= 's';  // Add type (string)
        $params[] = $fSchool;  // Add value
    }

    if ($fDept !== '') {  // If department selected
        $conditions[] = "`Dept` = ?";  // Add condition
        $types .= 's';  // Add type
        $params[] = $fDept;  // Add value
    }

    if ($fLastName !== '') {  // If last name entered
        $conditions[] = "`Last Name` LIKE ?";  // Add condition
        $types .= 's';  // Add type
        $params[] = '%' . $fLastName . '%';  // Add wildcard value
    }

    if ($fPosition !== '') {  // If position selected
        $conditions[] = "`Position` = ?";  // Add condition
        $types .= 's';  // Add type
        $params[] = $fPosition;  // Add value
    }

    if ($fStartYear !== '') {  // If year entered
        $conditions[] = "`Start Year` = ?";  // Add condition
        $types .= 's';  // Add type
        $params[] = $fStartYear;  // Add value
    }

    $sql = "SELECT * FROM staff";  // Base SQL query

    if (!empty($conditions)) {  // If conditions exist
        $sql .= " WHERE " . implode(" AND ", $conditions);  // Add conditions to query
    }

    $sql .= " ORDER BY `School name`, `Start Year`, `Last Name`";  // Sort results

    $stmt = mysqli_prepare($conn, $sql);  // Prepare SQL statement

    if (!empty($params)) {  // If parameters exist
        mysqli_stmt_bind_param($stmt, $types, ...$params);  // Bind parameters
    }

    mysqli_stmt_execute($stmt);  // Execute query

    $results = mysqli_stmt_get_result($stmt);  // Store results
}
?>

<!DOCTYPE html> <!-- Declare HTML5 -->
<html lang="en"> <!-- Start HTML -->
<head> <!-- Head section -->
    <meta charset="UTF-8"> <!-- Set encoding -->
    <title>Ray's Research</title> <!-- Page title -->
    <link rel="stylesheet" href="style template.css"> <!-- Link CSS -->
</head> <!-- End head -->

<body> <!-- Start body -->

<header> <!-- Header section -->
    <h1>Marshfield School History</h1> <!-- Main title -->
</header> <!-- End header -->

<nav class="navigationbar"> <!-- Navigation bar -->
    <button class="navigationbutton" onclick="location.href='page1.html'">About</button> <!-- Button -->
    <button class="navigationbutton" onclick="location.href='page2.html'">Chapel Green Board School</button>
    <button class="navigationbutton" onclick="location.href='page3.html'">Thornton Lane Board School</button>
    <button class="navigationbutton" onclick="location.href='page4.html'">Marshfield School</button>
    <button class="navigationbutton" onclick="location.href='page5.php'">Staff Database</button>
    <button class="navigationbutton" onclick="location.href='page6.php'">Sources Database</button>
</nav> <!-- End navigation -->

<div class="search-section"> <!-- Search container -->
    <h2>Search Staff Database</h2> <!-- Section title -->

    <form method="POST" action="page5.php"> <!-- Form -->
        <div class="search-grid"> <!-- Grid layout -->

            <div class="search-field"> <!-- School field -->
                <label for="school_name">School Name</label> <!-- Label -->
                <select name="school_name" id="school_name"> <!-- Dropdown -->
                    <option value="">-- All Schools --</option> <!-- Default -->
                    <?php while ($row = mysqli_fetch_assoc($schoolNames)): ?> <!-- Loop -->
                        <option value="<?= htmlspecialchars($row['School name']) ?>" <?= ($row['School name'] === $fSchool) ? 'selected' : '' ?>> <!-- Option -->
                            <?= htmlspecialchars($row['School name']) ?> <!-- Display -->
                        </option> <!-- End option -->
                    <?php endwhile; ?> <!-- End loop -->
                </select> <!-- End select -->
            </div> <!-- End field -->

            <div class="search-field"> <!-- Department field -->
                <label for="dept">Department</label>
                <select name="dept" id="dept">
                    <option value="">-- All Departments --</option>
                    <?php while ($row = mysqli_fetch_assoc($departments)): ?>
                        <option value="<?= htmlspecialchars($row['Dept']) ?>" <?= ($row['Dept'] === $fDept) ? 'selected' : '' ?>>
                            <?= htmlspecialchars($row['Dept']) ?>
                        </option>
                    <?php endwhile; ?>
                </select>
            </div>

            <div class="search-field"> <!-- Last name field -->
                <label for="last_name">Last Name</label>
                <select name="last_name" id="last_name">
                    <option value="">-- All Last Names --</option>
                    <?php while ($row = mysqli_fetch_assoc($lastNames)): ?>
                        <option value="<?= htmlspecialchars($row['Last Name']) ?>" <?= ($row['Last Name'] === $fLastName) ? 'selected' : '' ?>>
                            <?= htmlspecialchars($row['Last Name']) ?>
                        </option>
                    <?php endwhile; ?>
                </select>
            </div>

            <div class="search-field"> <!-- Position field -->
                <label for="position">Position</label>
                <select name="position" id="position">
                    <option value="">-- All Positions --</option>
                    <?php while ($row = mysqli_fetch_assoc($positions)): ?>
                        <option value="<?= htmlspecialchars($row['Position']) ?>" <?= ($row['Position'] === $fPosition) ? 'selected' : '' ?>>
                            <?= htmlspecialchars($row['Position']) ?>
                        </option>
                    <?php endwhile; ?>
                </select>
            </div>

            <div class="search-field"> <!-- Year input -->
                <label for="start_year">Start Year</label>
                <input type="text" name="start_year" id="start_year" maxlength="4" placeholder="e.g. 1985" pattern="\d{4}" value="<?= htmlspecialchars($fStartYear) ?>"> <!-- Input -->
            </div>

        </div> <!-- End grid -->

        <div class="search-buttons"> <!-- Buttons -->
            <button type="submit">Search</button> <!-- Submit -->
            <button type="button" onclick="location.href='page5.php'">Clear</button> <!-- Reset -->
        </div>

    </form> <!-- End form -->
</div> <!-- End search section -->

<div class="results-section"> <!-- Results container -->

    <?php if ($searched): ?> <!-- If searched -->

        <?php if ($results && mysqli_num_rows($results) > 0): ?> <!-- If results exist -->
            <p><?= mysqli_num_rows($results) ?> result<?= mysqli_num_rows($results) !== 1 ? 's' : '' ?> found</p>

            <table> <!-- Results table -->
                <thead>
                    <tr>
                        <th>School</th>
                        <th>Dept</th>
                        <th>Last Name</th>
                        <th>First Name</th>
                        <th>Position</th>
                        <th>Start Year</th>
                    </tr>
                </thead>
                <tbody>
                    <?php while ($row = mysqli_fetch_assoc($results)): ?> <!-- Loop rows -->
                    <tr>
                        <td><?= htmlspecialchars($row['School name']) ?></td>
                        <td><?= htmlspecialchars($row['Dept']) ?></td>
                        <td><?= htmlspecialchars($row['Last Name']) ?></td>
                        <td><?= htmlspecialchars($row['First Name']) ?></td>
                        <td><?= htmlspecialchars($row['Position']) ?></td>
                        <td><?= htmlspecialchars($row['Start Year']) ?></td>
                    </tr>
                    <?php endwhile; ?>
                </tbody>
            </table>

        <?php else: ?>
            <p>No results found. Try adjusting your search filters.</p> <!-- No results -->
        <?php endif; ?>

    <?php else: ?>
        <p>Use the filters above and click Search to find staff records.</p> <!-- Default message -->
    <?php endif; ?>

</div> <!-- End results -->

<?php mysqli_close($conn); ?> <!-- Close connection -->

</body> <!-- End body -->
</html> <!-- End HTML -->