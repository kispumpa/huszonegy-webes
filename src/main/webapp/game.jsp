<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Collections" %>
<%@ page import="java.io.Console" %>
<!doctype html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<p>szia</p>
<%List<String> lapok = new ArrayList<String>();
String[] laps = new String[] {
        "2_p", "3_p", "4_p", "7_p", "8_p", "9_p", "10_p", "11_p",
        "2_t", "3_t", "4_t", "7_t", "8_t", "9_t", "10_t", "11_t",
        "2_z", "3_z", "4_z", "7_z", "8_z", "9_z", "10_z", "11_z",
        "2_m", "3_m", "4_m", "7_m", "8_m", "9_m", "10_m", "11_m"
};

Collections.addAll(lapok, laps);
    for (String x : lapok){
        System.out.println(x);
    }%>
<img id="piros" src="piros.png" alt="Piros" width="1%" height="1%">
<img id="tok" src="tok.png" alt="Tök" width="1%" height="1%">
<img id="zold" src="zold.png" alt="Zöld" width="1%" height="1%">
<img id="makk" src="makk.png" alt="Makk" width="1%" height="1%">

<canvas id="kartya" width="192" height="300" style="border: 1px solid #000000; border-radius: 15px 15px 15px 15px"></canvas>

<script>
    var x = document.getElementById("kartya");
    var xtx = x.getContext("2d");
    var img = document.getElementById("tok");
    xtx.drawImage(img,1,1);
    var t = document.getElementById("kartya");
    var txt = t.getContext("2d");
    txt.fillText("7", 10,200);
</script>
</body>
</html>