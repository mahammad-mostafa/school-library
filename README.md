<a name="title"></a>

<!-- TITLE -->

# 🏷️ School Library 

This is the fifth project of the fourth module in the **Microverse** program.
<br/>
Check the below contents for further details about this project.

<!-- CONTENTS -->

# 📗 Contents

- [Description](#description)
- [Instructions](#instructions)
- [Authors](#authors)
- [Future](#future)
- [Contributions](#contributions)
- [Support](#support)
- [Acknowledgements](#acknowledgements)
- [License](#license)

<!-- DESCRIPTION -->

<a name="description"></a>

# 📖 Description

The project follows Object Oriented Programming using `Ruby`.
This repository includes ten class files (`Person` / `Student` / `Teacher` / `Classroom` / `Book` / `Rental` / `Nameable` / `Decorator` / `Capitalize` / `Trimmer`).
Decorator design pattern is implemented for adding several operations on `name` variable in `Person` class.
Several associations exist bewteen some classes.

📌 **Tech Stack:**
- Code built with `Ruby`
- Linting is done with `Rubocop`

📌 **Key Features:**
- Class `Nameable` is a parent class for both `Person` & `Decorator`
- Class `Person` is a parent class for both `Student` & `Teacher`
- Class `Decorator` is a parent class for both `Capitalize` & `Trimmer`
- Class `Person` includes a constructor & four methods
- Constructor in `Person` class includes three arguments (`age` / `name` / `parent_permission`)
- First method in `Person` class is a public method called `add_rental`
- Second method in `Person` class is a public method called `can_use_services`
- Third method in `Person` class is an unherited method called `correct_name`
- Fourth method in `Person` class is a private method called `of_age`
- Class `Student` includes a constructor & one method
- Constructor in `Student` class includes three arguments (`classroom` / `age` / `name` / `parent_permission`)
- Only method in `Student` class is a public method called `play_hooky`
- Constructor in `Teacher` class includes three arguments (`specialization` / `age` / `name` / `parent_permission`)
- Only method in `Teacher` class is a public method that overrides `can_use_services` from parent class
- Class `Nameable` includes one method `correct_name` that raises an exception
- Class `Decorator` includes only constructor that passes a `Nameable` object
- Class `Capitalize` includes one inherited method `correct_name` & overrides it
- Class `Trimmer` includes one inherited method `correct_name` & overrides it
- Class `Classroom` includes a constructor & one method
- Constructor in `Classroom` includes one argument `label`
- Only method in `Classroom` class is public method `add_student`
- Class `Book` includes a constructor & one method
- Constructor in `Book` includes two arguments (`title` / `author`)
- Only method in `Book` class is public method `add_rental`
- Class `Rental` includes only one constructor
- Constructor in `Book` includes three arguments (`date` / `book` / `person`)


<p align="right"><a href="#title">back to top</a></p>

<!-- INSTRUCTIONS -->

<a name="instructions"></a>

# 🛠️ Instructions

You can easily download or fork this repository and work on it immadiately!

📌 **Prerequisites:**
- You need `Ruby` language installed

📌 **Installation:**
- To install all gem dependencies run
```
bundle install
```

📌 **Development:**
- Run `main.rb` file with
```
ruby main.rb
```

<p align="right"><a href="#title">back to top</a></p>

<!-- AUTHORS -->

<a name="authors"></a>

# 👥 Authors

📌 **Mahammad:**
- [GitHub](https://github.com/mahammad-mostafa)
- [Twitter](https://twitter.com/mahammad_mostfa)
- [LinkedIn](https://linkedin.com/in/mahammad-mostafa)

<p align="right"><a href="#title">back to top</a></p>

<!-- FUTURE -->

<a name="future"></a>

# 🔭 Future

Some additional features I may implement in the project:
- [ ] Implement better visual interface

<p align="right"><a href="#title">back to top</a></p>

<!-- CONTRIBUTIONS -->

<a name="contributions"></a>

# 🤝🏻 Contributions

Wish to contribute to this project?
<br/>
Contributions, issues, and feature requests are more than welcome!
<br/>
Feel free to check the [issues](../../issues) page too.

<p align="right"><a href="#title">back to top</a></p>

<!-- SUPPORT -->

<a name="support"></a>

# ⭐️ Support

Like this project? Show your support by starring!

<p align="right"><a href="#title">back to top</a></p>

<!-- ACKNOWLEDGEMENTS -->

<a name="acknowledgements"></a>

# 🙏🏻 Acknowledgements

I thank everyone at **Microverse** for guiding me through this project.

<p align="right"><a href="#title">back to top</a></p>

<!-- LICENSE -->

<a name="license"></a>

# 📝 License

This project is [MIT](LICENSE.md) licensed.

<p align="right"><a href="#title">back to top</a></p>