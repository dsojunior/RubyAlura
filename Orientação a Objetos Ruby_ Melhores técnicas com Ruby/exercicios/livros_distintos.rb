livros_computacao = ["Agile Web Development with Rails", "Domain Driven Design", "Programming Ruby 1.9", "Agile Web Development with Rails"]

def livros_computacao.length
	unique = []
	self.each do |item|
		unique.push(item) unless unique.include?(item)
	end
	unique.length
end

puts "Olá! Há #{livros_computacao.length} títulos distintos na lista de livros!"