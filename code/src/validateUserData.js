function signUp(){
    var allValid = false;
    var SubmitButton = document.getElementById("submit");
    SubmitButton.style.display = "none";

    var fnb = isValidInput(document.getElementById("fname").value);
    var lnb = isValidInput(document.getElementById("lname").value);
    var unb = isValidInput(document.getElementById("uname").value);
    var emb = isValidEmail(document.getElementById("email").value);
    var pwb = isValidPassword(document.getElementById("password").value);

    if(!fnb){
        allValid = false;
        document.getElementById("error").innerHTML = "Invalid Fields";
        //document.getElementById("error").innerHTML += "First Name cannot be empty. ";
    }
    if(!lnb){
        allValid = false;
        document.getElementById("error").innerHTML = "Invalid Fields";
        //document.getElementById("error").innerHTML += "Last Name cannot be empty. ";
    }
    if(!unb){
        allValid = false;
        document.getElementById("error").innerHTML = "Invalid Fields";
        //document.getElementById("error").innerHTML += "Username cannot be empty. ";
    }
    if(!emb){
        allValid = false;
        document.getElementById("error").innerHTML = "Invalid Fields";
        //document.getElementById("error").innerHTML += "Invalid Email. ";
    }
    if(!pwb){
        allValid = false;
        document.getElementById("error").innerHTML = "Invalid Fields";
        //document.getElementById("error").innerHTML += "Invalid Password. ";
    }

    if(fnb&&lnb&&unb&&emb&&pwb){
        allValid = true;
        document.getElementById("error").innerHTML = "";
    }

    if(allValid) SubmitButton.style.display = "";
    else SubmitButton.style.display = "none";
}

function logIn(){
    var allValid = false;
    var SubmitButton = document.getElementById("submit");
    SubmitButton.style.display = "none";

    var emb = isValidEmail(document.getElementById("email").value);
    var pwb = isValidPassword(document.getElementById("password").value);

    if(!emb){
        allValid = false;
        document.getElementById("error").innerHTML = "Invalid Fields";
        //document.getElementById("error").innerHTML += "Invalid Email. ";
    }
    if(!pwb){
        allValid = false;
        document.getElementById("error").innerHTML = "Invalid Fields";
        //document.getElementById("error").innerHTML += "Invalid Password. ";
    }

    if(emb&&pwb){
        allValid = true;
        document.getElementById("error").innerHTML = "";
    }

    if(allValid) SubmitButton.style.display = "";
    else SubmitButton.style.display = "none";
}

function isValidEmail(email){
    var validEmailExp = /^[A-Za-z0-9._%+-]{1,64}@(?:[A-Za-z0-9-]{1,63}\.){1,125}[A-Za-z]{2,63}/;
    return validEmailExp.test(email);
}

function isValidPassword(password){
    var validPasswordExp = /(?=(((\w)*([A-Z])+(\w)*(\W)+(\w)*([0-9])+)|((\w)*(\W)+(\w)*([0-9])(\w)*([A-Z])+)|((\w)*([0-9])+(\w)*([A-Z])+(\w)*(\W)+)|((\w)*([A-Z])+(\w)*([0-9])+(\w)*(\W)+)|((\w)*([0-9])+(\w)*(\W)+(\w)*([A-Z])+)|((\w)*(\W)+(\w)*([A-Z])+(\w)*([0-9])+)))(?=.{8,})/;
    return validPasswordExp.test(password);
}

function isValidInput(input){
    var validInputExp = /.{1,}/;
    return validInputExp.test(input);
}