within BioChem.Reactions;

package MichaelisMenten "Michaelis-Menten kinetics reactions"
  extends BioChem.Icons.Library;

  model Uui "Uni-uni irreversible simple Michaelis-Menten"
    extends BioChem.Interfaces.Reactions.Uui;
    parameter BioChem.Units.Concentration KmS = 1 "Forward Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF = 1 "Forward maximum velocity";
  equation
    rr = vF * s1.c / (KmS + s1.c);
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART uuiTag -->
    <body>
    Uni-uni irreversible simple Michaelis-Menten.<h4>Reaction rate</h4>
     <p class=\"\">
 <img src=\"modelica://BioChem/DocumentationFiles/eqMMUui.png\" alt=\"\"/>
 </p><p class=\"\">
 where
 </p><table><tr><td>C<sub>s1</sub></td><td width=\"20\"></td><td width=\"20\">:</td><td>Concentration of substrate</td></tr><tr><td>vF</td><td width=\"20\"></td><td width=\"20\">:</td><td>Forward maxium velocity</td></tr><tr><td>KmS</td><td width=\"20\"></td><td width=\"20\">:</td><td>Forward Michaelis-Menten constant</td></tr></table><p class=\"\">
 and
 </p><table><tr><td>nS1</td><td width=\"20\"></td><td width=\"20\">:</td><td>Stoichiometric coefficient for the substrate</td></tr><tr><td>nP1</td><td width=\"20\"></td><td width=\"20\">:</td><td>Stoichiometric coefficient for the product</td></tr></table>
    </body>
    <!--WSMINSERTIONTAGEND uuiTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Uui;

  model Uur "Uni-uni reversible simple Michaelis-Menten"
    extends BioChem.Interfaces.Reactions.Uur;
    parameter BioChem.Units.Concentration KmS = 1 "Forward Michaelis-Menten constant";
    parameter BioChem.Units.Concentration KmP = 1 "Reverse Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF = 1 "Forward maximum velocity";
    parameter BioChem.Units.ReactionRate vR = 1 "Reverse maximum velocity";
  equation
    rr = (vF * s1.c / KmS - vR * p1.c / KmP) / (1 + s1.c / KmS + p1.c / KmP);
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART uurTag -->
    <body>
    Uni-uni reversible simple Michaelis-Menten<h4>Reaction rate</h4>
     <p class=\"\">
 <img src=\"modelica://BioChem/DocumentationFiles/eqMMUur.png\" alt=\"\"/>
 </p><p class=\"\">
 where
 </p><table><tr><td>C<sub>s1</sub></td><td width=\"20\"></td><td width=\"20\">:</td><td>Concentration of substrate <i>i</i></td></tr><tr><td>C<sub>p1</sub></td><td width=\"20\"></td><td width=\"20\">:</td><td>Concentration of product <i>i</i></td></tr><tr><td>vF</td><td width=\"20\"></td><td width=\"20\">:</td><td>Forward maxium velocity</td></tr><tr><td>vR</td><td width=\"20\"></td><td width=\"20\">:</td><td>Reverse maxium velocity</td></tr><tr><td>KmS</td><td width=\"20\"></td><td width=\"20\">:</td><td>Forward Michaelis-Menten constant</td></tr><tr><td>KmP</td><td width=\"20\"></td><td width=\"20\">:</td><td>Reverse Michaelis-Menten constant</td></tr><tr><td>nS1</td><td width=\"20\"></td><td width=\"20\">:</td><td>Stoichiometric coefficient for the substrate</td></tr><tr><td>nP1</td><td width=\"20\"></td><td width=\"20\">:</td><td>Stoichiometric coefficient for the product</td></tr></table>
    </body>
    <!--WSMINSERTIONTAGEND uurTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Uur;

  model Uuhr "Uni-uni reversible simple Michaelis-Menten with Haldane adjustment"
    extends BioChem.Interfaces.Reactions.Uur;
    parameter Real Keq = 1 "Equilibrum constant";
    parameter BioChem.Units.Concentration KmS = 1 "Forward Michaelis-Menten constant";
    parameter BioChem.Units.Concentration KmP = 1 "Reverse Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF = 1 "Forward maximum velocity";
  equation
    rr = vF / KmS * (s1.c - p1.c / Keq) / (1 + s1.c / KmS + p1.c / KmP);
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART uuhrTag -->
    <body>
    Uni-uni reversible simple Michaelis-Menten with Haldane adjustment<h4>Reaction rate</h4>
     <p class=\"\">
 <img src=\"modelica://BioChem/DocumentationFiles/eqMMUuhr.png\" alt=\"\"/>
 </p><p class=\"\">
 where
 </p><table><tr><td>C<sub>s1</sub></td><td width=\"20\"></td><td width=\"20\">:</td><td>Concentration of substrate <i>i</i></td></tr><tr><td>C<sub>p1</sub></td><td width=\"20\"></td><td width=\"20\">:</td><td>Concentration of product <i>i</i></td></tr><tr><td>Keq</td><td width=\"20\"></td><td width=\"20\">:</td><td>Equilibrium constant</td></tr><tr><td>vF</td><td width=\"20\"></td><td width=\"20\">:</td><td>Forward maxium velocity</td></tr><tr><td>KmS</td><td width=\"20\"></td><td width=\"20\">:</td><td>Forward Michaelis-Menten constant</td></tr><tr><td>KmP</td><td width=\"20\"></td><td width=\"20\">:</td><td>Reverse Michaelis-Menten constant</td></tr><tr><td>nS1</td><td width=\"20\"></td><td width=\"20\">:</td><td>Stoichiometric coefficient for the substrate</td></tr><tr><td>nP1</td><td width=\"20\"></td><td width=\"20\">:</td><td>Stoichiometric coefficient for the product</td></tr></table>
    </body>
    <!--WSMINSERTIONTAGEND uuhrTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Uuhr;

  model Isouur "Uni-uni reversible Michaelis-Menten with isoinhibition"
    extends BioChem.Interfaces.Reactions.Uur;
    parameter Real Keq = 1 "Equilibrum constant";
    parameter Real Kii = 1 "Isoinhibition constant";
    parameter BioChem.Units.Concentration KmS = 1 "Forward Michaelis-Menten constant";
    parameter BioChem.Units.Concentration KmP = 1 "Reverse Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF = 1 "Forward maximum velocity";
  equation
    rr = vF * (s1.c - p1.c / Keq) / (s1.c * (1 + p1.c / Kii) + KmS * (1 + p1.c / KmP));
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART isouurTag -->
    <body>
    Uni-uni reversible Michaelis-Menten with isoinhibition<h4>Reaction rate</h4>
     <p class=\"\">
 <img src=\"modelica://BioChem/DocumentationFiles/eqMMUuhr.png\" alt=\"\"/>
 </p><p class=\"\">
 where
 </p><table><tr><td>C<sub>s1</sub></td><td width=\"20\"></td><td width=\"20\">:</td><td>Concentration of substrate <i>i</i></td></tr><tr><td>C<sub>p1</sub></td><td width=\"20\"></td><td width=\"20\">:</td><td>Concentration of product <i>i</i></td></tr><tr><td>Keq</td><td width=\"20\"></td><td width=\"20\">:</td><td>Equilibrium constant</td></tr><tr><td>Kii</td><td width=\"20\"></td><td width=\"20\">:</td><td>Isoinhibition constant</td></tr><tr><td>vF</td><td width=\"20\"></td><td width=\"20\">:</td><td>Forward maxium velocity</td></tr><tr><td>KmS</td><td width=\"20\"></td><td width=\"20\">:</td><td>Forward Michaelis-Menten constant</td></tr><tr><td>KmP</td><td width=\"20\"></td><td width=\"20\">:</td><td>Reverse Michaelis-Menten constant</td></tr><tr><td>nS1</td><td width=\"20\"></td><td width=\"20\">:</td><td>Stoichiometric coefficient for the substrate</td></tr><tr><td>nP1</td><td width=\"20\"></td><td width=\"20\">:</td><td>Stoichiometric coefficient for the product</td></tr></table>
    </body>
    <!--WSMINSERTIONTAGEND isouurTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Isouur;
  annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART michaelisMentenTag -->
    <body>
    This package contains irreversible and reversible Michaelis-Menten reactions. Currently the library is limited to one-substrate and one-product reactions.<br><br>
 Michaelis-Menten kinetics describe the kinetics of many enzymes. It is named after Leonor Michaelis and Maud Menten. This kinetic model is relevant to situations where the concentration of enzyme is much lower than the concentration of substrate (i.e. where enzyme concentration is the limiting factor), and when the enzyme is not allosteric.<br><br><img src=\"modelica://BioChem/DocumentationFiles/MichaliesMenten.png\" alt=\"\"/>
    </body>
    <!--WSMINSERTIONTAGEND michaelisMentenTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
end MichaelisMenten;