$global_variable = 10
class Customer
	#static variable
	@@no_of_customers=0
	VAR1 = 100
	CONST2 = 200
	
	#is like constructor
	def initialize(id,name,addr)
		@cust_id = id
		@cust_name = name
		@cust_addr = addr	
		@@no_of_customers += 1
	end

	def hello
		puts "hello ruby !"
	end
	def print_global
		puts "Global variable is #$global_variable"
	end
	
	def printDetail
		puts "Customer id #@cust_id"
		puts "Customer name #@cust_name"
		puts "Customer address #@cust_addr"	
	end

	def print_num_of_customer
		puts "no of customers #@@no_of_customers"
	end

	def printConstants
		puts "Value of constants #{CONST2}"
	end

	def tryPrintArray
		ary = ["fred", 10.314, "This is string","last element"]
		#each do |i|, that weird at the first time
		ary.each do |i|
			puts "elem : #{i}";
		end
	end

	def tryHash
		colors = {"red" => "chilli","green"=>"leaves","blue"=> "sky"}
		colors.each do |key,value|
			puts "hash and value : #{key} is #{value}";
		end
	end

	def tryRange
		(10..15).each do |i|
			puts i;
		end
	end
end

class Class2
	def initialize()
		@a , @b = 10 , 20;
	end

	def getA()
		puts @a;
	end

	def tryIfAndElse
		print "name ? : "
		@name = gets
		if(@name.length  < 3 || @name.length > 10)
			puts "please fill name length not longer than 10 & greater than 2"
			tryIfAndElse
		else
			print "welcome, #{@name}, lengh ; #{@name.length}\n"
		end

		#try switch and case
		@value1 = 6
		case @value1
			when 0 .. 2
				puts "baby"
			when 3 .. 6
				puts "little child"
			when 7 .. 12
				puts "child"
			when 13 .. 18
				puts "youth"
			else
				puts "adult"
		end
	end

	def tryLoop
		$i = 0;
		$num = 5;

		print("#################\n")
		while $i < $num do
			puts("Inside the loop i = #$i");
			$i += 1;
		end
		print("#################\n")
		$i =0;
		$num = 20;
		begin
			puts("Inside the loop i = #$i")
			$i += 1;
		end while $i < $num

		print("#################\n")
		$notDrop = true;
		$j = 0;
		until $notDrop && $j < 10 do
			(1..10).each do |i|
				print i;
			end
			$notDrop;
			$j +=1;
		end
	end

	def forFunction
		for i in 1..5
			case i
				when 1
					next
			end
			if i == 3 then
				break
			end
			puts "value of local varibale is #{i}"
		end
	end

	def some2Function(var1 = "var 1", var2 = "var 2")
		puts "Programming language is the matter of selera & pilihan";
		puts "My choiseis : #{var1} , #{var2}";
	end
	def saneFunction(*test)
		puts("number of parameters is #{test.length}");
		for i in 0...test.length
			puts "The parameter are #{test[i]}";
		end

		case test.length
			when 0
				return 100;
			when 1
				return test[0] + test[1];
		end
	end
end

#class for testing
class Accounts
	def reading_charge
		print "accounts";
	end
	#this static class can't accessed by object, only class
	def Accounts.return_date
		print "RETURNDATE ?\n";
	end

	def testGan
		puts "You are in the method"
		yield
		puts "You are again back to the method"
		yield
	end
end


accounts1 = Accounts.new();
Accounts.return_date();
accounts1.testGan {puts "testing gan "};
# accounts1.return_date();

class2 = Class2.new
class2.getA;
# class2.tryIfAndElse
# class2.tryLoop
class2.forFunction
class2.some2Function("java","javascript")
print "value gan : #{class2.saneFunction()}\n"
#puts Customer::CONST; 	# public static final == const

cust1 = Customer.new("1","john","Grogol")
cust1.hello
cust1.tryPrintArray
cust1.tryHash
cust1.tryRange

puts "###############\n"
cust2 = Customer.new("2","sarah","Slipi")
cust2.hello
cust2.print_global
cust2.printDetail
cust2.print_num_of_customer
cust2.printConstants