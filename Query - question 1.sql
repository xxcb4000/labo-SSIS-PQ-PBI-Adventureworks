
SELECT PV.Name,YEAR(POH.OrderDate) AS YEARS, MONTH(POH.OrderDate) AS MONTHS, SUM(POH.SubTotal) AS POHS
FROM Purchasing.PurchaseOrderHeader POH
LEFT JOIN Purchasing.Vendor PV
ON PV.BusinessEntityID = POH.VendorID
GROUP BY PV.Name, YEAR(POH.OrderDate), MONTH(POH.OrderDate)
ORDER BY YEARS, MONTHS