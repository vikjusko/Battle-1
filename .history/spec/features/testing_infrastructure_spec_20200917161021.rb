feature "Testing infrastructure" do
  scenario 'can you add two names to battle?' do
    sign_in_and_play
    expect(page).to have_content "Player_1: Linus"
    expect(page).to have_content "Player_2: Ollie"
  end

  scenario "Can i see players hit points" do
    sign_in_and_play
    expect(page).to have_content "HP: 60"
  end
=begin
  scenario "I want to beat up linus" do
    sign_in_and_play
    click_button "player_2_attack"
    expect(page).to have_content "Ollie attacked Linus"
  end 
=end
  scenario "I want Linus to lose health when i hit him" do
    sign_in_and_play
    click_link "Attack"
    click_link 'OK'
    expect(page).not_to have_content "Linus HP: 60"
    expect(page).to have_content "Linus HP: 50"
  end

  scenario "I want to see who's turn it is to go" do
  sign_in_and_play
  expect(page).to have_content "It's Ollies turn"
  end 



end
