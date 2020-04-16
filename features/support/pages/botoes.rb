class Botoes
    include Capybara::DSL
  
    def clicar
      find(:xpath, "(//a[contains(text(), 'Guia')])[2]").click
     
      
      
    end
    def clicar_close
        find('.close').click
    end
    def clicar_AZ
        (all('.epg-ico.ico-arrow.icon-arrow-down-border')[1]).click 
        (all('.select-item.option ')[1]).click
        sleep(10)
        
 
    end
    def clicar_programacao
        (all('.program-schedule-content')[0]).click


      

       
    end

end