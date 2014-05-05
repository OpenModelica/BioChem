within BioChem.Interfaces;
package Compartments "Properties for compartments"
  extends Icons.Library;
  annotation(Documentation(info="<html>
<h1>Compartments</h1>

 <p>
 The partial models in this package collect some basic properties of compartments, such as volume and temperature. These partial models are extended by models in
<a href=\"Modelica://BioChem.Compartments\">BioChem.Compartments</a> , and the compartment properties can be accessed by all substances in the compartment.
 </p>
<br>
<img src=\"modelica://BioChem/Resources/Images/InterfaceCompartments.png\" >
<br>

 </html>", revisions=""), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, initialScale=0.1, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, initialScale=0.1, grid={10,10})));
  partial model Compartment "Default properties for a compartment"
    annotation(Documentation(info="<html>
 <p>
 A partial model describing the basics of a default compartment.
 </p>
 </html>"), defaultComponentName="compartment", Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, initialScale=0.1, grid={10,10}), graphics={Text(visible=true, fillColor={0,85,0}, fillPattern=FillPattern.Solid, extent={{-100,-170},{100,-120}}, textString="%name", fontName="Arial"),Rectangle(visible=true, lineColor={0,0,127}, fillColor={0,170,255}, fillPattern=FillPattern.Solid, lineThickness=10, extent={{-110,-110},{110,110}}, radius=20)}), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, initialScale=0.1, grid={10,10})));
    inner BioChem.Units.Volume V(start=1,stateSelect=StateSelect.prefer) "Compartment volume";
  end Compartment;

  partial model MainCompartment "Default properties for a compartment."
    annotation(Documentation(info="<html>
 <p>
 Main compartment model.
 </p>
 </html>"), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, initialScale=0.1, grid={10,10}), graphics={Text(visible=true, fillColor={0,85,0}, fillPattern=FillPattern.Solid, extent={{-100,-170},{100,-120}}, textString="%name", fontName="Arial"),Text(visible=true, fillPattern=FillPattern.Solid, extent={{-82.12,-80},{80,80}}, textString="main", fontName="Arial", textStyle={TextStyle.Bold})}), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, initialScale=0.1, grid={10,10})));
    extends BioChem.Interfaces.Compartments.Compartment;
  end MainCompartment;

end Compartments;
