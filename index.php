<!DOCTYPE html>
<html>
<head>
    <title>Customer Support Chatbot</title>
    <style>
        body{
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: #f4f6f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .chat-container{
            width: 420px;
            background: #fff;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.15);
            overflow: hidden;
        }

        .chat-header{
            background: #4a90e2;
            color: white;
            padding: 15px;
            text-align: center;
            font-size: 20px;
            font-weight: bold;
        }

        #chatbox{
            height: 400px;
            padding: 15px;
            overflow-y: auto;
            background: #fafafa;
        }

        .message{
            margin: 10px 0;
            padding: 10px 14px;
            border-radius: 12px;
            max-width: 75%;
            word-wrap: break-word;
        }

        .user{
            background: #4a90e2;
            color: white;
            margin-left: auto;
            text-align: right;
        }

        .bot{
            background: #e5e5ea;
            color: black;
            margin-right: auto;
            text-align: left;
        }

        .chat-input{
            display: flex;
            padding: 10px;
            border-top: 1px solid #ddd;
            background: white;
        }

        .chat-input input{
            flex: 1;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 20px;
            outline: none;
        }

        .chat-input button{
            margin-left: 10px;
            padding: 12px 18px;
            border: none;
            background: #4a90e2;
            color: white;
            border-radius: 20px;
            cursor: pointer;
            font-weight: bold;
        }

        .chat-input button:hover{
            background: #357abd;
        }
    </style>
</head>
<body>

<div class="chat-container">
    <div class="chat-header">
        Customer Support
    </div>

    <div id="chatbox">
        <div class="message bot">Hello 👋 Welcome to customer support. How can I help you today?</div>
    </div>

    <div class="chat-input">
        <input type="text" id="message" placeholder="Type your message...">
        <button onclick="sendMessage()">Send</button>
    </div>
</div>

<script>
function sendMessage() {
    let message = document.getElementById("message").value;
    let chatbox = document.getElementById("chatbox");

    if(message.trim() === ""){
        return;
    }

    chatbox.innerHTML += "<div class='message user'>" + message + "</div>";

    let xhr = new XMLHttpRequest();
    xhr.open("POST", "response.php", true);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

    xhr.onload = function(){
        chatbox.innerHTML += "<div class='message bot'>" + this.responseText + "</div>";
        chatbox.scrollTop = chatbox.scrollHeight;
    }

    xhr.send("message=" + encodeURIComponent(message));

    document.getElementById("message").value = "";
}
</script>

</body>
</html>