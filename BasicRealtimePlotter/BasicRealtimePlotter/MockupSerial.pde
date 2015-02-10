// If you want to debug the plotter without using a real serial port

int mockupValue = 0;
int mockupDirection = 10;
String mockupSerialFunction() {
  mockupValue = (mockupValue + mockupDirection);
  if (mockupValue > 100)
    mockupDirection = -10;
  else if (mockupValue < -100)
    mockupDirection = 10;
  String r = "";
  for (int i = 0; i<7; i++) {
    switch (i) {
    case 0:
      //r += mockupValue+" ";
      r +=  s4 + " ";
      break;
    case 1:
      //r += 100*cos(mockupValue*(2*3.14)/1000)+" ";
        r +=  s3 + " ";
      break;
    case 2:
     // r += mockupValue/4+" ";
       r +=  s1 + " ";
      break;
    case 3:
      //r += mockupValue/8+" ";
        r +=  s2 + " ";
      break;
    case 4:
      //r += mockupValue/16+" ";
       r +=  s5 + " ";
      break;
    case 5:
      r += s6+" ";
      break;
     case 6:
       r +=s7 + " " ; 
    }
    if (i < 8)
      r += '\r';
  }
  delay(10);
  return r;
}
