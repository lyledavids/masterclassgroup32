function show(shown, hidden1, hidden2) {
    document.getElementById(shown).style.display='block';
    document.getElementById(hidden1).style.display='none';
    document.getElementById(hidden2).style.display='none';
    return false;
}

function hideall() {
    document.getElementById("balancepage").style.display="none";
    document.getElementById("stakepage").style.display="none";
    document.getElementById("withdrawpage").style.display="none";
    return true;
    }