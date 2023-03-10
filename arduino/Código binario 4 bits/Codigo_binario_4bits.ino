boolean bin1 = LOW;
boolean bin2 = LOW;
boolean bin3 = LOW; 
boolean bin4 = LOW;
boolean binAnt = LOW;
boolean encontrado = false;
int bit1 = 2, bit2 = 3, bit3 = 4, bit4 = 5;
boolean x = LOW;
int reset = 0;



void setup() {
  pinMode(bit1, OUTPUT);
  pinMode(bit2, OUTPUT);
  pinMode(bit3, OUTPUT);
  pinMode(bit4, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  digitalWrite(bit1, LOW);
  digitalWrite(bit2, LOW);
  digitalWrite(bit3, LOW);
  digitalWrite(bit4, LOW);
  delay(1500);

  for (reset; reset < 15; reset++) {
    if (binAnt == LOW) {
      bin1 = HIGH;     //  0000
      binAnt = HIGH;     //0001
      x = HIGH;        
      encontrado = true;
    }
    else {
      bin1 = LOW;
      x = LOW;
      binAnt = LOW;
    }
    if (encontrado != true) {
      if (x == HIGH) {
      //  bin2 = bin2;
        x = bin2;
      }
      else {
        if (bin2 == LOW) {
          encontrado = true;
          bin2=HIGH;
        }
        else{
        bin2=LOW;
        x = LOW;
        }
       
      }
    }

    if (encontrado != true) {
      if (x == HIGH) {
    //    bin3 = bin3;
        x = bin3;
      }
      else {
        if (bin3 == LOW) {
          encontrado = true;
          bin3=HIGH;
        }
        else{
        bin3=LOW;
        x = LOW;
        }
      }
    }


    if (encontrado != true) {
      if (x == HIGH) {
       // bin4 = bin4;
        x = bin4;
      }
      else {
        if (bin4 == LOW) {
          encontrado = true;
          bin4=HIGH;
        }
        else{
        bin4=LOW;
        x = LOW;
        }
      }
    }
    encontrado = false;
    digitalWrite(bit4, bin1);
    digitalWrite(bit3, bin2);
    digitalWrite(bit2, bin3);
    digitalWrite(bit1, bin4);
    
    if (bin4==true)
    Serial.print("1");
    else
    Serial.print("0");
    
    if (bin3==true)
    Serial.print("1");
    else
    Serial.print("0");
    
    if (bin2==true)
    Serial.print("1");
    else
    Serial.print("0");
    
    if (bin4==true)
    Serial.println("1");
    else
    Serial.println("0");
    
    delay(100);
  }
 bin1=LOW;
 bin2=LOW;
 bin3=LOW;
 bin4=LOW;
 reset=0;
 binAnt=LOW;
 
}
