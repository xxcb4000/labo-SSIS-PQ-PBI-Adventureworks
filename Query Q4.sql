SELECT POH.OrderDate, POH.ShipDate, POD.DueDate,  DATEDIFF(DAY, POH.ShipDate, POD.DueDate) AS onTime,
		CASE 
        WHEN DATEDIFF(DAY, POH.ShipDate, POD.DueDate) >= 0 THEN 1 
        ELSE 0 
		END
FROM Purchasing.PurchaseOrderHeader POH
JOIN Purchasing.PurchaseOrderDetail POD
ON POD.PurchaseOrderID = POH.PurchaseOrderID
ORDER BY onTime DESC