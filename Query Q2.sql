SELECT P.Name,  SUM(POD.OrderQty) AS Qty, SUM(POD.LineTotal) AS TotalCost
FROM Purchasing.PurchaseOrderDetail POD
JOIN Production.Product P
ON P.ProductID = POD.ProductID
GROUP BY P.Name
ORDER BY TotalCost DESC