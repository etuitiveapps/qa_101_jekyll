$(document).ready(function(){
    var date,currentYear;
    date = new Date();
    currentYear = date.getFullYear();
    $("#currentYear").text( currentYear );
});