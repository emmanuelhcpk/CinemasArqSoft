module ApplicationHelper
    
    def es_admin?
        
        if current_socio.admin==true
        return true    
        
        else
            return false
            
        end
        
        
        
    end
    
    #metodos para verificar admins 
    
 def permisos_administrador?
                
           if socio_signed_in?
               
                if current_socio.admin==false
                    
                    redirect_to error_path
                   
                else
                    return true
                    
                end
                
            
            else
                    
                redirect_to new_socio_session_path
            end
    
    
      end

   


    
    
end
