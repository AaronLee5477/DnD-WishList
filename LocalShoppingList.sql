WITH StoreCredit AS (
	SELECT *, SUM(LocalShopPrice)
		OVER (ORDER BY PriceDifference 
			ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW 
			) AS StoreCreditTotal
			FROM Local_Purchase_Order
			ORDER BY PriceDifference
		)
SELECT Title, StoreCreditTotal FROM StoreCredit
	WHERE StoreCreditTotal < 245;