# Ruby on Rails Capstone Project: Group our transactions

> This a project from the Microverse course built for mobile screens. The objective is to keep track of the hours you spend on a specific task when working on a project.

## Features
- User can Log in with proper authentication(email and password), and have a default user profile image that can be updated in the account settings.
- User can create a task where you enter the hours spent and can be assigned to a Project.
- When you click on 'My Hours' you can see a list of your tasks assigned to an specific project and the total hours you registered. This list shows only the tasks created by you.
- When you click on 'Non Categorised hours' you can see a list of tasks not assigned to an specific project when created, and the total hours of those tasks.
- Inside My Hours and Projects you are able to create a new task or Project with the 'Add new' button
- Also you are able to edit and delete all the taks and projects created by you. If you delete a Project all the tasks assigned to that project will be deleted as well.

## Mobile Views

### Home and main pages
- For not logged in users

![Home](app/assets/images/home-page.png)

- Main page after Log in

![Main](app/assets/images/main-page.png)

### Account Setting
- Here you can upload your own profile photo

![Account](app/assets/images/account-settings.png)

### Pages
- Tasks Index

![Clocks](app/assets/images/clocks-index.png)

- Non Categorised tasks index

![Clocks](app/assets/images/external-hours.png)

- Projects Index

![Projects](app/assets/images/projects-index.png)

## Built With

- Ruby v2.6.5
- Ruby on Rails v6.0.3

## Live Demo

[Heroku Demo Link](https://fast-woodland-21539.herokuapp.com/)

## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

Ruby: 2.6.5
Rails: 6.0.3

### Setup

Instal gems with:

```
bundle install
```

Setup database with:

```
   rails db:create
   rails db:migrate
```

### Usage

Start server with:

```
    rails server
```

Open `http://localhost:3000/` in your browser.

### Run tests

```
    rpsec --format documentation
```

## Author

👤 **Luis Saavedra**
- Github: [@nriqu322](https://github.com/nriqu322)
- Twitter: [@nriqu322](https://twitter.com/nriqu322)
- Linkedin: [Linkedin](https://linkedin.com/in/luis-saavedra-sanchez/) 


## 🤝 Contributing

This is a project for educational purposes only. We are not accepting contributions.

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments
- Design taken from [Snapscan](https://www.behance.net/gallery/19759151/Snapscan-iOs-design-and-branding?tracking_source=) by [Greogoire Vella](https://www.behance.net/gregoirevella) 
- [Microverse](https://microverse.org)
