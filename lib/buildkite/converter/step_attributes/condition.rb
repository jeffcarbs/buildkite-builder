module Buildkite
  module Converter
    module StepAttributes
      class Condition < Abstract
        def parse
          condition = value
          output = []

          output << "condition <<~CONDITION"
          output << "  #{condition}"
          output << "CONDITION"

          output.join("\n")
        end
      end
    end
  end
end

