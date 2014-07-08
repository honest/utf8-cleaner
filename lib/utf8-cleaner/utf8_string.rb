module UTF8Cleaner
  class UTF8String
    attr_accessor :data

    def initialize(data)
      @data = data.force_encoding('UTF-8')
    end

    def cleaned
      data.chars.select(&:valid_encoding?).join
    end
  end
end
