// import thư viện 
import 'dart:async';

void main() {

  List<String> names = ['hi','hello','nah','hello there'];
  // dùng hàm để tìm ra chuỗi chứa hello
  ArrowSyntax(names, 'hello');
  print('');
  
  // Tạo object Flutter
  Flutter objectExample = new Flutter('hi',12);
  print(objectExample.getName());
  print('');
  
  //Dùng enum
  var color = Color.values; // tất cả giá trị trong enum color 
  print(color);
  var colorX = Color.values[0]; // giá trị đầu tiên của enum
  // toán tử điều kiện rút gọn
  colorX == Color.green ? print('là màu xanh') : print('k phải màu xanh');
  print('');

  // xử lý bất đồng bộ
  task(2,'bat dau','doing','xong');

}

// sử dụng syntax arrow để rút gọn code và cũng như dart có hỗ trợ where để tìm kiếm trong list thay vì phải dùng vòng lặp for
  void ArrowSyntax(List<String> names, String word){
      names.where((name) => name.contains(word)).forEach(print);
  }


// Biến var dùng cho kiểu dữ liệu chưa xác định ban đầu
var name = 'hi'; // var tự động hiểu biến name là String và không thể thay đổi sau khi xác định
var year = 1977; // var tự động hiểu biến name là int và không thể thay đổi sau khi xác định


// Function vòng lặp tính dãy số Fibonacci trong flutter sử dụng đệ quy
int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

// Tạo 1 class trong dart

class Flutter{
  String? _name; // sử dụng _ tương đương private trong java cho tính chất đóng gói , ?: có thể null
  int _number;
  
  // tạo constructor
  Flutter(this._name, this._number){}
  
  // Named Constructor 
  
  Flutter.noName(int number) : this(null, number);
  
  // Method get set đơn giản
  
  String? getName(){
    return this._name;
  }
  
  int getNumber(){
    return this._number;
  }
}
 
// dùng enum tập hợp các giá trị hằng số
  enum Color {
    red,
    green,
    blue,
  }

// Xử lý bất đồng bộ có thể dùng future hoặc stream
Future<void> task(int time, String a, String b, String c) async{
  print(a);
  await Future.delayed(Duration(seconds: time), () {
  print(b);
  }); 
  print(c);
}



