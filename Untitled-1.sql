/****** Скрипт для команды SelectTopNRows из среды SSMS  ******/
CREATE VIEW EMPOLYEES_VIEW AS 
	SELECT TOP (1000) [BusinessEntityID]
      ,[NationalIDNumber]
      ,[LoginID]
      ,[OrganizationNode]
      ,[OrganizationLevel]
      ,[JobTitle]
      ,[BirthDate]
      ,[MaritalStatus]
      ,[Gender]
      ,[HireDate]
      ,[SalariedFlag]
      ,[VacationHours]
      ,[SickLeaveHours]
      ,[CurrentFlag]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[HumanResources].[Employee];


  
SELECT TOP(10) *  INTO #sdada FROM EMPOLYEES_VIEW WITH (NOLOCK);

SELECT * FROM #sdada;

declare
	@a integer = 50

SELECT 
	* 
FROM 
	#sdada
WHERE VacationHours>@a;
