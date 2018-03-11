feature 'Switch turns' do
  context 'See current turn' do
    scenario 'when the game starts' do
      sign_in_and_play
      expect(page).to have_content "Donald's turn"
    end

    scenario 'After player 1 attacks' do
      sign_in_and_play
      compliment_and_confirm
      expect(page).not_to have_content "Donald's turn"
      expect(page).to have_content "Kim's turn"
    end
  end
end
