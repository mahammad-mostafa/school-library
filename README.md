<a name="readme-top"></a>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
- [💻 Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Setup](#setup)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 [School Library] <a name="about-project"></a>

**[School Library]** is the fifth project of the fourth module in the **Microverse** program.

The project follows Object Oriented Programming using `Ruby`.
This repository includes ten class files (`Person` / `Student` / `Teacher` / `Classroom` / `Book` / `Rental` / `Nameable` / `Decorator` / `Capitalize` / `Trimmer`).
Special class `App` for handling all app operations and a file `main.rb` as entry point for it.
Module `Storage` used for handling JSON files read & write.
Decorator design pattern is implemented for adding several operations on `name` variable in `Person` class.
Several associations exist bewteen some classes.
All data is preserved inside three files (`books.json` / `people.json` / `rentals.json`).
<br/>
Check the below contents for further details about this project.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://www.ruby-lang.org/es/">Ruby</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- Class `Nameable` is a parent class for both `Person` & `Decorator`
- Class `Person` is a parent class for both `Student` & `Teacher`
- Class `Decorator` is a parent class for both `Capitalize` & `Trimmer`
- Class `Person` includes a constructor & four methods
- Constructor in `Person` class includes three arguments (`age` / `name` / `parent_permission`)
- First method in `Person` class is a public method called `add_rental`
- Second method in `Person` class is a public method called `can_use_services`
- Third method in `Person` class is an unherited method called `correct_name`
- Fourth method in `Person` class is a private method called `of_age`
- Class `Student` includes a constructor & four methods
- Constructor in `Student` class includes three arguments (`classroom` / `age` / `name` / `parent_permission`)
- First method in `Student` class is a public method called `play_hooky`
- Second method in `Student` class is a static method called `input_arguments`
- Third method in `Student` class is a public method called `generate_string`
- Fourth method in `Student` class is a static method called `parse_string`
- Constructor in `Teacher` class includes three arguments (`specialization` / `age` / `name` / `parent_permission`)
- First method in `Teacher` class is a public method that overrides `can_use_services` from parent class
- Second method in `Teacher` class is a static method called `input_arguments`
- Third method in `Teacher` class is a public method called `generate_string`
- Fourth method in `Teacher` class is a static method called `parse_string`
- Class `Nameable` includes one method `correct_name` that raises an exception
- Class `Decorator` includes only constructor that passes a `Nameable` object
- Class `Capitalize` includes one inherited method `correct_name` & overrides it
- Class `Trimmer` includes one inherited method `correct_name` & overrides it
- Class `Classroom` includes a constructor & three methods
- Constructor in `Classroom` includes one argument `label`
- First method in `Classroom` class is public method `add_student`
- Second method in `Classroom` class is a public method called `generate_string`
- Third method in `Classroom` class is a static method called `parse_string`
- Class `Book` includes a constructor & three methods
- Constructor in `Book` includes two arguments (`title` / `author`)
- First method in `Book` class is public method `add_rental`
- Second method in `Book` class is a public method called `generate_string`
- Third method in `Book` class is a static method called `parse_string`
- Class `Rental` includes only one constructor & three methods
- First method in `Rental` class is a static method called `input_arguments`
- Second method in `Rental` class is a public method called `generate_string`
- Third method in `Rental` class is a static method called `parse_string`
- Constructor in `Book` includes three arguments (`date` / `book` / `person`)
- First method in `Book` class is a static method called `input_arguments`
- Second method in `Book` class is a public method called `generate_string`
- Third method in `Book` class is a static method called `parse_string`
- Class `App` includes a constructor & twelve methods
- Constructor in `App` initializes several empty arrays
- Entry point in `main.rb` file with infinite loop
- Module `Storage` includes two methods (`read_file` / `write_file`)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps. You can easily download or fork this repository and work on it immadiately!

### Prerequisites

- You need `Ruby` language installed

### Setup

Clone this repository to your desired folder:

```sh
  cd my-folder
  git https://github.com/mahammad-mostafa/school-library.git
```

### Install

- To install all gem dependencies run
```sh
bundle install
```

### Usage

To run the project, execute the following command:

- Run `main.rb` file with
```sh
ruby main.rb
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

📌 **Mahammad:**
- [GitHub](https://github.com/mahammad-mostafa)
- [Twitter](https://twitter.com/mahammad_mostfa)
- [LinkedIn](https://linkedin.com/in/mahammad-mostafa)

📌 **Alexander:**
- [GitHub](https://github.com/alexansaa)
- [LinkedIn](https://www.linkedin.com/in/alexander-saavedra-2803b1b6/)

📌 **Austin:**
- [GitHub](https://github.com/stino-x)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

Some additional features I may implement in the project:
- [ ] Implement better visual interface

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

Like this project? Show your support by starring!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I thank everyone at **Microverse** for guiding me through this project.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE.md) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
