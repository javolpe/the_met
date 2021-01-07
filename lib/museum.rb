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


end