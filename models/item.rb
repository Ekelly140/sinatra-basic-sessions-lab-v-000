class Item
  attr_accessor :name
  ITEMS = []
      def initialize(name)
      @name = name
      ITEMS << self
    end
end
