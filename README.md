# PHP Contact Form with Admin Panel

A secure contact form system with submission tracking and an admin interface.


![image](https://github.com/user-attachments/assets/614de05a-59c6-4053-b7bc-6e4f7995a861)


## Features

- Contact form with validation.
- Email format verification.
- SQL injection prevention.
- Admin panel with submission history.
- Responsive design.
- Secure data handling.
- XSS protection.
- Submission date tracking.

## Requirements

- PHP 7.4 or higher.
- MySQL 5.7 or higher.
- Web server (Apache/Nginx).
- Git (optional).

## Installation

### 1. Clone the Repository
Clone the project repository to your local machine:
```bash
git clone https://github.com/yourusername/contact-form-project.git
cd contact-form-project
```

### 2. Database Setup
```sql
CREATE DATABASE contact_form;
USE contact_form;

CREATE TABLE submissions (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    message TEXT NOT NULL,
    date_submitted DATETIME NOT NULL
);
```

### 3. Configuration
Rename `config.example.php` to `config.php` and update credentials:

```php
define('DB_HOST', 'localhost');
define('DB_USER', 'your_db_user');
define('DB_PASS', 'your_db_password');
define('DB_NAME', 'contact_form');
```

### 4. File Permissions
```bash
chmod 755 *.php
```

## Usage

### Access Contact Form
http://localhost/contact-form-project/contact.php

### Access Admin Panel
http://localhost/contact-form-project/admin.php  
Default Password: admin123 (Change immediately in production)

## Security Features

- Prepared SQL statements.
- Input sanitization.
- XSS prevention.
- Session-based authentication.
- Secure password storage (TODO: Implement hashing).
- Error message filtering.

## Development
```bash
# Start development server (PHP built-in)
php -S localhost
```

## Testing

- Submit test form with invalid email.
- Verify validation messages.
- Check successful submissions in the database.
- Test admin panel access.
- Verify XSS protection with `<script>` inputs.

## Contributing

1. Fork the repository.
2. Create a feature branch: `git checkout -b feature/foo`.
3. Commit changes: `git commit -am 'Add foo'`.
4. Push the branch: `git push origin feature/foo`.
5. Create a Pull Request.

## License

MIT License - See LICENSE file.

## Database Backup

To create a backup:
```bash
mysqldump -u root -p contact_form > backup.sql
```

## .gitignore
```
config.php
*.log
.DS_Store
vendor/
node_modules/
```

## Troubleshooting

### Database Connection Issues:

- Verify credentials in `config.php`.
- Check MySQL server status.
- Ensure the database exists.

### Form Submission Errors:

- Check PHP error logs.
- Verify file permissions.
- Test SQL query directly in phpMyAdmin.

