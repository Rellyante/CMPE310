Looks safe
#include <Wire.h>
#include <LiquidCrystal_I2C.h>

// Voltage Measurement Setup

// vcc to vcc pin of arduino board, gnd to gnd, SCL to A5, SDA to A6
int voltageV = A0;

LiquidCrystal_I2C lcd(0x27, 16, 2);

void setup() {
  pinMode(voltageV, INPUT);
  lcd.init();
  lcd.backlight();
}

void loop() {
  int VoltageMsmt = analogRead(voltageV);
  float Vcalc = (5.0/1023) *VoltageMsmt;
  lcd.setCursor(0,0);
  lcd.print("BATTERY ");
  lcd.print(Vcalc);
}