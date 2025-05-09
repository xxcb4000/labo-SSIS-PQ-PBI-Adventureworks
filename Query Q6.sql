SELECT P.LastName, COUNT(POH.PurchaseOrderID) AS NbreCommand
FROM Purchasing.PurchaseOrderHeader POH
LEFT JOIN HumanResources.Employee E
ON E.BusinessEntityID = POH.EmployeeID
LEFT JOIN Person.Person P
ON P.BusinessEntityID = E.BusinessEntityID
GROUP BY P.LastName
ORDER BY NbreCommand DESC