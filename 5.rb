
# SA 8 - ACT 2 - Q5 - Module as Namespace

# module Payments as Namespace
module Payments
    class Invoice
      def initialize(number)
        @number = number
      end
  
      def show
        puts "Invoice number is: #{@number}"
      end
    end
  
    class Receipt
      def initialize(number)
        @number = number
      end
  
      def show
        puts "Receipt number is: #{@number}"
      end
    end
  end
  
  # creating instances
  invoice = Payments::Invoice.new("INVOICE-31424")
  receipt = Payments::Receipt.new("RECEIPT-31524")
  
  invoice.show
  receipt.show