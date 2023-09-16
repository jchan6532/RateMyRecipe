-- Create the database
CREATE DATABASE recipe_sharing_platform;

-- Switch to the newly created database
USE recipe_sharing_platform;

-- Create the 'users' table
CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL
);

-- Insert user data
INSERT INTO users (name, email, password)
VALUES
  ('John Doe', 'john@example.com', 'password123'),
  ('Jane Smith', 'jane@example.com', 'password456'),
  ('Michael Johnson', 'michael@example.com', 'password789');

-- Create the 'recipes' table
CREATE TABLE recipes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  author_id INT,
  ingredients TEXT,
  instructions TEXT,
  FOREIGN KEY (author_id) REFERENCES users(id)
);

-- Insert recipe data
INSERT INTO recipes (title, author_id, ingredients, instructions)
VALUES
  ('Classic Spaghetti Bolognese', 1, 'Ground beef, onion, garlic, tomato sauce, spaghetti, olive oil, salt, pepper', '1. Heat olive oil in a large pan. Add diced onions and minced garlic, sauté until fragrant.\n2. Add ground beef and cook until browned. Drain excess fat.\n3. Stir in tomato sauce and season with salt and pepper. Simmer for 20 minutes.\n4. Cook spaghetti according to package instructions. Drain.\n5. Serve the bolognese sauce over cooked spaghetti.'),
  ('Lemon Garlic Roasted Chicken', 2, 'Whole chicken, lemon, garlic, olive oil, salt, pepper, rosemary', '1. Preheat oven to 425°F (220°C). Rinse the chicken and pat dry.\n2. In a small bowl, combine minced garlic, lemon zest, olive oil, salt, pepper, and chopped rosemary.\n3. Rub the chicken with the garlic mixture, making sure to get it under the skin.\n4. Squeeze lemon juice over the chicken and place the lemon halves inside the cavity.\n5. Roast the chicken for about 1 hour or until the internal temperature reaches 165°F (74°C).'),
  ('Chocolate Chip Cookies', 3, 'All-purpose flour, butter, sugar, brown sugar, eggs, vanilla extract, baking soda, salt, chocolate chips', '1. Preheat oven to 350°F (175°C). Line a baking sheet with parchment paper.\n2. In a large bowl, cream together softened butter, granulated sugar, and brown sugar until smooth.\n3. Beat in eggs one at a time, then stir in vanilla extract.\n4. In a separate bowl, whisk together flour, baking soda, and salt. Gradually add the dry ingredients to the butter mixture and mix well.\n5. Stir in chocolate chips. Drop rounded spoonfuls of dough onto the prepared baking sheet.\n6. Bake for 8 to 10 minutes or until lightly golden brown. Allow cookies to cool on the baking sheet for a few minutes before transferring to a wire rack.');
