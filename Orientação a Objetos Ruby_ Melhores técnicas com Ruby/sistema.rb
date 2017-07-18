require_relative "livro"
require_relative "revista"
require_relative "ebook"
require_relative "estoque"

def livro_para_newsletter(livro)
     if livro.ano_lancamento < 2000
     puts "Newsletter/Liquidacao"
     puts livro.titulo
     puts livro.preco
     puts livro.possui_reimpressao?
     end
end

algoritmos = Livro.new("Algoritmos", 100, 1998, true, true,"editora")
arquitetura = Livro.new("Introdução à Arquitetura e Designer de Software", 70, 2011, true, true,"editora")
programmer = Livro.new("The Pragmatic Programmer", 100, 1999, true, true,"editora")
ruby = Livro.new("Programming Ruby", 100,2004,true, true,"editora")

revistona = Revista.new("Algoritmos Revista de Ruby", 10, 2012, true, 1, "Revistas")

online_arquitetura = EBook.new("Introdução a Arquitetura e Design de Software", 50, 2012, "editora")

estoque = Estoque.new
estoque << algoritmos << algoritmos << ruby << programmer << arquitetura << ruby << ruby << revistona << revistona
estoque << online_arquitetura

estoque.vende ruby
estoque.vende ruby
estoque.vende ruby
estoque.vende algoritmos
estoque.vende algoritmos
estoque.vende revistona
estoque.vende online_arquitetura

puts estoque.livro_que_mais_vendeu_por_titulo.titulo
puts estoque.revista_que_mais_vendeu_por_titulo.titulo
puts estoque.ebook_que_mais_vendeu_por_titulo.titulo
puts estoque.respond_to?(:ebook_que_mais_vendeu_por_titulo)