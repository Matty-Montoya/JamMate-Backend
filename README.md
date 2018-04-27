### JamMate API
This is the repo for the backend API side of the JamMate application.

JamMate allows users to create instrument that they play with a specified genre; additionally, users can view a list of other users and their postings of instruments played. This application will allow users to find other individuals that they would like to jam with.

- [JamMate Deloyed Client](https://matty-montoya.github.io/JamMate/)

---

### JamMate Client Links

- [JamMate GitHub Client Repo](https://github.com/Matty-Montoya/JamMate)
- [JamMate Deployed Page](https://matty-montoya.github.io/JamMate/)

---

### JamMate API Links

- [JamMate GitHub API Repo](https://github.com/Matty-Montoya/JamMate-Backend)
- [JamMate Heroku Page](https://jammate.herokuapp.com/)

---


# API Endpoints

| Verb          | URI                   | Controller#Action    |
| :-----------: |:---------------------:| :-------------------:|
| POST          | `/sign-up`            |     `users#signup`   |
| POST          | `/sign-in`            |     `users#signin`   |
| DELETE        | `/sign-out`           |     `users#signout`  |
| PATCH         | `/change-password`    |     `users#changepw` |
| GET           | `/instruments`        |  `instruments#index` |
| GET           | `/instruments/:id`    |  `instruments#show`  |
| DELETE        | `/instruments/:id`    | `instruments#destroy`|
| POST          | `/instruments`        | `instruments#create` |
| PATCH         | `/instruments/:id`    | `instruments#update` |

---

### Technologies Used:
- ATOM Editor
- Computer Terminal
- GitHub
- Heroku
- Chrome Browser
- Ruby on Rails
- Laptop

---

### Development:

After planning out the ERD, I wanted to create a one to many relationship. In my project a user has many instruments and an instrument belongs to a user. Since we were already given the user table scaffoled out, I created a scaffold for the instrument table (different than the ERD as I had origianlly wanted to create the artist table but that is something for a later version) that incorporate two columns: the first was the instrument, the second was the genre. Once the scaffolds were created and the controllers set to OpenRead (to interact with the api), I created curl scripts to ensure that everything was working correctly. sRuby on rails makes this entire process easily achievable.


---

### Future Goals

This is a project that I would continue working on as I feel it is something that everyday users would love to use.
- I want to add a profile system that will allow users to have a more in depth represntation of their musical background. This would require more tables with references between users and such.
- In an artist table, have colums with links to a user's musical demos
- A rating/review system for users.
- Incorporating another Api for a messaging system that will allow users to interact with one another.
- And More!

---

### ERD:
![alt text](https://i.imgur.com/VA03xX2.jpg)
