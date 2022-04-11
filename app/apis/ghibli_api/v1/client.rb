module GhibliApi
    module V1
        class Client
            def films_list
                response = connection.get("/films")
                JSON.parse(response.body, object_class: OpenStruct)
            end

            def characters_list
                response = connection.get("/people")
                JSON.parse(response.body, object_class: OpenStruct)
            end

            def locations_list
                response = connection.get("/locations")
                JSON.parse(response.body, object_class: OpenStruct)
            end

            def vehicles_list
                response = connection.get("/vehicles")
                JSON.parse(response.body, object_class: OpenStruct)
            end

            def species_list
                response = connection.get("/species")
                JSON.parse(response.body, object_class: OpenStruct)
            end

            private 

            def connection
                Faraday.new("https://ghibliapi.herokuapp.com")
            end
        end

    end
end
