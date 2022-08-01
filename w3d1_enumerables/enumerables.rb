class Array

     def my_each(&prc)
         (0..self.length).map! { |i| prc.call(self[i])}
     end

   
    def my_each(&prc)
        

    end





end