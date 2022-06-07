const Index_Page = "Index_Page";
const Login_Page = "Login_Page";
const Signup_Page = "Signup_Page";
const Logout_Page = "Logout_Page";


function initNavbar(page){
    //links
    var link_NavbarIndex = document.getElementById("NavbarIndex");
    var link_NavbarLogin = document.getElementById("NavbarLogin");
    var link_NavbarSignup = document.getElementById("NavbarSignup");

    //user
    var link_NavbarLogout = document.getElementById("NavbarLogout");

    //other
    var input_NavbarHelp = document.getElementById("NavbarHelp");
    var input_NavbarMoreOptions = document.getElementById("NavbarMoreOptions");

    //init
    link_NavbarIndexMain.style.display = "none";

    //user
    logedIn_init(false);
    // link_NavbarSignup.style.display = "";
    // link_NavbarLogin.style.display = "none";

    //Help
    input_NavbarHelp.style.display = "none";
    input_NavbarMoreOptions.style.display = "none";

    if (page == Index_Page){
        //Index_Page
        link_NavbarIndex.style.display = "none";
        link_NavbarIndexMain.style.display = "";

        input_NavbarHelp.style.display = "";
        input_NavbarMoreOptions.style.display = "none";
    }
    else if (page == Login_Page){
        //Login_Page
        link_NavbarLogin.className = "current";
        link_NavbarLogin.style.display = "";

        input_NavbarMoreOptions.style.display = "none";
        link_NavbarSignup.style.display = "";
    }
    else if (page == Signup_Page){
        //Signup_Page
        link_NavbarSignup.className = "current";

        input_NavbarMoreOptions.style.display = "none";

        link_NavbarLogin.style.display = "";
    }
    else{
        //None
        link_NavbarSignup.style.display = "none";

        link_NavbarIndex.innerHTML = "Back to Home"
    }

    if(Global_LogedIN){
        logedIn_init(true);
    }
}

function logedIn_init(logedIn){
    var link_NavbarLogin = document.getElementById("NavbarLogin");
    var link_NavbarSignup = document.getElementById("NavbarSignup");

    //user
    var link_NavbarLogout = document.getElementById("NavbarLogout");
    var link_NavbarUser = document.getElementById("NavbarUser");

    if(logedIn){
        link_NavbarLogin.style.display = "none";
        link_NavbarSignup.style.display = "none";

        link_NavbarUser.style.display = "";
        //link_NavbarLogout.style.display = "";

        link_NavbarUser.innerHTML = Global_UserName;
    }else{
        link_NavbarLogin.style.display = "none";
        link_NavbarSignup.style.display = "";

        link_NavbarUser.style.display = "none";
        link_NavbarLogout.style.display = "none";

        link_NavbarUser.innerHTML = "User";
    }
}

function initNavbarLogin(email, uname, logedIn){
    Global_Email = email;
    Global_UserName = uname;
    Global_LogedIN = logedIn;

    if(Global_LogedIN){
        logedIn_init(true);
        console.log("LogedIn: " + email + ", " + uname + ", " + logedIn)
    }else{
        console.log("Not LogedIn: " + email + ", " + uname + ", " + logedIn)
    }
}

var Global_Email;
var Global_UserName;
var Global_LogedIN;

console.log(Global_Email+Global_UserName+Global_LogedIN);