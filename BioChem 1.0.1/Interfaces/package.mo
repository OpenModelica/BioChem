within BioChem;
package Interfaces "Connection points and icons used in the BioChem package"
  extends Icons.Library;
  annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, initialScale=0.1, grid={10,10})), Documentation(info="<html>
<h1>Interfaces</h1>
This package contains partial models that can be used as building blocks for components such as different types of substances, compartments, and reactions.
The models are designed to make it easy to create new customized components as well as to make these components possible to translate to and from SBML.<br>
The package contains the following packages: <br>
<ul>
<li>Compartments - Properties used when creating different compartments.</li>
<li>Nodes - Connection points used as interfaces between different components.</li>
<li>Reactions - Building blocks for reactions.</li>
<li>Substances - Basic substance types.</li>
</ul>

 </html>
 ", revisions=""), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, initialScale=0.1, grid={10,10})));
end Interfaces;
