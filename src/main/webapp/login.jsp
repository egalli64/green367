<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/login.css">
    <link rel="text/javascript" src="../java/login.js">
    <link rel="stylesheet" type="text/css" href="css/index.css">
    </script>
<title>Insert title here</title>
</head>
    <div class="row">
        <div class="col-3"></div>
        <div class="col-7" id="form-col">
            <form id="form" class="form-group">
                <div class="was-validated">
                    <fieldset>
                        <legend id="titolo">Login Area</legend>
                        <label>User Name: <input type="text" name="azname" id="azname" required></label>
                        <label for="occ">Password: </label>
                        <input type="password" id="occ" name="carica" id="carica"
                            pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required>
                    </fieldset>
                    <div class="row">
                        <div class="col col-xl-1">
                            <input id="button-id" type="submit" value="Enter" class="btn btn-success">
                        </div>
                        <div class="col col-xl-2">
                            <div class="custom-control custom-switch">
                                <input type="checkbox" class="custom-control-input" id="customSwitch1">
                                <label class="custom-control-label" for="customSwitch1">Remember me</label>
                            </div>
                        </div>
                    </div>
            </form>
        </div>
        <div class="col-2"></div>
    </div>
     <%@include file="footer.html"%>
</body>
</html>