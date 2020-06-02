within BioChem.Compartments;

model Compartment "Default compartment (constant volume)"
  annotation(Documentation(info="<html>
<h1>Compartment</h1>
<p>
Default compartment model.
</p>
</html>", revisions=""), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10}), graphics={Text(fillColor={0,85,0}, fillPattern=FillPattern.Solid, extent={{-100,-170},{100,-120}}, textString="%name", fontName="Arial"),Rectangle(lineColor={0,85,0}, fillColor={199,199,149}, fillPattern=FillPattern.Solid, lineThickness=10, extent={{-110,-110},{110,110}}, radius=20)}), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  extends BioChem.Interfaces.Compartments.Compartment(V(stateSelect=StateSelect.prefer));
equation
  der(V)=0 "Compartment volume is constant";
end Compartment;
