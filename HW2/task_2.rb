# 1.создать общий клас
# 2.сделать несколько обьектов с этим классом и присвоить им имя
# 3.в классе создать методы для всех обьектов - жизнь, настроение, показатель голода, сна, + два
# 4.создать закрытый метод с эмуляцией прохождения дня(периода), после чего должны меняться показатели (случайна величина в пределах заданной)
# 5.создать 10 методов, которые позволят взаимодействовать с питомцем: покормить, уложить спать, поиграть - действие меняет 1 или несколько показателей и вызывает приватный метод
# 6.создать метод наблюдения, в этот момент вызываются рандомные методы
# 7.при неправильных действия питомец, умирает, злится и тд.
# 8.создать меню взаимодействия с питомцем
# 9.создать метод хелп

intro = "Welcome to Mass Effect Universe!
Now you're on spaceship N7, try to be a part of team...
You have 4 teammates: Commander, Crogan, Asari, Turian.
Choose, with whom you want to talk first..."

puts intro

class N7_Crew

  attr_accessor :mood, :lanch, :rest, :training

  attr_reader :help, :name, :race, :menu

  def initialize(menu, name, race, mood)  #инициализация переменных класса
    @menu = menu
    @name = name
    @race = race
    @mood = false
    @lanch = 10
    @rest = false
    @training = false
    @help = help
    @one_hour_later = one_hour_later
  end

  def menu(number)
    case number
    when 1 then "You choose Commander, treat him with respect!"
    when 2 then "You choose Crogan, be careful with him. He doesn't understand jokes!"
    when 3 then "You choose Asari, you can flirt with her ;)"
    when 4 then "You choose Turian, he's commander best friend."
    else "Error! Invalid data entered. Pls, try again!"
    end
  end

  def race
    puts "Hi, Who are you #{@name}?"
    @race
    puts "Nice to meet you #{@name})"
  end

  def mood
    puts "How is your mood #{@name}?"
    @mood = true
    puts "Good, I'm glad to be here!"
    one_hour_later
  end

  def training
    puts "#{@name} let's training together, maybe you can teach me something new."
    @training_level = true
      if @training_level
      puts "Come on I'll kick your ass ))"
      one_hour_later
      end
      if @training_level = false
      puts "I'm too tired..."
      one_hour_later
      end
  end

  def lanch
    puts "#{@name} let's go have lunch )))"
      @lanch = 10
      one_hour_later
  end

  def need_to_rest
    puts "It was hard training, #{@name} you need to rest."
    @rest = true
      2.times do
        if @rest
          one_hour_later
        end
      if @rest = false
        puts "I'm back!"
      end
  end

  def help
    puts "This is manual that will help you...

    # start
    # puts commander.menu(1)

    # ask name
    # puts commander.name

    # ask who are you
    # puts commander.race

    # ask mood
    # puts commander.mood

    # offer training
    # puts commander.mood

    # offer to eat
    # puts commander.lanch

    # offer to rest
    # puts commander.rest
    "
  end

  private

  def hungry?
    @lanch <= 3
  end


  def one_hour_later
      if @rest
        @rest = false
        puts "How exhausted I am"
      end
      puts "#{@name} in rage, want to kill you!!!"
      break

      if hungry?
        if lanch <= 5
        puts "Im hungry :("
        end
      end
  end

end

#присвоение кнопки меню, имени, рассы

commander = N7_Crew.new("1", "Shepard", "I'm commander on N7 spaceship. I'am a human as you see.")

crogan = N7_Crew.new("2", "Wrex", "I'm a Crogan Warrior. Stupid human!")

asari = N7_Crew.new("3", "Liara", "I'm Asari and I have a biotic power.")

turian = N7_Crew.new("4", "Vakarian", "I'm a Turian, combat engineer on N7.")

#for help

# puts commander.menu(1)

# #ask name
# puts commander.name

# #ask "who are you"
# puts commander.race

# #ask mood
#puts commander.mood

# #offer training
#puts commander.mood

# #offer to eat
#puts commander.lanch

# #offer to rest
#puts commander.rest


# puts crogan.menu(2)
# #ask name
# puts crogan.name
# #ask "who are you"
# puts crogan.race


# puts asari.menu(3)
# #ask name
# puts asari.name
# #ask "who are you"
# puts asari.race


# puts turian.menu(4)
# #ask name
# puts turian.name
# #ask "who are you"
# puts turian.race


#----------------------------------------

# новые классы и наследование

# class Commander < N7_Crew
#   commander.name = "Shepard"
#   commander.race = "I'm commander on N7 spaceship. I'am a human as you see."
# end


# class Crogan < N7_Crew
#   crogan.name = "Wrex"
#   crogan.race = "I'm a Crogan Warrior. Stupid human!"
# end


# class Asari < N7_Crew
#   asari.name = "Liara"
#   asari.race = "I'm Asari, I have a biotic power."
# end


# class Turian < N7_Crew
#    turian.name = "Vakarian"
#    turian.race = "I'm a Turian, combat engineer on N7."
# end

#обьекты класса

# commander = Commander.new
# crogan = Crogan.new
# asari = Asari.new
# turian = Turian.new




