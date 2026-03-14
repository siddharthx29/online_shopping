# Shopdeal - README

## 📌 Project Overview

This project is a fully working **Online Shopping Website** built using **HTML, CSS, Bootstrap 5, Material Components, and JavaScript**. The website includes product listings, product detail pages, cart features, user login/registration, and responsive UI elements.

---

## 🗂️ Explanation of Each Page

### **1. Home Page (index.html)**

* Displays featured products and categories.
* Uses Bootstrap cards, carousel/hero banner.
* Quick links for login, products, and account.

### **2. Products Page (products.html)**

* Shows all products with images, price, short description.
* Grid layout using Bootstrap rows/columns.
* Hover animations for product cards.

### **3. Product Details Page (product-details.html)**

* Shows product title, description, images, and price.
* "Add to Cart" button with Material components.

### **4. Cart Page (cart.html)**

* Displays items added to the cart.
* Update quantity, remove items (CRUD logic in JS).
* Shows total price dynamically.

### **5. Login Page (login.html)**

* Email + password authentication.
* Styled with Bootstrap form and Material text fields.

### **6. Registration Page (register.html)**

* Form to create a new user.
* Validates email, password, and confirmation.

### **7. Account/Profile Page (account.html)**

* Shows user profile info.
* Placeholder orders and saved items.

---

## ⚙️ CRUD Operations Implemented

CRUD refers to Create, Read, Update, and Delete.

### **1. Create**

* Add product to **cart**.
* Register new user (localStorage based demo).

### **2. Read**

* Display products from JSON/JS array.
* Load cart items from localStorage.
* Display user data after login.

### **3. Update**

* Update cart quantity.
* Update total price automatically.
* Edit cart item count.

### **4. Delete**

* Remove item from cart.
* Clear cart.
* Logout (clears session).

---

## 🎨 Bootstrap Elements Used

* **Navbar** (Bootstrap 5 navbar with responsive toggler)
* **Carousel** / Hero section
* **Cards** (for products)
* **Grid System** (rows and columns)
* **Buttons** (primary, secondary, danger)
* **Forms** (login, registration)
* **Tables** (cart page)
* **Modals** (optional for alerts)
* **Spacing utilities** (p-3, m-2, etc.)

---

## 🪄 Material Components Used

* Material **Text Fields** for login/registration
* Material **Buttons** in product cards and cart
* Material **Icons** (shopping cart, account, delete)
* Smooth hover ripple effects

---

## 🔐 Login / Registration Workflow

### **1. Registration Workflow**

* User enters name, email, password.
* Data stored in browser localStorage:

  ```json
  {
    "email": "user@example.com",
    "password": "123456",
    "name": "John Doe"
  }
  ```
* Redirects to login page.

### **2. Login Workflow**

* User enters email + password.
* System checks localStorage for existing account.
* If match → user is logged in and redirected to **Account Page**.
* Login state stored in localStorage.

### **3. Logout Workflow**

* Clears session data from localStorage.
* Redirects user to homepage.

---

## 📦 Technologies Used

* **HTML5, CSS3**
* **Bootstrap 5**
* **Material UI / Material Icons**
* **JavaScript**
* **localStorage (for demo authentication & cart)**

---

## 📁 Project Folder Structure

```
/online_shopping
│── index.html
│── products.html
│── product-details.html
│── cart.html
│── login.html
│── register.html
│── account.html
│── /css
│   └── style.css
│── /js
│   └── script.js
│── /images
│   └── (all product images)
```

---

## ✨ Features Summary

* Fully responsive UI
* Product listing and detailed view
* Add to cart + cart management (CRUD)
* User login/registration system
* Bootstrap + Material design combo
* Clean and structured frontend code

---
