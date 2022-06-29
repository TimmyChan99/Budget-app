![](https://img.shields.io/badge/Microverse-blueviolet)

# myBudget App

The myBudget app is a Ruby on Rails application that allows the user to:
- register and log in, so that the data is private to them.
- introduce new transactions associated with a category.
- see the money spent on each category.

## Demo 

<p align="center">
  <img src="https://user-images.githubusercontent.com/92228303/176455799-8bdbd901-46a3-4de6-984f-a8ce7d8d4f95.gif" alt="Splash screen" />
</p>

## Interactions

### Splash screen
  A simple page with the name of the app, and links to the sign up and log in pages.
  
<p align="center">
  <img src="https://user-images.githubusercontent.com/92228303/170261889-4aa1943e-698b-4dcc-9d2c-9dbb34908158.png" alt="Splash screen" />
</p>
  
### Sign up and log in pages
 - The user can register in the app with full name, email and password (all mandatory).
 - The user can log into the app using email and password.
 - If the user is not logged in, they can't access pages that require the user to be logged in
 
 <p align="center">
  <img src="https://user-images.githubusercontent.com/92228303/170265602-e1334ec0-ca68-4b3b-af40-faca7df6c984.png" alt="sign up page" />
  <img src="https://user-images.githubusercontent.com/92228303/170265727-853089a9-456d-4b5a-b635-c5b1e986d069.png" alt="sign inage" />
</p>

### Home page (catagories page)
 - When the user logs in, they are presented with the categories page.
 - For each category, the user can see their name, icon and the total amount of all the transactions that belongs to that category.
 - When the user clicks (or taps) on a category item, the application navigates to the transactions page for that category.
 - The user click (or taps) the "Save" button to create the new category, and is taken to the home page on success.

<p align="center">
  <img src="https://user-images.githubusercontent.com/92228303/170263769-0b17b360-a5e0-4ccc-a820-e2275e1bc0a8.png" alt="sign up page" />
  <img src="https://user-images.githubusercontent.com/92228303/170264007-26a54878-8131-4878-a095-27d41e522e0f.png" alt="create category page" />
</p>

### Transactions page
- For a given category, the list of transactions is presented, ordered by the most recent.
- At the top of the page the user could see the total amount for the category (sum of all of the amounts of the transactions in that category).
- There is a button "add a new transaction" at the bottom that brings the user to the page to create a new transaction.
- The user fills out a form to create a new transaction with: name, amount and select a category.
- The user click (or taps) the "Save" button to create the new category, and is taken to the transactions page for that category.

<p align="center">
  <img src="https://user-images.githubusercontent.com/92228303/170265065-117301c5-a399-4b55-a031-a063d12c74b0.png" alt="transaction page" />
  <img src="https://user-images.githubusercontent.com/92228303/170265261-da101805-55d2-4589-9898-2dffce64f928.png" alt="create transaction page" />
</p>


## Built With

- Ruby
- Ruby on Rails 7
- PostgreSQL
- Sass
- Capybara
- RSpec

## Getting Started

### Setup

To get a local copy up and running follow these simple example steps:

- Run `git clone https://github.com/TimmyChan99/Budget-app.git`
- Go to the folder `cd Budget-app`
- Run `bundle install` to install dependencies
- Run `rails s` to start the server
- Run `rails db:create` and `rails db:migrate` to set up the database
- Run `bundle exec rspec` to run tests

## Demo Link

[Live Demo link](https://mybudget-railsapp.herokuapp.com/)

## Author

👤 **Fatima Ezzahra**

- GitHub: [@TimmyChan99](https://github.com/TimmyChan99)
- Twitter: [@elemenoun](https://twitter.com/elemenoun)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/fatima-ezzahra-elemenoun-020841225/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- The original design idea belongs to [Gregoire Vella on Behance](https://www.behance.net/gregoirevella).

## 📝 License

This project is [MIT](./MIT.md) licensed.
