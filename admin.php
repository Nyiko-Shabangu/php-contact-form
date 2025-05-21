<?php
require 'config.php';

// Simple authentication 
session_start();
if (!isset($_SESSION['authenticated'])) {
    if ($_POST['password'] ?? '' === 'admin123') { // Temporary password
        $_SESSION['authenticated'] = true;
    } else {
        echo '<form method="post">
            <input type="password" name="password" placeholder="Enter admin password" required>
            <button type="submit">Login</button>
        </form>';
        exit;
    }
}

// Database connection
$conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get submissions
$result = $conn->query("SELECT * FROM submissions ORDER BY date_submitted DESC");
?>

<!DOCTYPE html>
<html>
<head>
    <title>Admin Panel</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h1>Contact Submissions</h1>
    
    <table>
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Message</th>
            <th>Date Submitted</th>
        </tr>
        <?php if ($result->num_rows > 0): ?>
            <?php while ($row = $result->fetch_assoc()): ?>
                <tr>
                    <td><?= htmlspecialchars($row['name']) ?></td>
                    <td><?= htmlspecialchars($row['email']) ?></td>
                    <td><?= nl2br(htmlspecialchars($row['message'])) ?></td>
                    <td><?= date('M j, Y \a\t H:i:s', strtotime($row['date_submitted'])) ?></td>
                </tr>
            <?php endwhile; ?>
        <?php else: ?>
            <tr>
                <td colspan="4">No submissions found</td>
            </tr>
        <?php endif; ?>
    </table>
    
    <p><a href="contact.php">Back to Contact Form</a></p>
</body>
</html>
<?php $conn->close(); ?>
