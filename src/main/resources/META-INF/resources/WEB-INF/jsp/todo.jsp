<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet" >
    
    <title>Add Todo Page</title>
</head>
<body>
    <div class="container">
        <h1>Enter Todo Details</h1>

        <form action="" method="post">
            Description <input type="text" name="description">
            <input type="submit" class="btn btn-success">
        </form>
    </div>

    <script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
    <script src="webjars/jquery/3.6.0/jquery.min.js"></script>
</body>
</html>