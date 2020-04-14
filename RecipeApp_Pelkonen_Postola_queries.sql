/* select all recipes with cooking time longer than 1 hour.*/
select * from recipe
where PreparationTime > 60
order by PreparationTime;

/* Order recipes by the preparation time.*/
select RecipeName, SUM(PreparationTime) from recipe
group by RecipeName
order by SUM(PreparationTime);

/* Select authors who posted at least two recipes. Order by user ID, from largest to smallest number. Write User as Recipe author.*/
select userID AS "Recipe author", count(*) from recipe 
group by userID
having count(*) >= 2
order by userID DESC;

/* Write a query that shows for each recipe name its author, rename nickname as author and recipeName as recipe. Order by Nickname.*/
select recipe.RecipeName AS "Recipe", user.Nickname AS "Author"
from recipe inner join user ON recipe.userID = user.userID
order by Nickname;

/*select all recipes where ingredients are sugar or wheat flour.*/
select recipeID, ingredientID from recipe_ingredient
where ingredientID = 210 OR ingredientID = 204
group by recipeID;

/* Write "no email address" wherever there is no data provided for email. Write nicknames and user id. Order by userID*/
select userID, Nickname, coalesce (Email, 'no email address') AS Email
from user
group by Nickname
order by userID;

/*Shows all the recipes that have rating better than 3 and that have preparation time at maximum 60 minutes. Order by rating so that the recipe with the best rating is first.*/
select * from recipe
where Ratings > 3 and preparationtime <= 60
order by Ratings DESC, recipename;

/*Shows the categories that have at least one recipe and shows also how many of the recipes have rating. Categoryname renamed as Category and ratings as Amount of Ratings. Order by categoryID*/
select category.categoryID, category.CategoryName AS "Category", count(recipe.ratings) as "Amount of Ratings"
from category
left outer join recipe on category.categoryid = recipe.ratings
where category.numberofrecipes >= 1
group by category.categoryID
order by category.categoryID;

/*Shows recipes that are added 1.1.2019 or after.*/
select * from recipe
where dateadded > '2019-1-1'
order by dateadded;

/*Shows the average preparationtime of recipes that have 4 servings, average is rounded in 2 decimals. Preparationtime renamed as Average cooking time.*/
select ROUND(AVG(preparationtime), 2) AS "Average cooking time (min)"
from recipe
where servings = 4;