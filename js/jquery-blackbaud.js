//Add current year to the footer
$(document).ready(function(){
    var date,currentYear;
    date = new Date();
    currentYear = date.getFullYear();
    $("#currentYear").text( currentYear );
});

// toggle visibility to show only the day the
$(document).ready(function(){
    hideAllDaysContent();
    $("#day"+0).show();
    $( "#dayDropdown" ).change(function() {
        var dropdownValue = $( "#dayDropdown" ).val();
        hideAllDaysContent();
        $("#day"+dropdownValue).show();
    });
});

function hideAllDaysContent()
{
    var dayDropdownSize, index, currentId;
    var dayDropdownSize = $( "#dayDropdown").children('option').length;

    for(index=0; index <dayDropdownSize; index+= 1) {
        currentId = "#day"+index;
        $("#day"+index).hide();
    }
}