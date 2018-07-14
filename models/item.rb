class Item
  attr_accessor :item
  ITEMS = []
      def initialize(item)
      @item = item
      ITEMS << self
    end
end
