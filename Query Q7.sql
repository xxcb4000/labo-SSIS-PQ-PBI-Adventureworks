SELECT V.Name, AVG((POD.ReceivedQty - POD.RejectedQty) / POD.ReceivedQty) *100 AS tauxRej, AVG(POD.ReceivedQty/POD.OrderQty )*100 AS tauxRec
FROM Purchasing.PurchaseOrderDetail POD
LEFT JOIN Production.Product P
ON P.ProductID = POD.ProductID
LEFT JOIN Purchasing.PurchaseOrderHeader POH
ON POH.PurchaseOrderID = POD.PurchaseOrderID
LEFT JOIN Purchasing.Vendor V
ON V.BusinessEntityID = POH.VendorID
GROUP BY V.Name
ORDER BY tauxRej DESC




