#In ruby, access control apply only to methods, class variable and instance variable are always encapsulated
#and private. There is no way to access them (except by defining accessor method)

class ClassAccess  
  def m1          # this method is public  
  end  
  protected  
    def m2        # this method is protected  
    end  
  private  
    def m3        # this method is private  
    end  
end  
ca = ClassAccess.new  
ca.m1  
#ca.m2  
#ca.m3  

class Song
	def initialize(name, artist)
		@name = name
		@artist = artist
	end
	attr_reader :name, :artist
end

song = Song.new('ba con vit', 'nts')
puts song.name