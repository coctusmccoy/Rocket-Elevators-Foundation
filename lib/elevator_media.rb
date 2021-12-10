require 'json'
module ElevatorMedia
    class Streamer
        def self.getContent(input, index, interventionParams)
            @interventions = Intervention.all
            @parsedJSON = JSON.parse(interventionParams.to_json)
            #check if the input is a chuck norris fact JSON or if it's not 
            if input == nil
                #check if there is a index of an intervention to check, if not it create one
                if index == nil
                    fillIntervention()
                    "<div> the last intervention was created by #{@newIntervention.author} for customer #{@newIntervention.customer_id}</div>"
                else
                    "<div> the intervention #{index} is #{@interventions[index].status}</div>"
                end
                
            else
                #if there is an index it get the categorie with that index if not it gives a random fact
                if index == nil
                    "<div>#{input["value"]}</div>"
                else 
                    "<div>#{input[index]}</div>"
                end
            end
        end
    end
end


def fillIntervention()
    @newIntervention = Intervention.new(@parsedJSON)
    @newIntervention.save
end
