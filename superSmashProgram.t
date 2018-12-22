setscreen ("graphics:1180;500")

var character, player, characterColor : string := "blank"
var font1, font2, font3 : int
var x, y, button : int

var titleScreen : int := Pic.FileNew ("titleScreen.jpg")

var roster : int := Pic.FileNew ("roster.jpg")
var rosterScaled : int := Pic.Scale (roster, 1050, 600)

var greenLink : int := Pic.FileNew ("greenLink.jpg")
greenLink := Pic.Scale (greenLink, 250, 250)
var redLink : int := Pic.FileNew ("redLink.jpg")
redLink := Pic.Scale (redLink, 238, 192)
var blackLink : int := Pic.FileNew ("blackLink.jpg")
blackLink := Pic.Scale (blackLink, 238, 192)
var blueLink : int := Pic.FileNew ("blueLink.jpg")
blueLink := Pic.Scale (blueLink, 238, 192)
var purpleLink : int := Pic.FileNew ("purpleLink.jpg")
purpleLink := Pic.Scale (purpleLink, 238, 192)
var brownLink : int := Pic.FileNew ("brownLink.jpg")
brownLink := Pic.Scale (brownLink, 238, 192)

var redMario : int := Pic.FileNew ("redMario.jpg")
redMario := Pic.Scale (redMario, 250, 250)
var blueMario : int := Pic.FileNew ("blueMario.jpg")
blueMario := Pic.Scale (blueMario, 238, 192)
var brownMario : int := Pic.FileNew ("brownMario.jpg")
brownMario := Pic.Scale (brownMario, 238, 192)
var greenMario : int := Pic.FileNew ("greenMario.jpg")
greenMario := Pic.Scale (greenMario, 238, 192)
var whiteMario : int := Pic.FileNew ("whiteMario.jpg")
whiteMario := Pic.Scale (whiteMario, 238, 192)
var yellowMario : int := Pic.FileNew ("yellowMario.jpg")
yellowMario := Pic.Scale (yellowMario, 238, 192)

var greenYoshi : int := Pic.FileNew ("greenYoshi.jpg")
greenYoshi := Pic.Scale (greenYoshi, 250, 250)

var blueMarth : int := Pic.FileNew ("blueMarth.jpg")
blueMarth := Pic.Scale (blueMarth, 250, 250)


font1 := Font.New ("Times New Roman:44:bold")
font2 := Font.New ("Times New Roman:18")
font3 := Font.New ("Times New Roman:24:bold")

forward proc main
forward proc startScreen

body proc startScreen
    Music.PlayFileLoop ("themeMusic.mp3")
    Pic.Draw (titleScreen, 0, -110, picCopy)
    drawfillbox (510, 75, 685, 132, blue)
    Font.Draw ("Start", 533, 85, font1, white)
    loop
	mousewhere (x, y, button)
	if x >= 510 and x <= 685 and y >= 75 and y <= 132 and button = 1 then
	    main
	    exit
	elsif x >= 510 and x <= 685 and y >= 75 and y <= 132 and button = 0 then
	    Font.Draw ("Start", 533, 85, font1, red)
	else
	    Font.Draw ("Start", 533, 85, font1, white)
	end if
    end loop
end startScreen

body proc main
    Music.PlayFileLoop ("selectScreenMusic.mp3")
    setscreen ("graphics:1050;600")
    cls
    Pic.Draw (rosterScaled, 0, 0, picCopy)
    Pic.Draw (greenLink, 5, 275, picCopy)
    greenLink := Pic.Scale (greenLink, 238, 192)
    Pic.Draw (redMario, 265, 275, picCopy)
    redMario := Pic.Scale (redMario, 238, 192)
    Pic.Draw (greenYoshi, 525, 275, picCopy)
    greenYoshi := Pic.Scale (greenYoshi, 238, 192)
    Pic.Draw (blueMarth, 785, 275, picCopy)
    blueMarth := Pic.Scale (blueMarth, 238, 192)
    drawfillbox (35, 73, 273, 265, red)
    drawfillbox (282, 73, 520, 265, blue)
    drawfillbox (530, 0, 1045, 265, darkgrey)
    Font.Draw ("Click Here For Player 1", 43, 155, font2, white)
    Font.Draw ("Click Here For Player 2", 286, 155, font2, white)
    Font.Draw ("Character Color", 680, 240, font3, white)
    drawfillbox (560, 10, 660, 110, yellow)
    drawfillbox (560, 120, 660, 220, green)
    drawfillbox (680, 10, 780, 110, red)
    drawfillbox (680, 120, 780, 220, blue)
    drawfillbox (800, 10, 900, 110, 186)
    drawfillbox (800, 120, 900, 220, white)
    drawfillbox (920, 10, 1020, 110, black)
    drawfillbox (920, 120, 1020, 220, purple)
    loop
	mousewhere (x, y, button)
	if x >= 35 and x <= 273 and y >= 73 and y <= 265 and button = 1 then
	    player := "player1"
	elsif x >= 282 and x <= 520 and y >= 73 and y <= 265 and button = 1 then
	    player := "player2"
	end if
	if x >= 5 and x <= 255 and y >= 275 and y <= 525 and button = 1 then
	    character := "link"
	elsif x >= 265 and x <= 515 and y >= 275 and y <= 525 and button = 1 then
	    character := "mario"
	elsif x >= 525 and x <= 775 and y >= 275 and y < 525 and button = 1 then
	    character := "yoshi"
	elsif x >= 785 and x <= 1035 and y >= 275 and y <= 525 and button = 1 then
	    character := "marth"
	end if
	if x >= 560 and x <= 660 and y >= 10 and y <= 110 and button = 1 then
	    characterColor := "yellow"
	elsif x >= 560 and x <= 660 and y >= 120 and y <= 220 and button = 1 then
	    characterColor := "green"
	elsif x >= 680 and x <= 780 and y >= 10 and y <= 110 and button = 1 then
	    characterColor := "red"
	elsif x >= 680 and x <= 780 and y >= 120 and y <= 220 and button = 1 then
	    characterColor := "blue"
	elsif x >= 800 and x <= 900 and y >= 10 and y <= 110 and button = 1 then
	    characterColor := "brown"
	elsif x >= 800 and x <= 900 and y >= 120 and y <= 220 and button = 1 then
	    characterColor := "white"
	elsif x >= 920 and x <= 1020 and y >= 10 and y <= 110 and button = 1 then
	    characterColor := "black"
	elsif x >= 920 and x <= 1020 and y >= 120 and y <= 220 and button = 1 then
	    characterColor := "purple"
	end if
	if player = "player1" and character = "link" and characterColor = "green" then
	    Pic.Draw (greenLink, 35, 73, picCopy)
	elsif player = "player1" and character = "link" and characterColor = "red" then
	    Pic.Draw (redLink, 35, 73, picCopy)
	elsif player = "player1" and character = "link" and characterColor = "black" then
	    Pic.Draw (blackLink, 35, 73, picCopy)
	elsif player = "player1" and character = "link" and characterColor = "blue" then
	    Pic.Draw (blueLink, 35, 73, picCopy)
	elsif player = "player1" and character = "link" and characterColor = "purple" then
	    Pic.Draw (purpleLink, 35, 73, picCopy)
	elsif player = "player1" and character = "link" and characterColor = "brown" then
	    Pic.Draw (brownLink, 35, 73, picCopy)
	elsif player = "player2" and character = "link" and characterColor = "green" then
	    Pic.Draw (greenLink, 282, 73, picCopy)
	elsif player = "player2" and character = "link" and characterColor = "red" then
	    Pic.Draw (redLink, 282, 73, picCopy)
	elsif player = "player2" and character = "link" and characterColor = "black" then
	    Pic.Draw (blackLink, 282, 73, picCopy)
	elsif player = "player2" and character = "link" and characterColor = "blue" then
	    Pic.Draw (blueLink, 282, 73, picCopy)
	elsif player = "player2" and character = "link" and characterColor = "purple" then
	    Pic.Draw (purpleLink, 282, 73, picCopy)
	elsif player = "player2" and character = "link" and characterColor = "brown" then
	    Pic.Draw (brownLink, 282, 73, picCopy)
	elsif player = "player1" and character = "mario" and characterColor = "red" then
	    Pic.Draw (redMario, 35, 73, picCopy)
	elsif player = "player1" and character = "mario" and characterColor = "blue" then
	    Pic.Draw (blueMario, 35, 73, picCopy)
	elsif player = "player1" and character = "mario" and characterColor = "brown" then
	    Pic.Draw (brownMario, 35, 73, picCopy)
	elsif player = "player1" and character = "mario" and characterColor = "green" then
	    Pic.Draw (greenMario, 35, 73, picCopy)
	elsif player = "player1" and character = "mario" and characterColor = "white" then
	    Pic.Draw (whiteMario, 35, 73, picCopy)
	elsif player = "player 1" and character = "mario" and characterColor = "yellow" then
	    Pic.Draw (yellowMario, 35, 73, picCopy)
	end if
    end loop
end main

startScreen
