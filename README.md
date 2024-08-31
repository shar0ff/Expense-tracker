# Expense-tracker

## Table of Contents

- [Description](#description)
- [Features](#features)
- [Technologies Used](#technologies-used)
- [Installation](#installation)
- [Usage](#usage)
- [Running Tests](#running-tests)
- [Acknowledgements](#acknowledgements)
- [Contact](#contact)

## Description

**Finance Tracker** is a Ruby on Rails web application that helps users track and manage their income and expenses. It provides insightful analytics into financial habits, enabling users to categorize transactions and generate detailed expense reports. Whether you're looking to gain better control over your personal finances or manage a small business's accounts, Finance Tracker offers the tools you need to stay organized and informed.

## Features

- **Income & Expense Tracking:** Easily add, edit, and delete income and expense entries.
- **Categorization:** Organize transactions into customizable categories.
- **Expense Reports:** Generate detailed reports and visual charts to analyze spending habits.

## Technologies Used

- **Backend:** Ruby on Rails
- **Frontend:** HTML5, CSS3, JavaScript, Bootstrap
- **Database:** SQLite, PostgreSQL
- **Testing:** Minitest
- **Deployment:** Heroku

## Installation

Follow these steps to set up the project locally:

1. **Clone the repository:**

    ```bash
    git clone https://github.com/yourusername/finance-tracker.git
    ```

2. **Navigate into the directory:**

    ```bash
    cd finance-tracker
    ```

3. **Install dependencies:**

    ```bash
    bundle install
    ```

4. **Set up the database:**

    ```bash
    rails db:create
    rails db:migrate
    rails db:seed
    ```

## Usage

1. **Start the server:**

    ```bash
    rails server
    ```

2. **Open your browser and go to:**

    ```
    http://localhost:3000
    ```

3. **Add Categories:**
    - Navigate to the "Categories" section to add categories for your future transactions.

4. **Add Transactions:**
    - Navigate to the "Transactions" section to add your income and expenses.
    - Specify the amount, category, type and date for each transaction.

5. **View Reports:**
    - Access the "Reports" section to view charts and summaries of your financial activities.
    - It is possible to generate reports both by categories and  by dates for selected period of time. 

## Running Tests

1. **Ensure dependencies are installed:**

   If you haven't already installed the gems, do so by running:

    ```bash
    bundle install
    ```

2. **Run all tests:**

   You can run the entire test suite with:

    ```bash
    rails test
    ```

3. **Run specific tests:**

   To run tests for a specific file:

    ```bash
    rails test test/models/example_model_test.rb
    ```

4. **Running tests with detailed output:**

   If you want more detailed test output, you can run:

    ```bash
    rails test -v
    ```

## Acknowledgements

- [Ruby on Rails](https://rubyonrails.org/)
- [Bootstrap](https://getbootstrap.com/)
- [Minitest](https://github.com/minitest/minitest)
- [Heroku](https://www.heroku.com/)

## Contact

**Ivan Sharov**  
Email: [sharoviva@cvut.cz](mailto:sharoviva@cvut.cz)
LinkedIn: [Ivan Sharov](https://www.linkedin.com/in/ivan-sharov-964421282/)