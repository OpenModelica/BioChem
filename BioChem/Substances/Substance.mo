within BioChem.Substances;

model Substance "Substance with variable concentration"
  extends BioChem.Interfaces.Substances.Substance;
equation
  der(n)=rNet;
  annotation(Documentation(info="<html>
<p>
A substance with variable concentration.
</p>
</html>"), Icon(coordinateSystem(extent={{-100,-100},{100,100}}, preserveAspectRatio=true, grid={10,10}), graphics={Text(origin={7.10543e-15,50}, fillPattern=FillPattern.Solid, extent={{-100,-150},{100,-100}}, textString="%name", fontName="Arial"),Ellipse(lineColor={0,85,0}, fillColor={0,170,0}, fillPattern=FillPattern.Sphere, extent={{-50,-50},{50,50}})}), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
end Substance;
