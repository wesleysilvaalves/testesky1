Dado("que eu acesse o site") do
    @acessar.acessar_site
    @clique.clicar_close
   end
   
   Quando("eu acesso o guia") do
     @clique.clicar
     @validar.validar_presenca_texto
     @clique.clicar_AZ
     
     #@clique.clicar_programacao
     
   end
   Então("espero que o texto da programação seja o mesmo da tela") do
   
    @validar.validar_texto
   end
 