<!doctype html>
<html>
<head>
  <meta charset="utf-8">
 <title>CFUG June 2015</title>
    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
     <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.3/handlebars.min.js"></script>
</head>
<html>
    <body>
      <h1>Our list of employees</h1>
      <ul id="employeeList">
      	
      </ul>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
       
        <script id="employeeListTemplate" type="text/x-handlebars-template">
        	{{#each this}}
    	<li>
		{{firstname}} {{lastname}} {{title}}
	</li>
	{{/each}}
	</script>
	


        	<script>

          function getEmployeeList(){
          	var source   = $("#employeeListTemplate").html();
	          $.ajax({
	                      type:'post',
	                      url:'/cfug/ajax/getEmployees.cfm',
	                      dataType:'JSON',
	                      success: function(data, textStatus){
	                                    var employeeListTemplate = Handlebars.compile(source);
			$("#employeeList").append( employeeListTemplate(data) );
	                                  },
	                        error: function(){alert('Unable to load Employees')}
	         	 });
          }           
          $(document).ready(function(){
                  getEmployeeList();
              });
        </script>
    </body>
</html>

