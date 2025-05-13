

  SELECT PurchaseOrderID, Subtotal
  FROM Purchasing.PurchaseOrderHeader POH

  GO 

  SELECT PurchaseOrderID, SUM(LineTotal)
  FROM Purchasing.PurchaseOrderDetail
  GROUP BY PurchaseOrderID
