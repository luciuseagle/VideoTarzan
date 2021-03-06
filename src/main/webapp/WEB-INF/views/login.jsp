<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<div class="containerv login-container">
    <div class="login-box">
        <h2>Login whit Username and Password</h2>
        <c:if test="${not empty msg}">
            <div class="alert alert-primary">${msg}</div>
        </c:if>
        <form name="loginForm" action="<c:url value="/perform_login" />" method="post">
            <c:if test="${not empty error}">
                <div class="alert alert-danger">${error}</div>
            </c:if>
            <div class="form-group">
                <label for="username">User: </label>
                <input type="text" id="username" name="username" class="form-control"/>
            </div>
            <div class="form-group">
                <label for="password">Password: </label>
                <input type="password" id="password" name="password" class="form-control"/>
            </div>

            <input type="submit" value="Submit" class="btn btn-primary">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
        </form>
    </div>
</div>

<%@include file="/WEB-INF/views/template/footer.jsp" %>