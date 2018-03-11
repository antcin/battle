def sign_in_and_play
  visit '/'
  fill_in :player1_name, with: 'Donald'
  fill_in :player2_name, with: 'Kim'
  click_button 'Submit'
end

def compliment_and_confirm
  click_button 'Compliment'
  click_button 'Aww'
end
