class SimpleCalculator
  class UnsupportedOperation < StandardError; end

  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    raise UnsupportedOperation unless ALLOWED_OPERATIONS.include?(operation)
    raise ArgumentError if first_operand.instance_of?(String) || second_operand.instance_of?(String)

    "#{first_operand} #{operation} #{second_operand} = #{first_operand.send(operation, second_operand)}"
  rescue ZeroDivisionError
    'Division by zero is not allowed.'
  end
end
