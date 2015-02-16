![Build Status](https://travis-ci.org/fullstacktalks/website.svg?branch=master)

Full Stack Talks
==============================

1. [Contributing](#contributing)
2. [Contact](#contact)

------------------------------

## Contributing

There are two ways you can go about contributing to the Full Stack Talks website. First, if you're just looking to lend a hand, but you're not sure where to start, take a look at the [open issues](https://github.com/fullstacktalks/website/issues) and see if there's something you'd like to tackle. If none of the open issues interest you, or you have an idea for something else to add to the Full Stack website, start a new branch and issue a pull request to start discussion about your feature.

### Getting Started
We strongly recommend using a command line wrapper for git such as `gh` in order to streamline your workflow. The following steps will assume you've installed [gh](https://github.com/jingweno/gh) or [hub](https://github.com/github/hub).

1. Clone the Full Stack website repo: `git clone https://github.com/fullstacktalks/website.git`
2. Fork the repo (from inside your cloned directory): `git fork`

The seed data includes an AdminUser. The email for that account is "admin@example.com" and the password is "password".

### Creating a Branch
1. Create a feature branch: `git checkout -b feature-my-feature`
2. Create a pull request from your feature branch: `git pull-request -b fullstacktalks:master`

### Running Tests
Each time you push code to your branch, our CI service will run our full test suite against your branch. Your branch should include thorough tests for your feature.

### Approval
Once you've created a new branch, opened a pull request, and all of your specs are passing, we'll merge your pull request into the master branch of this repo. Once your pull request is merged, it will be automatically deployed to the live Full Stack website.

## Contact
If you have any questions about contributing, setting up your development environment, or general questions relating to Ruby or Rails, please feel free to email us at [admin@fullstacktalks.com](mailto:admin@fullstacktalks.com).
