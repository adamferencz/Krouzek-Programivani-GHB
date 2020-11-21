{
  int i = 1;
  while (i < 10) {
    println(i);
    i = i + 1;
  }
}
//0123456
for (int i = 0; i < 10; i++) {
  print(i);
}
println();
//9876543210
for (int i = 9; i > 0; i--) {
  print(i);
}

println();
//2 4 8 16 32 64 128
for (int i = 1; i < 200; i=i*2) {
  print(i + " ");
}
