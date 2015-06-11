		<cfquery name="getEmployees" datasource="#request.dsn#">
			Select id,firstName,lastName,managerId,title,department,officePhone,cellPhone,email,city,picture
			from employees
		</cfquery>
		<cfscript>
			function getPeople2() {
				var data = getemployees;
				var result = [];
				for(var i=1; i<=data.recordCount; i++) {
					arrayAppend(result, {"id":data.id[i], "firstname":data.firstname[i], "lastname":data.lastname[i], "department":data.department[i],"title":data.title[i]});
				}
				return result;
			}
			getPageContext().getOut().clearBuffer();
		</cfscript>
		<cfheader name="Access-Control-Allow-Origin" value="*">
 		<cfset peopleJSON = "#serializeJSON(getPeople2())#">
 		<cfoutput>#peopleJSON#</cfoutput><cfabort>
 		<!---
 		<cfoutput>{people:#peopleJSON#}</cfoutput><cfabort>--->