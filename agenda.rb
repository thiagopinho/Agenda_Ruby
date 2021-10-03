@agenda = [
  {nome: "Rodrigo", telefone: "(11) 99882-5151"},
  {nome: "Thiago", telefone: "(11) 93052-9850"}
]

def all_contacts
  @agenda.each do |contato| 
    puts "#{contato[:nome]} - #{contato[:telefone]}"
    puts "-------------------------------------"
  end
end

def add_contact
   print "Nome: "
   nome = gets.chomp
   print "Telefone: "
   telefone = gets.chomp

   @agenda << {nome: nome, telefone: telefone}
  end
 
loop do 

puts "1. Contatos\n2. Adicionar Contato\n3. Ver Contato\n4. Editar Contato\n5. Remover Contato\n0. Sair"  
    option = gets.chomp.to_i

    case 
    when option == 0 
      puts "Até mais"
      break
    when option == 1 
      all_contacts
    when option == 2 
      add_contact
    end
end