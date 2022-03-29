// Please see documentation at https://docs.microsoft.com/aspnet/core/client-side/bundling-and-minification
// for details on configuring this project to bundle and minify static web assets.

// Write your JavaScript code.

function planetDisplay(numb) {
    if (numb != 0) {
        document.getElementById("window").style.display = "block";
        document.getElementById("overlay").style.display = "block";
    } else {
        document.getElementById("window").style.display = "none";
        document.getElementById("overlay").style.display = "none";
    }
    for (var i = 1; i < 9; i++) {
        if (i == numb) {
            document.getElementById("imgplanet" + i).style.display = "block";
            document.getElementById("txtplanet" + i).style.display = "block";
        } else {
            document.getElementById("imgplanet" + i).style.display = "none";
            document.getElementById("txtplanet" + i).style.display = "none";
        }
    }

}

function off() {
    document.getElementById("window").style.display = "none";
    document.getElementById("overlay").style.display = "none";
    for (var i = 1; i < 9; i++) {
        document.getElementById("imgplanet" + i).style.display = "none";
        document.getElementById("txtplanet" + i).style.display = "none";
    }
}


var socket = new WebSocket("ws://192.168.1.143:5000")

socket.onmessage = function (event) {
    let planetchoosen = decider(event.data);
    if(planetchoosen > 0 && planetchoosen < 9){
        planetDisplay(planetchoosen);
    } else{
        off();
    }
}

function send(message){
    socket.send(message)
}

function decider(receivedmessage){
    switch(receivedmessage){
        case 'mercury':
            return 1;
        case 'venus':
            return 2;
        case 'earth':
            return 3;
        case 'mars':
            return 4;
        case 'jupiter':
            return 5;
        case 'saturn':
            return 6;
        case 'uranus':
            return 7;
        case 'neptune':
            return 8;
        default: return 0;
    }
}