use AdventureWorks2019;
go

set statistics io, time on;


select * from person.person per
	join person.EmailAddress email on per.BusinessEntityID = email.BusinessEntityID
	join person.BusinessEntityAddress baddr on baddr.BusinessEntityID = per.BusinessEntityID
	join person.Address addr on addr.AddressID = baddr.AddressID
	join person.StateProvince sp on sp.StateProvinceID = addr.StateProvinceID
	where per.FirstName like 'rob%' and
		sp.StateProvinceCode = 'CA';


