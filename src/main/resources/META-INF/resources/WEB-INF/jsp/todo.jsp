<%@ include file="common/header.jspf" %>
    <%@ include file="common/navigation.jspf" %>

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

    <%@ include file="common/footer.jspf" %>

    <script type="text/javascript">
        $('#targetDate').datepicker({
            format: 'yyyy-mm-dd'
        });
    </script>