SELECT P.Name, COUNT(DISTINCT(POD.UnitPrice)) AS NbrePrixDiff, AVG(POD.UnitPrice) AS PrixMean, MIN(POD.UnitPrice) AS PrixMin, MAX(POD.UnitPrice) AS PrixMAX
FROM Purchasing.PurchaseOrderDetail POD
LEFT JOIN Purchasing.PurchaseOrderHeader POH
ON POD.PurchaseOrderID = POH.PurchaseOrderID
LEFT JOIN Production.Product P
ON P.ProductID = POD.ProductID
LEFT JOIN Purchasing.Vendor V
ON V.BusinessEntityID = POH.VendorID
GROUP BY P.Name
ORDER BY NbrePrixDiff DESC