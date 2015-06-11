<!doctype html>
<html>
<head>
  <meta charset="utf-8">
 <title>CFUG June 2015</title>
    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
</head>
<html>
    <body>
      <h1>Our list of employees</h1>
      <ul id="employeeList">
      </ul>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <script>
          function getEmployeeList(){
          $.ajax({
                      type:'post',
                      url:'/cfug/ajax/employeeSQL.cfm',
                      data:{ configid:'B47D3F6F-F5D9-0FF4-704789B9DBBFBCC7' },
                      dataType:'html',
                      success: function(data, textStatus){
                                    $('#employeeList').html(data); 
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