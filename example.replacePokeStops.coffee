###
  Pokemon Go(c) MITM node proxy
  by Michael Strassburger <codepoet@cpan.org>

  This example replaces all PokeStops with beautiful kitten images :)

  Be aware: this is just visible to you and won't gain you any special powers
            but makes the the gaming experience a lot more fun :-)
###

PokemonGoMITM = require './lib/pokemon-go-mitm'

server = new PokemonGoMITM port: 8081
	.addResponseHandler "FortDetails", (data) ->
		data.name = "Sparksammy has HACKED Pokemon GO"
		data.description = "hacked!"
		data.image_urls = ["https://lh3.googleusercontent.com/-xOWGs5I-OnY/VbKZPrwO7-I/AAAAAAAACD0/L6hdBLzd46s/w506-h750/Sparksammy.png"]
		data