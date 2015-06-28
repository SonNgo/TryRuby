require_relative 'Person'
require_relative 'Book'

def update_book_data
  File.open('book', 'w+') do |f|
    Marshal.dump(@books_list, f)
  end
end

def update_user_data
  File.open('user', 'w+') do |f|
    Marshal.dump(@users_list, f)
  end
end

def load_book
  File.open('book') do |f|
    @books_list = Marshal.load(f)
  end
end

def load_user
  File.open('user') do |f|
    @users_list = Marshal.load(f)
  end
end
  

def create_user(name, email, password)
  user = Person.new(name, email, password)
  @users_list.push(user)
  update_user_data
  return user
end

def check_user(email, password)
  @users_list.each do |user|
    if user.email == email && user.password == password
      return user
    end
  end
  return nil
end

def initialize_book
  if File.exist?('book')
    load_book
  else
    book1 = Book.new("A", 5)
    book2 = Book.new("B", 2)
    book3 = Book.new("C", 3)
    book4 = Book.new("D", 4)
    @books_list = [book1, book2, book3, book4]
    update_book_data
  end
end
initialize_book

def initialize_user
  if File.exist?('user') 
    load_user
  else 
    @users_list = []
    update_user_data
  end
end
initialize_user

def display_book
  puts "Trong thu vien hien co: "
  @books_list.each do |book|
    puts "Ten sach: #{book.name}. So luong: #{book.quantity}"
  end
  puts
end

def display_user(user)
  puts "        Accout profile: "
  puts "Ten: #{user.name}"
  puts "email: #{user.email}"
  puts "password: #{user.password}"
  print "Sach ban dang muon: "
  user.borrowed_books.each do |book|
    print "#{book.name} "
  end
  puts
end

def borrow_book(user)
  display_book
  print "Nhap chinh xac ten dau sach ban muon muon: "
  wanted_book = gets.chomp
  @books_list.map do |book|
    if wanted_book == book.name
      book.quantity -= 1
      update_book_data
      user.add_book(book)
      update_user_data 
    end
  end
  puts "Hoan thanh"
end

def turn_book(user)
  display_user(user)
  print "Nhap chinh xac ten dau sach ban muon tra: "
  turned_book = gets.chomp
  @books_list.map do |book|
    if turned_book == book.name
      book.quantity += 1
      update_book_data
      user.delete_book(book.name)
      update_user_data
    end
  end
  puts "Hoan thanh"
end


system('clear')
puts
puts "Welcome to Library"
puts "Ban da co tai khoan?. Neu chua vui long thiet lap"
puts "1. Yes"
puts "2. No"
print "Lua cho cua ban: "
opition = gets.chomp
if opition == "1" 
  system('clear')
  while true
    puts "Nhap dia chi email va password de dang nhap"
    print "Nhap email: "
    email = gets.chomp
    print "Nhap password: "
    password = gets.chomp
    if check_user(email, password) 
      user = check_user(email, password)
      break
    else 
      puts "Ban da nho sai tai khoan. Chay lai chuong trinh"
    end
  end
  else 
  print "Nhap dia chi email: "
  email = gets.chomp
  print "Nhap password: "
  password = gets.chomp
  print "Nhap ho va ten: "
  name =gets.chomp
  user = create_user(name, email, password)
  #puts create_user(name, email, password)
end


system('clear')
while true
  puts "            Wellcome to Library          "
  puts "1. Thong tin ca nhan"
  puts "2. Thong tin sach co trong thu vien"
  puts "3. Muon sach"
  puts "4. Tra sach"
  puts "5. Thoat"
  print "Hello, #{user.name}. Ban muon thuc hien chuc nang nao?: "
  puts
  option = gets.chomp
  if option == "1"
    display_user(user)
  elsif option == "2"
    display_book
  elsif option == "3"
    borrow_book(user)
  elsif option == "4"
    turn_book(user)
  elsif option == "5"
    break
  end   
end