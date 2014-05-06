//Add current year to the footer
$(document).ready(function(){
    var date,currentYear;
    date = new Date();
    currentYear = date.getFullYear();
    $("#currentYear").text( currentYear );
});

$(document).ready(function(){
    hideAllDaysContent();
    var dropdownValue = $( "#dayDropdown" ).val();
    $("#day"+dropdownValue).show();
});

$(document).ready(function(){
    $( "#dayDropdown" ).change(function() {
        var dropdownValue = $( "#dayDropdown" ).val();
        hideAllDaysContent();
        $("#day"+dropdownValue).show();
    });
});

// Hide all of the divs with content for each day.
function hideAllDaysContent()
{
    var dayDropdownSize, index, currentId;
    var dayDropdownSize = $( "#dayDropdown").children('option').length;

    for(index=0; index <dayDropdownSize; index+= 1) {
        currentId = "#day"+index;
        $("#day"+index).hide();
    }
}