Welcome to my Dungeons and Dragons Database. Recently I sold some old comic books to a local comic and game shop. Due to the current economic situation caused by the Covid-19 outbreak, the shop could only offer store credit. Because I am looking to get back into Dungeons and Dragons (5<sup>th</sup> Edition), I was okay with this arrangement. The local shop charges cover price, but Amazon sells the same products cheaper. To refresh my SQL skills, I am going to create multiple data sets and use queries to determine how to maximize my store credit.

4/4/2020 At this point, I have created a database in SQLite and imported my 3 tables and wrote a basic query to list the 14 out of the 16 products. I excluded the two kits because I am not sure I need the kits after I purchase the other products.

4/6/2020 To maximize my store credit I want to purchase the items with the smallest amount of price difference between the local shop and Amazon, and use my actual money on the items that I will save the most from Amazon. I created a combined dataset and included a column of the price difference. Since I'm not positive I will buy either of the kits on this list, I excluded them from the dataset.

4/8/2020 I created a table using the previous dataset of all the products I currently want to buy.

4/10/2020 Using my new table, I created a store credit column that cumulates the local store cost sorted by the price difference in ascending order.

4/14/2020 Seeing as I only have $245 in store credit, I created a dataset that limits my list to 245 in the StoreCreditTotal column. I used a CTE to create a temporary table, because I initially received an error when referencing the column created with the Sum() function. This is the final list of purchases for the local shop. Buying the remaining items from Amazon will produce the biggest savings to my bank account.
