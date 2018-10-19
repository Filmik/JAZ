<%@ page import="java.text.DecimalFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    
    Double[] getIntrestPart = (Double[]) request.getAttribute("interestPart");
    Double[] getCapitalPart = (Double[]) request.getAttribute("capitalPart");
    Double[] getInterestAll = (Double[]) request.getAttribute("interestAll");
    Integer[] getNumOfInstallments = (Integer[]) request.getAttribute("numOfInstallments");
    Double getFixedFee = (Double) request.getAttribute("fixedFee");

    DecimalFormat df = new DecimalFormat("####0.00");

%>
<html>
<head>
   
    <link href='http://fonts.googleapis.com/css?family=Modern+Antiqua&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">

    <title>Harmo</title>
</head>
<body>
    <header>
        <h1>Harmonogram splat</h1>
    </header>
    <section class="section-exe">
        
        <div class="row">
            <table>
                <tr>
                    <th>Nr.</th>
                    <th>kwota kapitalu</th>
                    <th>Kwota odsetek</th>
                    <th>Oplaty stale</th>
                    <th> Calkowita kwota raty</th>
                </tr>
                <%
                    for(int i = 0; i < getNumOfInstallments.length-1; i++){
                %>
                    <tr>
                        <td><%= getNumOfInstallments[i]%></td>
                        <td><%= df.format(getCapitalPart[i])%>zł</td>
                        <td><%= df.format(getIntrestPart[i])%>zł</td>
                        <td><%= df.format(getFixedFee)%>zł</td>
                        <td><%= df.format(getInterestAll[i])%>zł</td>
                        <%
                            for (int j = 0; j<5; j++){
                        %>
                            <%}
                       %>
                    </tr>
                <%
                    }
                %>
            </table>
        </div>
    </section>
    <footer>
        <div class="row">
        </div>
    </footer>
</body>
</html>