Dado("que esteja na pagina de pesquisa de imóveis") do
    visit ("https://www.quintoandar.com.br/")
    find('input[name="LocationName"]').set 'Paulista, Consolação'
    find('a[id="searchbutton"]').click
end
  
Quando("acessar selecionar os filtros desejados") do
    click_button("Filtrar")
    find('label[for="id-1-1"]').click
    find('label[for="id-1-2"]').click
    find('label[for="id-2-1"]').click
    find('label[for="id-3-2"]').click
    find('label[for="id-4-2"]').click
    find('label[for="id-5-2"]').click
    find('label[for="id-6-3"]').click
    click_button("Aplicar")
end
  
Então("deve validar os filtros selecionados") do
   assert_text("1 vaga")
   assert_text("Mobiliado")
   assert_text("Metrô próx.")
   assert_text("1, 2 dorms")
   assert_text("Apartamento")
   assert_text("Não aceita")
end