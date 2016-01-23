function dateToString(e){
    var dateYear = e.slice(0,4);
    var dateMonth = e.slice(5,7);
    var dateDay = e.slice(8,10);
    return(dateDay + '.' + dateMonth + '.' + dateYear + ' ');
}

// малый календарь

$(document).ready(function() {
    jQuery.getJSON('data.json', function (json) {
        var AvailableDates = json;
        var dateArray = [];
        for (i = 0; i < json.events.length; i++){
            dateArray[i] = json.events[i].date;
        }            
        $('#dpInline').datepicker({ // для календаря
            dateFormat: 'dd.mm.yy',
            prevText: '<i class="fa fa-chevron-left"></i>',
            nextText: '<i class="fa fa-chevron-right"></i>',
            altField: "#calendarDateField",
            altFormat: "yy-mm-dd",
            onSelect: function(date) {
                window.open('/calendar', '_blank');
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
    $('#dpInline').datepicker( "setDate", curdt );
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
                var html = "";
                for (i = 0; i < AvailableDates.events.length; i++){
                    if (AvailableDates.events[i].date == dt_val){
                        html += '<div class="col-md-4"><div class="post-item style2 item-calendar no-padding"><div class="post-content-wr"><div class="post-meta-top"><div class="post-image">';
                        html += '<a href="' + AvailableDates.events[i].link + '">';
                        html += '<img src="' + AvailableDates.events[i].image + '" alt="'+ AvailableDates.events[i].title + '">';
                        html += '</a></div><h2 class="post-title">';
                        html += '<a href="' + AvailableDates.events[i].link + '">'+ AvailableDates.events[i].title + '</a>';
                        html += '</h2></div><div class="post-content  clearfix">';
                        html += '<div class="post-tags">' + dateToString(AvailableDates.events[i].date) + '</div>';                      
                        html += '<div class="post-desc">';
                        var miniDesc = AvailableDates.events[i].desription;console.log(miniDesc);
                        miniDesc = miniDesc.slice(0,20);
                        html += '<p>' + miniDesc + '...</p>';
                        html += '</div></div></div></div></div>';
                    }
                    $('#calendarListData').html(html);
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
