CREATE TABLE USER (
userID int NOT NULL,
Nickname varchar(30) NOT NULL,
Email varchar(35),
JoiningDate timestamp NOT NULL,
PRIMARY KEY(userID)
);

create table RECIPE (
recipeID int NOT NULL,
userID int,
RecipeName varchar(50) NOT NULL,
Servings int,
PreparationTime int,
Ratings int,
DateAdded date,
TimeAdded time,
Primary Key(recipeID),
Foreign Key(userID) references USER(userID)
);

create table INGREDIENT (
ingredientID int NOT NULL,
IngredientName varchar(35) NOT NULL,
InStock int NOT NULL,
Primary Key(ingredientID)
);

create table RECIPE_INGREDIENT (
recipeID int NOT NULL,
ingredientID int NOT NULL,
PRIMARY KEY(recipeID, ingredientID),
FOREIGN KEY(recipeID) references RECIPE(recipeID),
FOREIGN KEY(ingredientID) references INGREDIENT(ingredientID)
);

CREATE TABLE CATEGORY (
categoryID int NOT NULL,
CategoryName varchar(30) NOT NULL,
NumberOfRecipes int,
PRIMARY KEY(categoryID)
);

CREATE TABLE CATEGORY_RECIPE (
categoryID int NOT NULL,
recipeID int NOT NULL,
PRIMARY KEY(categoryID, recipeID),
FOREIGN KEY(categoryID) references CATEGORY(categoryID),
FOREIGN KEY(recipeID) references RECIPE(recipeID)
);


