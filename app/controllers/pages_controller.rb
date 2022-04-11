class PagesController < ApplicationController 
    def home
        
    end

    def films
        client = GhibliApi::V1::Client.new
        @films_list = client.films_list
        @film_characters = client.characters_list
        @vehicles_list = client.vehicles_list
        @locations_list = client.locations_list
        @species_list = client.species_list
    end

    def characters
        client = GhibliApi::V1::Client.new
        @characters_list = client.characters_list
        @character_films = client.films_list
    end

    def vehicles
        client = GhibliApi::V1::Client.new
        @vehicles_list = client.vehicles_list
    end

    def locations
        client = GhibliApi::V1::Client.new
        @locations_list = client.locations_list
    end

    def species
        client = GhibliApi::V1::Client.new
        @species_list = client.species_list
    end
end