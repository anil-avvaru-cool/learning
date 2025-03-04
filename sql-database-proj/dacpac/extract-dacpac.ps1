## Set a SMO Server object to the default instance on the local computer.  
CD SQLSERVER:\SQL\localhost\DEFAULT  
$srv = get-item .  
  
## Specify the database to extract to a DAC.  
$dbname = "AdventureWorks2022"  
  
## Specify the DAC metadata.  
$applicationname = "AdventureApp"  
$version = "1.0.0.0"  
$description = "This DAC defines the database used by my application."  
  
## Specify the location and name for the extracted DAC package.  
$dacpacPath = "C:\src\learning\sql-database-proj\dacpac\AdventureApp.dacpac"  
  
## Extract the DAC.  
$extractionunit = New-Object Microsoft.SqlServer.Management.Dac.DacExtractionUnit($srv, $dbname, $applicationname, $version)  
$extractionunit.Description = $description  
$extractionunit.Extract($dacpacPath)