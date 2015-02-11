class EstaticasController < ApplicationController
    def home
       
        @ciudads = Ciudad.all
    end
end
