const char MAIN_page[] PROGMEM = R"=====(
<!DOCTYPE html><html>
<head><meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">
<link rel=\"icon\" href=\"data:,\">
<style>
    html {
        font-family: Helvetica;
        display: inline-block;
        margin: 0px auto;
        text-align: center;}
    .button {
        background-color: #195B6A;
        border: none;
        color: white;
        padding: 16px 40px;
        text-decoration: none;
        font-size: 30px;
        margin: 2px;
        cursor: pointer;}
    .button2 {
        background-color: #77878A;
        }
</style>
</head>
<body><h1>Web Server</h1>
<p>GPIO 5 - State " + output5State + "</p>
)=====";

