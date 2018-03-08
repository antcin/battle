feature 'Complimenting' do
  scenario 'player1 compliments player2' do
    sign_in_and_play
    click_button 'Compliment'
    expect(page).to have_content 'Donald complimented Kim'
  end

  scenario 'player2 compliments player1' do
    sign_in_and_play
    click_button 'Compliment'
    click_button 'Aww'
    click_button 'Compliment'
    expect(page).to have_content 'Kim complimented Donald'
  end

  scenario 'reduce player1 HP by 10' do
    sign_in_and_play
    click_button 'Compliment'
    click_button 'Aww'
    click_button 'Compliment'
    click_button 'Aww'
    expect(page).not_to have_content 'Donald: 60/60'
    expect(page).to have_content 'Donald: 50/60'
  end

  scenario 'Reduce player2 HP by 10' do
   sign_in_and_play
   click_button 'Compliment'
   click_button 'Aww'
   expect(page).not_to have_content 'Kim: 60/60'
   expect(page).to have_content 'Kim: 50/60'
 end
end
