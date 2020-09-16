
feature 'Adding names' do
   scenario 'can you add two names to battle?' do
      visit('/')
      fill_in "player_1", with: "Linus"
      fill_in "player_2", with: "Ollie"
      click_button "Submit"
      #visit('/names')
      expect(page).to have_content "Player_1: Linus"
      expect(page).to have_content "Player_2: Ollie"
    end


  end
