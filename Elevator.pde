import controlP5.*;
ControlP5 cp5;
PFont f;
color buttonColor, baseColor;
color HighlightButton;
color currentColor;
boolean OverButton;
int button;
Toggle b3;
String floor;
boolean Pressed = false;
boolean Clicked = false;


void setup() {
  f = createFont("Arial",16,true);
  size(400, 400);
  background(220);
  buttonColor = color(255);
  cp5 = new ControlP5(this);

  Button b3 = cp5.addButton("3").setSize(50, 50).setPosition(100, 25).setColorCaptionLabel(color(255)).setColorBackground(color(0)).setColorForeground(color(255,232,0));//,setColorActive
  textSize(24);
  b3.onRelease(new CallbackListener(){
    public void controlEvent(CallbackEvent theEvent){
      println("GOing to floor 3");
      cp5.getController("3").setColorForeground(color(255,232,0));
      floor = "3";
    }  
});
  Button b2= cp5.addButton("2").setSize(50, 50).setPosition(100, 125).setColorCaptionLabel(color(255)).setColorBackground(color(0)).setColorForeground(color(255,232,0)).setValue(0);
  b2.onRelease(new CallbackListener(){
    public void controlEvent(CallbackEvent theEvent){
      println("GOing to floor 2");
      cp5.getController("2").setColorForeground(color(255,232,0));
      floor = "2";
    }  
});
  Button G = cp5.addButton("G").setSize(50, 50).setPosition(100, 225).setColorCaptionLabel(color(255)).setColorBackground(color(20)).setColorForeground(color(255,232,0)).setValue(0);
  G.onRelease(new CallbackListener(){
    public void controlEvent(CallbackEvent theEvent){
      println("GOing to Gorund floor");
      cp5.getController("G").setColorForeground(color(255,232,0));
      floor = "Ground";
    }  
});
  Button B = cp5.addButton("B").setSize(50, 50).setPosition(100, 325).setColorCaptionLabel(color(255)).setColorBackground(color(0)).setColorForeground(color(255,232,0)).setValue(0);
  B.onRelease(new CallbackListener(){
    public void controlEvent(CallbackEvent theEvent){
      println("GOing to basement");
      cp5.getController("B").setColorForeground(color(255,232,0));
      floor = "Basement";
    }  
});
  Button C = cp5.addButton("close").setSize(50, 50).setPosition(250, 125).setColorCaptionLabel(color(255)).setColorBackground(color(0)).setColorForeground(color(255,232,0)).setValue(0);
  C.onRelease(new CallbackListener(){
    public void controlEvent(CallbackEvent theEvent){
      println("Door close");
      cp5.getController("close").setColorForeground(color(255,232,0));
    }  
  });
  Button O = cp5.addButton("open").setSize(50, 50).setPosition(250, 225).setColorCaptionLabel(color(255)).setColorBackground(color(0)).setColorForeground(color(255,232,0)).setValue(0);
  O.onRelease(new CallbackListener(){
    public void controlEvent(CallbackEvent theEvent){
      println("Door Open");
      cp5.getController("open").setColorForeground(color(255,232,0));
    }  
  });
  Button A = cp5.addButton("alarm").setSize(50, 50).setPosition(250, 325).setColorCaptionLabel(color(255)).setColorBackground(color(0)).setColorForeground(color(255,232,0)).setValue(0);
  A.onRelease(new CallbackListener(){
    public void controlEvent(CallbackEvent theEvent){
      println("Ring ring ring");
      cp5.getController("alarm").setColorForeground(color(255,232,0));
    }  
  });
  Button f = cp5.addButton("Floor_").setSize(50, 50).setPosition(250, 25).setColorCaptionLabel(color(255)).setColorBackground(color(0)).setColorForeground(color(255,232,0)).setValue(0);

  
}
/*  void update(){
    if (mousePressed == true && mouseButton == LEFT && Pressed == false)
    {
      Pressed = true;
      if(mouseX 
    }
    
  }*/
void draw() {
  
  
}

void Showfloor(String floor){
  textAlign(LEFT);
  textSize(20);
  fill(0);
  String s = "Floor:" + floor;
  text(s,20,50);
  //setPosition(250,25);
  
  
}




  
