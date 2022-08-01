class Array
     def my_each
         2.times do 
            for el in self 
                puts el
            end
         end
     end


     def my_select(&prc)
        new_arr = []

        self.each { |ele| new_arr << ele if prc.call(ele) }


     end

    #  def my_reject(&prc)
    #     self.reject {|ele| prc.call(ele)}
    #  end

     def my_reject(&prc)
        self.select {|ele| !prc.call(ele)}

     end

     def my_any?(&prc)
        self.each do |ele|
            return true if prc.call(ele)
        end
     end

     def my_all?(&prc)
        self.each do |ele|
            return false if !prc.call(ele)
        end
        true
     end

    #  def my_flatten

    #     if self.length == 0
    #         return [self]
    #     end

        

    #     flatten = []
    #     self.each_with_index do |ele , i|
    #         flatten += self[i].my_flatten
    #     end




    #  end


     def my_flatten
        arr = []

        self.each do |ele|
            unless ele.class == Array
                arr << ele
            else
                arr += ele.my_flatten
            end
        end
        arr
     end

    #  def my_zip(arr, *arrs)
    #     arr.zip(arrs)
    #  end


    # def my_zip(*arrs)
    #     length = arrs.first.length

    #     (0...length).map do |i| 
    #         arrs.map { |arr| arr[i]}
    #     end
    #   end

    def my_zip(*args)
        arr = []
        (0...self.length).each do |i|
            temp = []
            (0...args.length).each do |i2|
                if args[i2] != nil
                    temp << args[i2][i]
                else
                    temp << nil
                end
            end
            temp.unshift(self[i])
            arr << temp
        end


    end




 




end

