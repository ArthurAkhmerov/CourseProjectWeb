ALTER TABLE News
ADD CONSTRAINT FK_newsRestname_Restaurant
FOREIGN KEY (news_restName) REFERENCES Restaurant(rest_name);

ALTER TABLE Reviews
ADD CONSTRAINT FK_reviewsRestname_Restaurant
FOREIGN KEY (reviews_restName) REFERENCES Restaurant(rest_name);

ALTER TABLE Menu
ADD CONSTRAINT FK_menuRestname_Restaurant
FOREIGN KEY (menu_restName) REFERENCES Restaurant(rest_name);

ALTER TABLE Section
ADD CONSTRAINT FK_sectionRestname_Restaurant
FOREIGN KEY (section_restName) REFERENCES Restaurant(rest_name);

ALTER TABLE DiningTable
ADD CONSTRAINT FK_dintableSectionID_Section
FOREIGN KEY (dintable_sectionID) REFERENCES Section(section_id);

ALTER TABLE Dintable_Order
ADD CONSTRAINT FK_dintableNo_DiningTable
FOREIGN KEY (dintable_No) REFERENCES DiningTable(dintable_No);

ALTER TABLE Dintable_Order
ADD CONSTRAINT FK_orderID_Orders
FOREIGN KEY (order_id) REFERENCES Orders(order_id);

ALTER TABLE Menu_Cuisine
ADD CONSTRAINT FK_menuID_Menu
FOREIGN KEY (menu_id) REFERENCES Menu(menu_id);

ALTER TABLE Menu_Cuisine
ADD CONSTRAINT FK_cuisineName_Cuisine
FOREIGN KEY (cuisine_name) REFERENCES Cuisine(cuisine_name);

ALTER TABLE Dish
ADD CONSTRAINT FK_Dish_Class
FOREIGN KEY (class_name) REFERENCES Class(class_name);

ALTER TABLE Dish_Recipe
ADD CONSTRAINT FK_DishRecipe_Dish
FOREIGN KEY (dish_id) REFERENCES Dish(dish_id);

ALTER TABLE Dish_Recipe
ADD CONSTRAINT FK_DishRecipe_Recipe
FOREIGN KEY (recipe_id) REFERENCES Recipe(recipe_id);

ALTER TABLE Dish_Item
ADD CONSTRAINT FK_DishItem_Dish
FOREIGN KEY (dish_id) REFERENCES Dish(Dish_id);

ALTER TABLE Dish_Item
ADD CONSTRAINT FK_DishItem_Item
FOREIGN KEY (item_id) REFERENCES Item(item_id);

ALTER TABLE Dish
ADD CONSTRAINT FK_Dish_Cuisine
FOREIGN KEY (cuisine_name) REFERENCES Cuisine(cuisine_name);

ALTER TABLE News
ADD CONSTRAINT df_newsRestName DEFAULT 'Restaurant&Cafe'
FOR news_restName;