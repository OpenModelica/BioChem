within BioChem.Reactions;
package MassAction "Mass-action kinetics reactions"
  extends Icons.Library;
  annotation(Documentation(info="<html>
<h1>MassAction</h1>
 <p>
The mass-action reactions are obtained by extending the reaction types in



<a href=\"Modelica://BioChem.Interfaces.Reactions\">Reactions</a>


and then adding an equation for the relation between the reaction rate and the participating substances, i.e., substrates, products, and interacting enzymes. The massaction kinetics package is divided into the subpackages Irreversible and Reversible to facilitate finding the desired reaction. The MassAction library contains 180 reactions.
 </p>

<br>
<img src=\"modelica://BioChem/Resources/Images/MassAction.png\" >
<br>
 </html>", revisions=""), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
end MassAction;
