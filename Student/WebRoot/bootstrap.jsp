<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap</title>
  <meta charset="GBK">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
  <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
  <script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
     
  <table class="table">
    <thead>
      <tr>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Email</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Default</td>
        <td>Defaultson</td>
        <td>def@somemail.com</td>
      </tr>      
      <tr class="table-primary">
        <td>Primary</td>
        <td>Joe</td>
        <td>joe@example.com</td>
      </tr>
      <tr class="table-success">
        <td>Success</td>
        <td>Doe</td>
        <td>john@example.com</td>
      </tr>
      <tr class="table-danger">
        <td>Danger</td>
        <td>Moe</td>
        <td>mary@example.com</td>
      </tr>
      <tr class="table-info">
        <td>Info</td>
        <td>Dooley</td>
        <td>july@example.com</td>
      </tr>
      <tr class="table-warning">
        <td>Warning</td>
        <td>Refs</td>
        <td>bo@example.com</td>
      </tr>
      <tr class="table-active">
        <td>Active</td>
        <td>Activeson</td>
        <td>act@example.com</td>
      </tr>
      <tr class="table-secondary">
        <td>Secondary</td>
        <td>Secondson</td>
        <td>sec@example.com</td>
      </tr>
      <tr class="table-light">
        <td>Light</td>
        <td>Angie</td>
        <td>angie@example.com</td>
      </tr>
      <tr class="table-dark text-dark">
        <td>Dark</td>
        <td>Bo</td>
        <td>bo@example.com</td>
      </tr>
    </tbody>
    <table border="1" cellspacing="0" width="80%" class = "table table-striped table-bordered">
    		<tr class = "success">
    			<td>name</td><td>2</td><td>3</td><td>4</td><td>4</td><td>5</td><td>6</td><td>7/td><td>8</td>
    		</tr>
	    		<tr>
		   	 		<s:iterator value="#request.student" var="student1">
		   	 		<td><s:property value="#student1.SNo"/></td>
		    		<td><s:property value="#student1.SName"/></td>
		    		<td><s:property value="#student1.SClass"/></td>
		    		<td><s:property value="#student1.SSex"/></td>
		    		<td><s:property value="#student1.SEmail"/></td>
		    		<td><s:property value="#student1.STel"/></td>
		    		<td><s:property value="#student1.SUsername"/></td>
		    		<td><s:property value="#student1.SPassword"/></td>
	    		</tr>
	     	</s:iterator>
    	</table> 
  </table>
  
</div>

</body>
</html>