jQuery ->
    $('#interventions_building_id').parent().hide()
    building = $('#interventions_building_id').html()
    $('#interventions_customer_id').change ->
         
        customer = $('#interventions_customer_id :selected').text()
        optionsBuilding = $(building).filter("optgroup[label='#{customer}']").html()
        optiont = $(building).filter("").html()
        if optionsBuilding
            $('#interventions_building_id').html(optionsBuilding + optiont) 
            $('#interventions_building_id').parent().show()
            $('#interventions_battery_id').parent().hide()
            $('#interventions_column_id').parent().hide()
            $('#interventions_elevator_id').parent().hide()

        else 
            $('#interventions_building_id').empty()
            $('#interventions_building_id').parent().hide()
            $('#interventions_battery_id').parent().hide() 
            $('#interventions_column_id').parent().hide() 
            $('#interventions_elevator_id').parent().hide()         
                