class Timer
  #write your code here
    attr_accessor :seconds
  
    def initialize
      @seconds = 0
    end
    def time_string
      arr=[]
      t=@seconds.div(3600)
      if t<10
         t = '0' + t.to_s
      end
      arr.push(t)
      t=(@seconds-@seconds.div(3600)*3600).div(60)
      if t<10
         t = '0' + t.to_s
      end
         arr.push(t)
         t=@seconds-@seconds.div(3600)*3600-((@seconds-@seconds.div(3600)*3600).div(60))*60
      if t<10
         t = '0' + t.to_s
      end
  arr.push(t)
  arr.join(':')
  end
  
end
