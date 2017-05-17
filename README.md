# Online-Mobile-Store

Languages/frameworks used for implementation
 Ruby 2.1.0 – Programming language
 Rails 4.1.9 – Back-end framework
 SQLite3 – Database backend
 Devise – User authentication
 Paperclip – Image Upload feature
 Bootstrap – UI – Look and feel

Functionalities

Main Functionalities of our Project are –

1.) Sessions
 Users can sign up and login. Once a user logs in he can see the products page and can make orders. A session is maintained for the user.

2.) Product CRUD
 After user is logged in it can see all the products available on the shop now page.
 For creating, deleting and updating the product user has to log in as admin.
 Admin can create new products by entering details about the same and uploading images. For uploading images we have used paperclip gem.
 Admin can edit and delete products as well. Validations for form fields are used for all functionalities.

3.) Add and Delete products from cart
 User can add products to cart both from the shop now page and the project description page. While adding product he will be asked to enter the quantity of the same.
 User can delete products from cart at the checkout page.

4.) Checkout
 On checkout page user can see its cart and place the final order
 After user checks out an order is created and can be seen on the My orders page.

5.) Filter
 User can filter products on the shop now page by selecting the OS.

6.) Search
 User can search products by their name or parts of their name.
