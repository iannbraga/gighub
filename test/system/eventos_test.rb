require "application_system_test_case"

class EventosTest < ApplicationSystemTestCase
  setup do
    @evento = eventos(:one)
  end

  test "visiting the index" do
    visit eventos_url
    assert_selector "h1", text: "Eventos"
  end

  test "should create evento" do
    visit eventos_url
    click_on "New evento"

    fill_in "Cache", with: @evento.cache
    fill_in "Couvert", with: @evento.couvert
    fill_in "Data hora inicio", with: @evento.data_hora_inicio
    fill_in "Data hora termino", with: @evento.data_hora_termino
    fill_in "Descricao", with: @evento.descricao
    fill_in "Horas tocadas", with: @evento.horas_tocadas
    fill_in "Minutos tocados", with: @evento.minutos_tocados
    fill_in "Nome", with: @evento.nome
    click_on "Create Evento"

    assert_text "Evento was successfully created"
    click_on "Back"
  end

  test "should update Evento" do
    visit evento_url(@evento)
    click_on "Edit this evento", match: :first

    fill_in "Cache", with: @evento.cache
    fill_in "Couvert", with: @evento.couvert
    fill_in "Data hora inicio", with: @evento.data_hora_inicio
    fill_in "Data hora termino", with: @evento.data_hora_termino
    fill_in "Descricao", with: @evento.descricao
    fill_in "Horas tocadas", with: @evento.horas_tocadas
    fill_in "Minutos tocados", with: @evento.minutos_tocados
    fill_in "Nome", with: @evento.nome
    click_on "Update Evento"

    assert_text "Evento was successfully updated"
    click_on "Back"
  end

  test "should destroy Evento" do
    visit evento_url(@evento)
    click_on "Destroy this evento", match: :first

    assert_text "Evento was successfully destroyed"
  end
end
