import controlP5.*;
ControlP5 cp5;
PFont f;
color buttonColor, baseColor;
color HighlightButton;
color currentColor;
boolean OverButton;
int button;
String floor;
int value=0;

void setup() {
  f = createFont("Arial",24,true);
  size(500, 400);
  background(255);
  buttonColor = color(255);
  cp5 = new ControlP5(this);
  textSize(24);
  Button b3 = cp5.addButton("3").setFont(f).setSize(50, 50).setPosition(250, 25).setColorCaptionLabel(color(255)).setColorBackground(color(0)).setColorForeground(color(255,232,0)).setValue(3).activateBy(cp5.RELEASE);//,setColorActive
  
  b3.onRelease(new CallbackListener(){
    public void controlEvent(CallbackEvent theEvent){
      textSize(24);
      text("floor 3",350,75);
      cp5.getController("3").setColorForeground(color(255,232,0));

    }  
});
  Button b2= cp5.addButton("2").setFont(f).setSize(50, 50).setPosition(250, 125).setColorCaptionLabel(color(255)).setColorBackground(color(0)).setColorForeground(color(255,232,0)).setValue(2);
  
  b2.onRelease(new CallbackListener(){
    public void controlEvent(CallbackEvent theEvent){
      textSize(24);
      text("floor 2",350,75);
      cp5.getController("2").setColorForeground(color(255,232,0));
      //text.hide();
    }  
});
  Button G = cp5.addButton("G").setFont(f).setSize(50, 50).setPosition(250, 225).setColorCaptionLabel(color(255)).setColorBackground(color(20)).setColorForeground(color(255,232,0)).setValue(1);

  G.onRelease(new CallbackListener(){
    public void controlEvent(CallbackEvent theEvent){
      textSize(24);
      text("floor G",350,75);
      cp5.getController("G").setColorForeground(color(255,232,0));
      
    }  
});
  Button B = cp5.addButton("B").setFont(f).setSize(50, 50).setPosition(250, 325).setColorCaptionLabel(color(255)).setColorBackground(color(0)).setColorForeground(color(255,232,0)).setValue(0);
  
  B.onRelease(new CallbackListener(){
    public void controlEvent(CallbackEvent theEvent){
      textSize(24);
      text("floor B",350,75);
      cp5.getController("B").setColorForeground(color(255,232,0));
    }  
});
  Button C = cp5.addButton("close").setFont(f).setSize(85, 50).setPosition(350, 125).setColorCaptionLabel(color(255)).setColorBackground(color(0)).setColorForeground(color(255,232,0)).setValue(4);

  C.onRelease(new CallbackListener(){
    public void controlEvent(CallbackEvent theEvent){
      textSize(24);
      text("Door Closing",350,75);
      cp5.getController("close").setColorForeground(color(255,232,0));
    }  
  });
  Button O = cp5.addButton("open").setFont(f).setSize(85, 50).setPosition(350, 225).setColorCaptionLabel(color(255)).setColorBackground(color(0)).setColorForeground(color(255,232,0)).setValue(5);
  O.onRelease(new CallbackListener(){
    public void controlEvent(CallbackEvent theEvent){
      textSize(24);
      text("Door Opening",350,75);
      cp5.getController("open").setColorForeground(color(255,232,0));
    }  
  });
  Button A = cp5.addButton("alarm").setFont(f).setSize(85, 50).setPosition(350, 325).setColorCaptionLabel(color(255)).setColorBackground(color(0)).setColorForeground(color(255,232,0)).setValue(6);
  A.onRelease(new CallbackListener(){
    public void controlEvent(CallbackEvent theEvent){
      textSize(24);
      text("Ring Ring",350,75);
      cp5.getController("alarm").setColorForeground(color(255,232,0));
    }  
  });
  
  
}

  
void draw() {
  fill(0);
  rect(20,20,150,350);
  stroke(0);
  line(350,75,430,75);
  stroke(255);

  line(100,20,100,370);
  //text(floor,24,350,25);
  
}

void mousePressed() {
  if (value == 3) {
    background(255);
  } else if(value ==2){
    background(255);;
  }
  else if(value ==1){
    background(255);;
  }
  else if(value ==0){
    background(255);;
  }
  else if(value ==4){
    background(255);;
  }
  else if(value ==5){
    background(255);;
  }
  else if(value ==6){
    background(255);;
  }
}

  
  
  





  
