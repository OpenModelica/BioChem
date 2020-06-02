within BioChem;

package Icons "Icons"
  extends Library;
  partial package Library
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10}), graphics={Rectangle(fillColor={235,235,235}, fillPattern=FillPattern.Solid, extent={{-100,-100},{80,50}}),Polygon(fillColor={210,210,210}, fillPattern=FillPattern.Solid, points={{-100,50},{-80,70},{100,70},{80,50},{-100,50}}),Polygon(fillColor={210,210,210}, fillPattern=FillPattern.Solid, points={{100,70},{100,-80},{80,-100},{80,50},{100,70}})}), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  end Library;

  model IconBase
    annotation(Diagram(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, grid={10,10})), Icon(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, grid={10,10}), graphics={Text(origin={0.0,-127.1933}, fillPattern=FillPattern.Solid, extent={{-100.0,-27.1933},{100.0,27.1933}}, textString="%name", fontName="Arial")}));
  end IconBase;

  partial package Example "Icon for an example model"
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10}), graphics={Rectangle(fillColor={255,255,255}, fillPattern=FillPattern.Solid, extent={{-100,-100},{80,50}}),Polygon(fillColor={255,255,255}, fillPattern=FillPattern.Solid, points={{-100,50},{-80,70},{100,70},{80,50},{-100,50}}),Polygon(fillColor={255,255,255}, fillPattern=FillPattern.Solid, points={{100,70},{100,-80},{80,-100},{80,50},{100,70}}),Text(fillColor={0,0,255}, fillPattern=FillPattern.Solid, extent={{-85,-85},{65,35}}, textString="Example", fontName="Arial"),Text(fillColor={255,0,0}, extent={{-120,73},{120,132}}, textString="%name", fontName="Arial")}), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  end Example;

  annotation(Documentation(info="<html>
<h1>Icons</h1>
This package contains icons that are used in the library.
</html>", revisions=""));
end Icons;
