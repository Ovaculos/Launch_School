module ManipulateTime
  def time_stop; end
end

module IllusionMagic
  def mirage; end
end

class SorceryStudent
  def initialize(unique_spell, energy_range=(100..200))
    @energy_range = energy_range.to_a
    @unique_spell = unique_spell
    @energy = calc_magical_energy
  end

  def to_s
    puts "======================"
    puts "School of Sorcery: #{self.class}"
    puts "Magical Energy: #{energy}"
    puts "Unique Spell: #{unique_spell}"
    puts "Artifact: #{artifact}"
    puts "Robe Color: #{robe_color}"
    puts "======================"
  end

  private

  attr_reader :energy, :unique_spell, :artifact, :robe_color

  def calc_magical_energy
    @energy_range.sample
  end
end

class Illusionist < SorceryStudent
  include IllusionMagic

  def initialize(spell)
    @artifact = 'crystal ball'
    @robe_color = 'purple'
    super(spell)
  end
end

class Enchanter < SorceryStudent
  include IllusionMagic

  def initialize(spell)
    @artifact = 'crystal ball'
    @robe_color = 'gold'
    super(spell, (150..250))
  end
end

class Necromancer < SorceryStudent
  include ManipulateTime

  def initialize(spell)
    @artifact = 'wooden staff'
    @robe_color = 'black'
    super(spell, (75..150))
  end


  def create_zombie; end
end

class Conjurer < SorceryStudent
  include ManipulateTime
  include IllusionMagic

  def initialize(spell)
    @artifact = 'silver wand'
    @robe_color = 'green'
    super(spell)
  end
end

class SorcerySchool
  attr_reader :sorcerers

  def initialize
    @possible_spells = ['fireball', 'earthquake', 'wall of water', 'lightning bolt'].shuffle
    @sorcerers = []
  end

  def enroll_student(name, school)
    if @possible_spells.empty?
      @sorcerers << name = school.new('TBD')
    else
      @sorcerers << name = school.new(@possible_spells.pop)
    end
  end
end

hogwarts = SorcerySchool.new

hogwarts.enroll_student('Harry', Conjurer)
hogwarts.enroll_student('Heromine', Enchanter)
hogwarts.enroll_student('Ron', Necromancer)
hogwarts.enroll_student('Snape', Illusionist)
hogwarts.enroll_student('Mason', Illusionist)

puts hogwarts.sorcerers