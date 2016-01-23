// малый календарь
$(function(){            
                                    
    $('#dpInline').datepicker({
        dateFormat: 'dd.mm.yy',
        prevText: '<i class="fa fa-chevron-left"></i>',
        nextText: '<i class="fa fa-chevron-right"></i>'
    });          
}); 

//большой календарь
	
$(document).ready(function() {
    jQuery.getJSON('data.json', function (json) {
        var AvailableDates = json;
        var dateArray = [];
        for (i = 0; i < json.events.length; i++){
            dateArray[i] = json.events[i].date;
        }            
        $('#dpInlineBig').datepicker({ // для календаря
            dateFormat: 'dd.mm.yy',
            prevText: '<i class="fa fa-chevron-left"></i>',
            nextText: '<i class="fa fa-chevron-right"></i>',
            altField: "#calendarDateField",
            altFormat: "yy-mm-dd",
            onSelect: function(date) {
                var dt_val = $('#calendarDateField').val();
                for (i = 0; i < AvailableDates.events.length; i++){
                    if (AvailableDates.events[i].date == dt_val){
                        var html = "";
                        function dateToString(e){
                            var dateYear = e.slice(0,4);
                            var dateMonth = e.slice(5,7);
                            var dateDay = e.slice(8,10);
                            return(dateDay + '.' + dateMonth + '.' + dateYear + ' ');
                        }
                        html += dateToString(AvailableDates.events[i].date);
                        html += AvailableDates.events[i].locate;
                        $('#calendarListData').html(html);
                    }
                }
            },
            beforeShowDay: function(date){
                var string = jQuery.datepicker.formatDate('yy-mm-dd', date);
                if (dateArray.indexOf(string) == -1)
                {
                    return [true, "calendarTdNotActive",""]; 
                }
                else
                {
                    var tx = "";
                    for (i = 0; i < AvailableDates.events.length; i++){
                        if (AvailableDates.events[i].date == string){
                            tx = AvailableDates.events[i].locate;
                        }
                        dateArray[i] = AvailableDates.events[i].date;
                    }
                    return [true, "",tx]; 
                }
            }
        });

    });
    var curdt = new Date(  );
    $('#dpInlineBig').datepicker( "setDate", curdt );
});
