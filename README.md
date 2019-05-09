# README
# Building Facebook Project :
 In this project we have to build an application whose fonctionnalities are similar to that of Facebook.

 **Prerequisites:**
 * Ruby
 * Ruby on
 * SQL
 * Heroku
 * Git

 **How we will create our social networking site?**
 We need to create three systems:
 * a system for managing users
 * a system for managing posts
 * a system for managing comments

**Main Model:**
our main model will contain this three models

* Users model : To generate the user model we will use the gem Devise.

* Posts model : user can create many posts and share them
* Comments model : users can comment posts

**Relationships models**
* freindship : user has many freindships
* likes : user can likes a post or many posts
* freind_requests : Users can send freind request to other users and user must accept the freind request to become friends

![Entity Relationship Diagram](./db_diagram.png)

**Controllers:**
* Users :
 1. authentication with devise gem. Users must sign in to see anything except the sign in page
 1. user can sign in with facebook (done with omniauth gem)
* Posts :
 1. user can create posts
 1. user can edit and delete his and only his posts
* Likes:
 1. user is able to like and unlike posts without page refresh 
* Comments
 1. user is able to comment on posts
 1. user can edit and delete his and only his comments
* Friend requests:
 1. user can send and and accept and refuse friend requests without page refresh

**Views:**
* Users:
 1. show: has profile information, gravatar and user's posts
 1. index - all users with a button to send a friend request
 1. new
 1. edit
* Posts:
 1. index - displays posts from current user and current user's friends
 1. post always displays it's content, author likes and comments
* notifications page for friend requests 
* Posts Controllers : Authentificated user needs to share content, we will use scafolding to generate the basic CRUD for post.
* Comments controller : same thing of posts controllers
