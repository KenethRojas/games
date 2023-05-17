# games
The following project was realized in order to analyze a dataset that contains cleaned and preprocessed 10M+ samples of user recommendations (reviews) from a Steam Store - a leading online platform for purchasing and downloading video games, DLC, and other gaming-related content. Additionally, it contains detailed information about games and add-ons.

So, a R code was built to evaluate further the data, where it was necessary to use some R libraries for reading, analyzing and visualizing the data.

The data was acquired from: https://www.kaggle.com/datasets/antonkozyriev/game-recommendations-on-steam

The main objective involved analyze the database with information of videogames from Steam to know how the data is distributed and to get some insights from it about the final prices.

As a first step, an R library was used in order to read the csv file with the information.

![read data library](https://github.com/KenethRojas/games/assets/131609936/090b3ea7-36ee-49ce-bd9c-7af8a27a445e)

Then, the data was visualized with a simple R statement to analyze the distribution, quantity of records, the class of each attribute and to get a summary of each characteristic within the table. Therefore, once the data was checked, the final R code was built to accomplish the main goal. The data retrieved was focused on the distribution of the final price and their relationship whit the user reviews.

Next, the final R code was run using R Studio and it was necessary to visualize these two outputs so the results can be easily analyzed, as shown in the following images:

![graphics library](https://github.com/KenethRojas/games/assets/131609936/b2f54e97-6fc6-41c8-a0ad-b2be0fce2027)
![Distribución del precio final](https://github.com/KenethRojas/games/assets/131609936/b554ba2c-8bf5-4297-bfee-aaf4f1907531)
![Precio final según valoraciones](https://github.com/KenethRojas/games/assets/131609936/6fd2e3e9-d84e-498d-9e69-47e50073d980)

Finally, the insights obtained from all this project were that what the final price with a higher relative frequency or, in other words that has the largest number of repetitions, is the final price between 10 - 20 dollars, which means that the majority of videogames analyzed are between this range. Also, it was determined that the games with a lower final price tend to have a better user review, since most if them has the word “positive” in it, maybe because gamers tend to relate this with a quality/price ratio.
