<link rel="stylesheet" href="css/switch.css" type="text/css">
<div width="100%" style="padding-left: 15px">
    <!-- <hr> -->
    COS221_PA5 | Golf DB | <label id="ThemeLable">Light</label>
    <label class="switchS">
        <input type="checkbox" name="switchTheme" id="switchTheme" onchange="toggleThemeLD()">
        <span class="sliderS roundS"></span>
    </label>
     Dark
</div>

<script type="text/javascript">
    var Global_theme = ("; "+document.cookie).split("; theme=").pop().split(";").shift();
    initTheme();
    function initTheme(){
        if(Global_theme == "light"){
            setTheme(Global_theme);
        }else if(Global_theme == "dark"){
            setTheme(Global_theme);
        }else if(Global_theme == ""){
            //document.getElementById("ThemeLable").innerHTML = document.getElementById("switchTheme").checked;
            setTheme("dark");
        }else{
            setTheme(Global_theme);
        }
    }

    function setTheme(theme){
        document.documentElement.setAttribute('data-theme', theme);
        document.cookie = "theme="+theme;
        Global_theme = theme;
        
        //document.getElementById("ThemeLable").innerHTML = "Theme: " + theme + " ";
        
        var checked = true; //Dark
        if(theme == "light") checked = false;
        document.getElementById("switchTheme").checked = checked;
    }

    function toggleThemeLD(){
        //document.getElementById("ThemeLable").innerHTML = document.getElementById("switchTheme").checked;
        //console.log(document.getElementById("switchTheme"));

        if(document.getElementById("switchTheme").checked){
            setTheme("dark");
        }else{
            setTheme("light");
        }
    }

    //document.documentElement.setAttribute('data-theme', 'light');
    //document.documentElement.setAttribute('data-theme', 'dark');
</script>

<style>
    .switchS {
    position: relative;
    display: inline-block;
    width: 50px;
    height: 24px;
  }
  
  /* Hide the default HTML checkbox */
  .switchS input {
    opacity: 0;
    width: 0;
    height: 0;
  }
  
  /*slider stuff*/
  .sliderS {
    position: absolute;
    cursor: pointer;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: #ccc;
    -webkit-transition: .4s;
    transition: .4s;
  }
  
  .sliderS:before {
    position: absolute;
    content: "";
    height: 20px;
    width: 20px;
    left: 2px;
    bottom: 2px;
    background-color: var(--font-primary-color);
    -webkit-transition: .4s;
    transition: .4s;
  }
  
  input:checked + .sliderS {
    background-color: #2196F3;
  }
  
  input:focus + .sliderS {
    box-shadow: 0 0 1px #2196F3;
  }
  
  input:checked + .sliderS:before {
    -webkit-transform: translateX(26px);
    -ms-transform: translateX(26px);
    transform: translateX(26px);
  }
  
/*for round slider add round class els is square*/
  .sliderS.roundS {
    border-radius: 24px;
  }
  
  .sliderS.roundS:before {
    border-radius: 50%;
  }
</style>