//A script megnézi a böngésző nyelvét, és ha az magyar, akkor átirányít
$(document).ready(function() {
    var userLang = navigator.language || navigator.userLanguage;
    if(userLang.substring(0,2) == 'hu'){
        window.location.href = 'site/the-divided-soul.html';
    } else {
        window.location.href = 'en/the-divided-soul.html';
    }
});