/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void brush_slider_change1(GSlider source, GEvent event) { //_CODE_:brush_slider:803267:
  println("brush_slider - GCustomSlider >> GEvent." + event + " @ " + millis());
  wiggleVal=source.getValueF();
} //_CODE_:brush_slider:803267:

public void resButton_click1(GButton source, GEvent event) { //_CODE_:resButton:858232:
  println("resButton - GButton >> GEvent." + event + " @ " + millis());
  resetVal=true;
} //_CODE_:resButton:858232:

public void proxSlider_change1(GSlider source, GEvent event) { //_CODE_:proxSlider:610465:
  println("proxSlider - GSlider >> GEvent." + event + " @ " + millis());
  proxVal=source.getValueF();
} //_CODE_:proxSlider:610465:

public void option1_clicked1(GOption source, GEvent event) { //_CODE_:option1:811950:
  println("option1 - GOption >> GEvent." + event + " @ " + millis());
  enlargeMode=true;
} //_CODE_:option1:811950:

public void option2_clicked1(GOption source, GEvent event) { //_CODE_:option2:559887:
  println("option2 - GOption >> GEvent." + event + " @ " + millis());
  enlargeMode=false;
} //_CODE_:option2:559887:

public void checkbox1_clicked1(GCheckbox source, GEvent event) { //_CODE_:checkbox1:841448:
  println("checkbox1 - GCheckbox >> GEvent." + event + " @ " + millis());
  if (source.isSelected()) {
    showImage = true;
  } else {
    showImage = false;
  }
  
} //_CODE_:checkbox1:841448:

public void slider1_change1(GSlider source, GEvent event) { //_CODE_:slider1:689698:
  println("slider1 - GSlider >> GEvent." + event + " @ " + millis());
  hexColor=source.getValueI();
} //_CODE_:slider1:689698:

public void button1_click1(GButton source, GEvent event) { //_CODE_:button1:757230:
  println("button1 - GButton >> GEvent." + event + " @ " + millis());
  savePNG=true;
} //_CODE_:button1:757230:

public void button2_click1(GButton source, GEvent event) { //_CODE_:button2:258636:
  println("button2 - GButton >> GEvent." + event + " @ " + millis());
  savePDF=true;
} //_CODE_:button2:258636:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  G4P.setDisplayFont("Arial", G4P.BOLD, 16);
  surface.setTitle("Sketch Window");
  brush_slider = new GSlider(this, 460, 944, 200, 40, 15.0);
  brush_slider.setShowValue(true);
  brush_slider.setLimits(0.0, 0.0, 40.0);
  brush_slider.setNumberFormat(G4P.DECIMAL, 2);
  brush_slider.setOpaque(false);
  brush_slider.addEventHandler(this, "brush_slider_change1");
  resButton = new GButton(this, 16, 960, 160, 30);
  resButton.setText("Reset");
  resButton.setLocalColorScheme(GCScheme.RED_SCHEME);
  resButton.addEventHandler(this, "resButton_click1");
  proxSlider = new GSlider(this, 676, 944, 200, 40, 15.0);
  proxSlider.setShowValue(true);
  proxSlider.setLimits(50.0, 50.0, 200.0);
  proxSlider.setNumberFormat(G4P.DECIMAL, 2);
  proxSlider.setOpaque(false);
  proxSlider.addEventHandler(this, "proxSlider_change1");
  togGroup1 = new GToggleGroup();
  option1 = new GOption(this, 360, 924, 84, 24);
  option1.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  option1.setText("Enlarge");
  option1.setLocalColorScheme(GCScheme.SCHEME_9);
  option1.setOpaque(false);
  option1.addEventHandler(this, "option1_clicked1");
  option2 = new GOption(this, 360, 960, 84, 24);
  option2.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  option2.setText("Reduce");
  option2.setLocalColorScheme(GCScheme.SCHEME_9);
  option2.setOpaque(false);
  option2.addEventHandler(this, "option2_clicked1");
  togGroup1.addControl(option1);
  option1.setSelected(true);
  togGroup1.addControl(option2);
  label1 = new GLabel(this, 192, 912, 112, 20);
  label1.setText("Background");
  label1.setLocalColorScheme(GCScheme.SCHEME_8);
  label1.setOpaque(false);
  checkbox1 = new GCheckbox(this, 192, 968, 152, 20);
  checkbox1.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  checkbox1.setText("Show Image");
  checkbox1.setLocalColorScheme(GCScheme.SCHEME_9);
  checkbox1.setOpaque(false);
  checkbox1.addEventHandler(this, "checkbox1_clicked1");
  slider1 = new GSlider(this, 192, 936, 156, 28, 10.0);
  slider1.setLimits(0, 0, 255);
  slider1.setNumberFormat(G4P.INTEGER, 0);
  slider1.setOpaque(false);
  slider1.addEventHandler(this, "slider1_change1");
  label2 = new GLabel(this, 460, 924, 136, 20);
  label2.setText("Scatter Strength");
  label2.setLocalColorScheme(GCScheme.SCHEME_8);
  label2.setOpaque(false);
  label3 = new GLabel(this, 676, 924, 124, 20);
  label3.setText("Scatter Spread");
  label3.setLocalColorScheme(GCScheme.SCHEME_8);
  label3.setOpaque(false);
  button1 = new GButton(this, 16, 916, 76, 30);
  button1.setText("PNG");
  button1.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  button1.addEventHandler(this, "button1_click1");
  button2 = new GButton(this, 100, 916, 76, 30);
  button2.setText("PDF");
  button2.addEventHandler(this, "button2_click1");
}

// Variable declarations 
// autogenerated do not edit
GSlider brush_slider; 
GButton resButton; 
GSlider proxSlider; 
GToggleGroup togGroup1; 
GOption option1; 
GOption option2; 
GLabel label1; 
GCheckbox checkbox1; 
GSlider slider1; 
GLabel label2; 
GLabel label3; 
GButton button1; 
GButton button2; 
