SELECT V.Name, AVG(DATEDIFF(DAY, POH.OrderDate, POH.ShipDate)) AS delaiMean
FROM Purchasing.PurchaseOrderHeader POH
LEFT JOIN Purchasing.Vendor V
ON V.BusinessEntityID = POH.VendorID
GROUP BY V.Name
ORDER BY delaiMean DESC
