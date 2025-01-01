# I may update this projects GemFile as I learn more about Ruby On Rails.

# Starter Web Template with Authentication

This is a Ruby on Rails template project with user authentication.

## Features

- User authentication using Devise
- RSpec for testing

## Prerequisites

Before you begin, ensure you have the following installed:

- Ruby 3.x or higher
- Rails 6.x or higher
- SQLite3 (or another database of your choice)

## Setup Instructions

### 1. Clone the Repository

First, clone the repository to your local machine:

```bash
git clone https://github.com/yourusername/starter_web_template.git
cd starter_web_template
```
### 2. Install Dependencies
```bash
  bundle install
```
### 3. Set up the Database
Create and migrate the database with:

```bash
Copy code
rails db:create
rails db:migrate
```

### 4. Seed the Database (Optional)
If you have seed data to populate the database (e.g., creating an admin user), run:

```bash
Copy code
rails db:seed
```

### 5. Run the Rails Server
Start the Rails server:

```bash
Copy code
rails server
```
You can now access the application at http://localhost:3000.

## User Authentication
### Sign Up and Log In
- Navigate to /users/sign_up to create a new user.
- Navigate to /users/sign_in to log in.
- Devise handles authentication out-of-the-box with email and password.

### User Roles
The application supports two roles: user and admin.
- user is the default role when a user signs up.
- admin has elevated privileges and can access admin-only pages.
- Roles are managed through the role field in the User model using Rails enum.

To assign roles manually, you can use the Rails console:

```bash
Copy code
rails console
user = User.find_by(email: 'user@example.com')
user.update(role: :admin)
```

## Testing
This application uses RSpec for testing.

### Run Tests
```bash
bundle exec rspec
```
This will run the test suite and check for any issues with your application.

### Test Coverage
This includes:
- User authentication via Devise
- Role-based access control using 'enum'

### Troubleshooting
If you encounter any issues, try the following:

1. Ensure that all migrations have been run (rails db:migrate).
2. If using SQLite, ensure your database schema is up to date with rails db:schema:load.
- For additional help, check out the official Rails documentation at https://guides.rubyonrails.org.

### License
This project is open source and available under the MIT License.
