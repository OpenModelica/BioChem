within BioChem.Reactions;
package MichaelisMenten "Michaelis-Menten kinetics reactions"
  extends BioChem.Icons.Library;

  annotation(Documentation(info="<html>
<h1>MichaelisMenten</h1>
 <p>
This package contains irreversible and reversible Michaelis-Menten reactions. Currently the library is limited to one-substrate and one-product reactions.
Michaelis-Menten kinetics describes the kinetics of many enzymes. It is named after Leonor Michaelis and Maud Menten. This kinetic model is relevant to situations where the concentration of enzyme is much lower than the concentration of substrate (i.e. where enzyme concentration is the limiting factor), and when the enzyme is not allosteric.
 </p>

<br>
<img src=\"modelica://BioChem/Resources/Images/MichaelisMenten.png\" >
<br>
 </html>", revisions=""));
end MichaelisMenten;
