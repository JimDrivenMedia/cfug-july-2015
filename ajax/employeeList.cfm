<cfquery name="getEmployees" datasource="#request.dsn#">
	Select id,firstName,lastName,managerId,title,department,officePhone,cellPhone,email,city,picture
	from employees
</cfquery>
<cfoutput query="getEmployees">
	<li>#firstname# #lastname# #title#</li>
</cfoutput>