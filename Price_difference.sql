SELECT	Ranked_WishList.ProductID, Title, LocalShopPrice, AmazonPrice, LocalShopPrice - AmazonPrice AS PriceDifference
	FROM Ranked_WishList
	INNER JOIN Amazon_Cost ON Ranked_WishList.ProductID = Amazon_Cost.ProductID
	INNER JOIN LocalShop_Cost ON Ranked_WishList.ProductID = LocalShop_Cost.ProductID
	WHERE Type != "Kit" 
	ORDER BY PriceDifference;