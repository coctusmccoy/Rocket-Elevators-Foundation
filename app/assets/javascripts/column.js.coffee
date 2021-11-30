jQuery ->
    $('#interventions_column_id').parent().hide()
    column = $('#interventions_column_id').html()
    $('#interventions_building_id').change ->
         
        battery = $('#interventions_battery_id :selected').text()
        optionscolumn = $(column).filter("optgroup[label='#{battery}']").html()
        if optionscolumn
            $('#interventions_column_id').html(optionscolumn)
        else 
            $('#interventions_column_id').empty() 