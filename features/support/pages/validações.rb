
class Validacoes
    include Capybara::DSL
    
    def validar_texto
            
        
       
        within('.program-schedule-content') do
            find('sky-modal-program-wapper').assert_text("Os Crimes de Fortitude")
        end
    end
  
    def validar_presenca_texto 

            assert_no_selector(".loading-spinner", wait: 50)
        
        
    end


    
end