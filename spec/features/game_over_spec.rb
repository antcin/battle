feature 'Game over' do
  context 'when player1 reaches 0 HP first' do
    before do
      sign_in_and_play
      compliment_and_confirm
      allow(Kernel).to receive(:rand).and_return(60)
    end

    scenario 'player1 loses' do
      click_button 'Compliment'
      expect(page).to have_content 'Donald is in love!'
    end
  end
end
