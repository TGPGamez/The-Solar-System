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