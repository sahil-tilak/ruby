1) Try multiple yields

    def one_yield
    yield
    end

    def multiple_yields
     yield
     yield
     end

    one_yield { puts "one yield" }

    multiple_yields { puts "multiple yields" }
Output- 
    one yield
    multiple yields
    multiple yields


2) What happens if block is not passed to a function?

    When yield is called in a method, and no block is passed, it gives the error-
    2.6.3 :005 > def noblock
    2.6.3 :006?>   yield
    2.6.3 :007?>   end
    => :noblock 
    2.6.3 :008 > noblock

Output-
   LocalJumpError (no block given (yield))


3) How to check whether block is sent explicitly?

    To check whether block is sent explicitely, we use the kernel  “block_given”

    def optional_block
    yield if block_given?
    end

    (no block) optional_block # => nil
    (with block) optional_block { puts 'optional block' } # => optional block

4)  How to pass a block implicitly?
      Implicit block passing works by calling the yield keyword in a method.


5)  What are the different ways to call lambda?
 
     Let lambda name be “sample”
     Different ways to call lambda function-
    • sample.call()
    • sample[]
    • sample ===

6)  Find differences between lambda and proc.
    • A lamda checks the number of arguments passed to it, while a proc does not.
    • ‘return’ inside of lambda triggers the code right outside of the lamda code. On the other hand, ‘return’ inside of a proc triggers the code outside of the method where the proc is being executed.

7) Why to use proc and lambda?
    
    Procs and lambdas let us call methods on them and assign variables. In contrast, a block is just part of the syntax of a method call. It doesn’t mean anything on a standalone basis and can only appear in argument lists.
     
     

