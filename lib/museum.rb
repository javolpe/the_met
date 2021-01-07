class Museum
  attr_reader :name,
              :exhibits,
              :patrons

  def initialize(name)
     @name = name
     @exhibits = []
     @patrons = []
  end

  def add_exhibit(exhibit)
    exhibits << exhibit
  end

  def recommend_exhibits(patron)
    recommended = []
    patron.interests.map do |interest|
      @exhibits.map do |m_exhibit|
        if m_exhibit.name == interest
          recommended << m_exhibit
        end
      end
    end
    recommended
  end

  def admit(patron)
    patrons << patron
  end

  def all_patrons_intetested_in_exhibit(exhibit)
    result = []
    @patrons.map do |patron|
      patron.interests.map do |interest|
        result << patron if interest == exhibit.name
      end
    end
    result
  end

  def patrons_by_exhibit_interest
    Hash[@exhibits.map{|exhibit| [exhibit, all_patrons_intetested_in_exhibit(exhibit)]}]
  end

  def ticket_lottery_contestants(exhibit)
    result = []
    patrons = all_patrons_intetested_in_exhibit(exhibit)
    patrons.map do |patron|
      if patron.spending_money < exhibit.cost
        result << patron
      end
    end
    result
  end

  def draw_Lottery_winner(exhibit)
    contestants = ticket_lottery_contestants(exhibit)
    contestants = contestants.shuffle
    contestants[0]
  end


end