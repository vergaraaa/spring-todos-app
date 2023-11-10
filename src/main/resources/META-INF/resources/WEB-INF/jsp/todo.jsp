<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">

            <link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
            <link href="webjars/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.standalone.min.css"
                rel="stylesheet">

            <title>Add Todo Page</title>
        </head>

        <body>
            <div class="container">
                <h1>Enter Todo Details</h1>

                <form:form method="post" modelAttribute="todo">
                    <!-- DESCRIPTION -->
                    <fieldset class="mb-3">
                        <form:label path="description">Description</form:label>
                        <form:input type="text" name="description" required="required" path="description" />
                        <form:errors path="description" cssClass="text-warning"></form:errors>
                    </fieldset>

                    <!-- TARGET DATE -->
                    <fieldset class="mb-3">
                        <form:label path="targetDate">Target Date</form:label>
                        <form:input type="text" name="targetDate" required="required" path="targetDate" />
                        <form:errors path="targetDate" cssClass="text-warning"></form:errors>
                    </fieldset>

                    <input type="submit" value="Submit" class="btn btn-success" />

                    <!-- hidden attributes for model todo -->
                    <form:input type="hidden" path="id" />
                    <form:input type="hidden" path="done" />
                </form:form>
            </div>

            <script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
            <script src="webjars/jquery/3.6.0/jquery.min.js"></script>
            <script src="webjars/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
            <script type="text/javascript">
                $('#targetDate').datepicker({
                    format: 'yyyy-mm-dd'
                });
            </script>
        </body>

        </html>