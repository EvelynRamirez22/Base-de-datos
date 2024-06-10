/*EJERCICIO 3*/
UPDATE employees 
SET Fax = Phone,
	Phone = Fax;
	

/*EJERCICIO 4*/



/*EJERCICIO 6*/
DELETE FROM invoice_items WHERE InvoiceId in (SELECT InvoiceId FROM invoices
WHERE BillingState IS NULL)

DELETE FROM invoices WHERE InvoiceId in (SELECT InvoiceId FROM invoices
WHERE BillingState IS NULL)