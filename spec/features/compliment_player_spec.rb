feature 'Compliment player 2' do
  scenario 'player 1 compliments player 2' do
    sign_in_and_play
    click_link('Compliment')
    expect(page).to have_content 'Donald compliments Kim'
  end

  scenario 'reduce Player 2 HP by 10' do
   sign_in_and_play
   click_link 'Compliment'
   click_link 'Aww'
   expect(page).not_to have_content 'Kim: 60/60'
   expect(page).to have_content 'Kim: 50/60'
 end

end
