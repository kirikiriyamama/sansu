module Sansu
  module Operator
    def sum
      Sansu.validate(self)

      inject(:+).to_f
    end

    def mean
      Sansu.validate(self)

      sum / count
    end

    def median
      Sansu.validate(self)

      count.even? ? sort[count/2-1, 2].sum / 2 : sort[count/2].to_f
    end

    def mode
      Sansu.validate(self)

      grouped   = map(&:to_f).group_by(&:itself)
      max_count = grouped.values.map(&:count).max

      grouped.select{ |k, v| v.count == max_count }.keys
    end
  end
end
