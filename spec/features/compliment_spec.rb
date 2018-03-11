feature 'Complimenting' do
  scenario 'player1 compliments player2' do
    sign_in_and_play
    click_button 'Compliment'
    expect(page).to have_content 'Donald complimented Kim'
  end

  scenario 'player2 compliments player1' do
    sign_in_and_play
    compliment_and_confirm
    click_button 'Compliment'
    expect(page).to have_content 'Kim complimented Donald'
  end

  context 'dealing with set love(damage)' do
    before do
      allow(Kernel).to receive(:rand).and_return(10)
    end

  scenario 'reduce player1 HP by 10' do
    sign_in_and_play
    2.times { compliment_and_confirm }
    expect(page).not_to have_content 'Donald: 60/60 HP'
    expect(page).to have_content 'Donald: 50/60 HP'
  end

  scenario 'Reduce player2 HP by 10' do
   sign_in_and_play
   compliment_and_confirm
   expect(page).not_to have_content 'Kim: 60/60 HP'
   expect(page).to have_content 'Kim: 50/60 HP'
 end
end

  context 'dealing with random love(damage)' do
    scenario 'reduce player2 HP by a random amount' do
      sign_in_and_play
      compliment_and_confirm
      expect(page).not_to have_content 'Kim: 60/60 HP'
    end

    scenario 'reduce player1 HP by a random amount' do
      sign_in_and_play
      2.times { compliment_and_confirm }
      expect(page).not_to have_content 'Donald: 60/60 HP'
    end
  end
 end
