<%@ page language="java" contentType="text/html; ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html >
<head>
    <link href='http://fonts.googleapis.com/css?family=Modern+Antiqua&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>Form</title>
</head>
<body>
<header>
    <h1>Formularz</h1>
</header>
<section class="section-exe">
    <div class="row">
        <div class="col span-1-of-2 box">
            <ul class="form-nav">
                <form action="DemoServlet" method="get" id="myForm">
                    <label><input type="text" id="amount" name="amount"/></label>-Kwota kredytu<br/><br/>
                    <label><input type="text" id="quantity" name="quantity"/></label>-Ilosc rat<br/><br/>
                    <label><input type="text" id="percentage" name="percentage"/></label>-Oprocentowanie<br/><br/>
                    <label><input type="text" id="fixedFee" name="fixedFee"/></label>-Oplata stala<br/><br/>
                    <label>
                        <select id="type" name="type">
                            <option value="constant">Constant</option>
                            <option value="decreasing">Decreasing</option>
                        </select>
                    </label>-Rodzaj rat
            </ul>
        </div>
        <div class="col span-1-of-2 box">
            <div class="second-box">
                <div class="buttons-1">
                    <input type="button"  name="SEND" value="SEND" class="btn sending"/>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<footer>
    <div class="row">
        
    </div>
</footer>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="js/script.js"></script>
</html>