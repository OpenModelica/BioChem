within BioChem;
package Constants "Mathematical constants and constants of nature"
  extends Icons.Library;
  constant Real e=Modelica.Math.exp(1.0);
  constant Real pi=2*Modelica.Math.asin(1.0);
  constant Real inf=1e+60 "Biggest Real number such that inf and -inf are representable on the machine";
  constant Real INF=inf;
  annotation(Documentation(info="<html>
<h1>Constants</h1>
<p>
This package provides often needed mathematical constants that are needed for the SBML import and export.
</p>
</html>
", revisions=""), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, initialScale=0.1, grid={10,10}), graphics={Polygon(visible=true, origin={4.3,-7.9383}, fillPattern=FillPattern.Solid, points={{-80,-6.37238},{-80,-6.37238},{-76.12,-6.37238},{-76.12,-6.37238},{-60.75,16.3776},{-9.64,16.3776},{43.88,16.3776},{43.88,16.3776},{43.88,32.7976},{43.88,32.7976},{-11.12,32.7976},{-66.12,32.7976}}, smooth=Smooth.Bezier),Polygon(visible=true, origin={4.3,-7.9383}, fillPattern=FillPattern.Solid, points={{16.84,26.921},{16.84,-51.4935},{33.13,-53.079},{41.24,-38.779},{41.24,-38.779},{45.7,-38.779},{45.7,-38.779},{33.13,-75.549},{6.87,-75.549},{0,-43.079},{5.15652,26.921},{5.15652,26.921},{16.84,26.921}}, smooth=Smooth.Bezier),Polygon(visible=true, origin={4.3,-7.9383}, fillPattern=FillPattern.Solid, points={{-38.493,26.921},{-44.2289,-29.5022},{-70,-66.2689},{-52.4757,-76.921},{-33.5769,-66.2689},{-28.493,26.921},{-28.493,26.921},{-38.493,26.921}}, smooth=Smooth.Bezier)}), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, initialScale=0.1, grid={10,10})));
end Constants;
