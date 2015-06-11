<cfquery name="getEmployees" datasource="#request.dsn#">
	Select id,firstName,lastName,managerId,title,department,officePhone,cellPhone,email,city,picture
	from employees
</cfquery>
<cfset sqlstring ="">
<cfoutput query="getEmployees">
<cfset sqlstring = "#sqlstring#"&"tx.executeSql(""INSERT INTO employee (id,firstName,lastName,managerId,title,department,officePhone,cellPhone,email,city,picture) VALUES (#id#,'#firstname#','#lastName#',#managerId#,'#title#','#department#','#officePhone#','#cellPhone#','#email#','#city#','#picture#')"");"></cfoutput>
<cfdump var="#sqlstring#">

 
   