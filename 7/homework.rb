puts "your initial money are 100"
sum = {s:100}

puts "how many times you want to play?"
n = gets.to_i

my_lambda = -> (arg) {
	if arg == 2
	sum[:s] = sum[:s].to_f/2 
	break
    end
	sum[:s] = sum[:s] + arg
}

hh ={
	'666' => [my_lambda,2,"your balance was divided by 2"],
	'111' => [my_lambda,10,"your balance is +10"],
	'777' => [my_lambda,70,"your balance is +70"],
	'888' => [my_lambda,80,"your balance is +80"],
	'999' => [my_lambda,90,"your balance is +90"],
	'123' => [my_lambda,-123,"your balance is -123"],
	'222' => [my_lambda,20,"your balance is +20"],
	'333' => [my_lambda,30,"your balance is +30"],
	'444' => [my_lambda,40,"your balance is +40"],
	'555' => [my_lambda, 50,"your balance is +50"],

}

1.upto(n) do |i|
	r = "#{rand(0..9)}#{rand(0..9)}#{rand(0..9)}"	
	if hh.include? r
		hh[r][0].call(hh[r][1])
		puts "--------------- random number was finded: #{r}, #{hh[r][2]} ------------------" 		
	else
		sum[:s] -= 1
		puts "#{i}.\t random number  #{r}, your balance is: #{sum[:s]}"			
 	end
 	if sum[:s] <= 0 
		puts "your balance is below zero"
		exit 
	end
end

