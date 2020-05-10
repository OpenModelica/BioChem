within BioChem.Examples;

package CircadianOscillator "Weimann2004_CircadianOscillator"
  extends BioChem.Icons.Example;

  model Container
    extends BioChem.Compartments.MainCompartment(V(start = 1));
    import BioChem.Math.*;
    import BioChem.Constants.*;
    BioChem.Examples.CircadianOscillator.Nucleus nucleus(k3t = k3t, k3d = k3d, k6t = k6t, k6d = k6d, k6a = k6a, k7a = k7a, k7d = k7d) annotation(
      Placement(transformation(origin = {-30.0, -10.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    Cytoplasm cytoplasm(trans_per2_cry = trans_per2_cry, k1d = k1d, k2b = k2b, q = q, k2d = k2d, k2t = k2t, trans_Bmal1 = trans_Bmal1, k4d = k4d, k5b = k5b, k5d = k5d, k5t = k5t) annotation(
      Placement(transformation(origin = {21.5395, -10.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -180)));
    inner Real Nucleus_V = nucleus.V "Variable used to make the compartment volume of inner compartments accessible. Do not edit.";
    inner Real Cytoplasm_V = cytoplasm.V "Variable used to make the compartment volume of inner compartments accessible. Do not edit.";
    inner Real Container_V = V "Variable used to make the compartment volume accessible for inner components. Do not edit.";
    Real trans_per2_cry(start = 0);
    parameter Real v1b = 9;
    parameter Real c_sbml = 0.01;
    parameter Real k1b = 1;
    parameter Real k1i = 0.56;
    parameter Real hill_coeff = 8;
    Real trans_Bmal1(start = 0);
    parameter Real v4b = 3.6;
    parameter Real r_sbml = 3;
    parameter Real k4b = 2.16;
    Real y5_y6_y7(start = 3.05);
    parameter Real k1d = 0.12;
    parameter Real k2b = 0.3;
    parameter Real q = 2;
    parameter Real k2d = 0.05;
    parameter Real k2t = 0.24;
    parameter Real k3t = 0.02;
    parameter Real k3d = 0.12;
    parameter Real k4d = 0.75;
    parameter Real k5b = 0.24;
    parameter Real k5d = 0.06;
    parameter Real k5t = 0.45;
    parameter Real k6t = 0.06;
    parameter Real k6d = 0.12;
    parameter Real k6a = 0.09;
    parameter Real k7a = 0.003;
    parameter Real k7d = 0.09;
  equation
    connect(cytoplasm.y5_node, nucleus.y5_node) annotation(
      Line(origin = {-4.2302, -19.0}, points = {{14.7697, 0.0}, {-14.7697, 0.0}}));
    connect(nucleus.y6_node, cytoplasm.y6_node) annotation(
      Line(origin = {-4.2302, -1.0}, points = {{-14.7697, 0.0}, {14.7697, 0.0}}));
    connect(cytoplasm.y2_node, nucleus.y2_node) annotation(
      Line(origin = {-4.2302, -7.0}, points = {{14.7697, 0.0}, {-14.7697, 0.0}}));
    connect(nucleus.y3_node, cytoplasm.y3_node) annotation(
      Line(origin = {-4.2302, -13.0}, points = {{-14.7697, 0.0}, {14.7697, 0.0}}));
    trans_per2_cry = v1b * (nucleus.y7.c + c_sbml) / (k1b * (1 + (nucleus.y3.c / k1i) ^ hill_coeff) + nucleus.y7.c + c_sbml);
    trans_Bmal1 = v4b * nucleus.y3.c ^ r_sbml / (k4b ^ r_sbml + nucleus.y3.c ^ r_sbml);
    y5_y6_y7 = cytoplasm.y5.c + nucleus.y6.c + nucleus.y7.c;
    annotation(
      Documentation(info = "<html>
<h1>Circadian Oscillator</h1>

This example is the modelica version of the model presented in
<i>Modeling feedback loops of the Mammalian circadian oscillator</i> by
Becker-Weimann S, Wolf J, Herzel H, Kramer A. (Biophysical Journal Volume 87 November 2004 3023-3034)

<h2>Abstract</h2>
The suprachiasmatic nucleus governs daily variations of physiology and behavior in mammals. Within single neurons, interlocked transcriptional/translational feedback loops generate circadian rhythms on the molecular level. We present a mathematical model that reflects the essential features of the mammalian circadian oscillator to characterize the differential roles of negative and positive feedback loops. The oscillations that are obtained have a 24-h period and are robust toward parameter variations even when the positive feedback is replaced by a constantly expressed activator. This demonstrates the crucial role of the negative feedback for rhythm generation. Moreover, it explains the rhythmic phenotype of Rev-erbalpha-/- mutant mice, where a positive feedback is missing. The interplay of negative and positive feedback reveals a complex dynamics. In particular, the model explains the unexpected rescue of circadian oscillations in Per2Brdm1/Cry2-/- double-mutant mice (Per2Brdm1 single-mutant mice are arrhythmic). Here, a decrease of positive feedback strength associated with mutating the Per2 gene is compensated by the Cry2-/- mutation that simultaneously decreases the negative feedback strength. Finally, this model leads us to a testable prediction of a molecular and behavioral phenotype: circadian oscillations should be rescued when arrhythmic Per2Brdm1 mutant mice are crossed with Rev- erbalpha -/- mutant mice.

<h2>Simulations</h2>
The simulation results are shown in the
 <a href=\"#fig1\">Figure 1</a>. This plot corresponds to Fig 3A from the paper (Becker-Weimann, 2004).

<a name=\"fig1\"></a>
<img src=\"modelica://BioChem/Resources/Images/Container.png\" alt=\"Fig1: Simulation results\">

</html>", revisions = ""),
      experiment(StartTime = 0, StopTime = 150, NumberOfIntervals = -1, Algorithm = "dassl", Tolerance = 1e-06));
  end Container;

  model Nucleus "Nucleus"
    extends BioChem.Compartments.Compartment(V(start = 1));
    import BioChem.Math.*;
    import BioChem.Constants.*;

    model y3_
      extends BioChem.Substances.Substance;
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000035\">
      <bqbiol:hasPart>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:uniprot:O15055\"/>
          <rdf:li rdf:resource=\"urn:miriam:uniprot:Q16526\"/>
        </rdf:Bag>
      </bqbiol:hasPart>
    </rdf:Description>
  </rdf:RDF>"));
    end y3_;

    model y6_
      extends BioChem.Substances.Substance;
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000038\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:uniprot:Q8IUT4\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
    end y6_;

    model y7_
      extends BioChem.Substances.Substance;
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000039\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:uniprot:Q8IUT4\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
    end y7_;

    model per2_cry_nuclear_export_
      extends BioChem.Interfaces.Reactions.Uui;
      outer Real Nucleus_V "Variable used to access the volume of an outer compartment. Do not edit.";
      parameter Real k3t;
    equation
      rr = Nucleus_V * k3t * s1.c;
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000049\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0051168\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
    end per2_cry_nuclear_export_;

    model nuclear_per2_cry_complex_degradation_
      extends BioChem.Interfaces.Reactions.Uui;
      outer Real Nucleus_V "Variable used to access the volume of an outer compartment. Do not edit.";
      parameter Real k3d;
    equation
      rr = Nucleus_V * k3d * s1.c;
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000050\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0044257\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
    end nuclear_per2_cry_complex_degradation_;

    model BMAL1_nuclear_export_
      extends BioChem.Interfaces.Reactions.Uui;
      outer Real Nucleus_V "Variable used to access the volume of an outer compartment. Do not edit.";
      parameter Real k6t;
    equation
      rr = Nucleus_V * k6t * s1.c;
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000056\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0051168\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
    end BMAL1_nuclear_export_;

    model nuclear_BMAL1_degradation_
      extends BioChem.Interfaces.Reactions.Uui;
      outer Real Nucleus_V "Variable used to access the volume of an outer compartment. Do not edit.";
      parameter Real k6d;
    equation
      rr = Nucleus_V * k6d * s1.c;
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000057\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0044257\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
    end nuclear_BMAL1_degradation_;

    model BMAL1_activation_
      extends BioChem.Interfaces.Reactions.Uui;
      outer Real Nucleus_V "Variable used to access the volume of an outer compartment. Do not edit.";
      parameter Real k6a;
    equation
      rr = Nucleus_V * k6a * s1.c;
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000058\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0051091\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
    end BMAL1_activation_;

    model BMAL1_deactivation_
      extends BioChem.Interfaces.Reactions.Uui;
      outer Real Nucleus_V "Variable used to access the volume of an outer compartment. Do not edit.";
      parameter Real k7a;
    equation
      rr = Nucleus_V * k7a * s1.c;
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000059\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0043433\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
    end BMAL1_deactivation_;

    model Active_BMAL1_degradation_
      extends BioChem.Interfaces.Reactions.Uui;
      outer Real Nucleus_V "Variable used to access the volume of an outer compartment. Do not edit.";
      parameter Real k7d;
    equation
      rr = Nucleus_V * k7d * s1.c;
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000060\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0044257\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
    end Active_BMAL1_degradation_;

    inner Real Nucleus_V = V "Variable used to make the compartment volume accessible for inner components. Do not edit.";
    BioChem.Examples.CircadianOscillator.Nucleus.y3_ y3(c(start = 1.1)) "PER2_CRY_complex_nucleus" annotation(
      Placement(transformation(origin = {70.0, -50.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -270)));
    BioChem.Examples.CircadianOscillator.Nucleus.y6_ y6(c(start = 1)) "BMAL1_nucleus" annotation(
      Placement(transformation(origin = {-10.0, 50.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -180)));
    BioChem.Examples.CircadianOscillator.Nucleus.y7_ y7(c(start = 1.05)) "Active BMAL1" annotation(
      Placement(transformation(origin = {-45.6104, -16.1148}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -180)));
    BioChem.Interfaces.Nodes.SubstanceConnector y3_node annotation(
      Placement(transformation(origin = {90.0, -60.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}), iconTransformation(origin = {110.0, -30.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    parameter Real k3t;
    BioChem.Interfaces.Nodes.SubstanceConnector y2_node annotation(
      Placement(transformation(origin = {90.0, 60.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}), iconTransformation(origin = {110.0, 30.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    BioChem.Examples.CircadianOscillator.Nucleus.per2_cry_nuclear_export_ per2_cry_nuclear_export(k3t = k3t) "per2_cry_nuclear_export" annotation(
      Placement(transformation(origin = {68.1433, 10.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -270)));
    BioChem.Substances.AmbientSubstance ambientSubstance annotation(
      Placement(transformation(origin = {10.0, -50.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    parameter Real k3d;
    BioChem.Examples.CircadianOscillator.Nucleus.nuclear_per2_cry_complex_degradation_ nuclear_per2_cry_complex_degradation(k3d = k3d) "nuclear_per2_cry_complex_degradation" annotation(
      Placement(transformation(origin = {40.0, -40.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -180)));
    BioChem.Interfaces.Nodes.SubstanceConnector y6_node annotation(
      Placement(transformation(origin = {90.0, 90.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}), iconTransformation(origin = {110.0, 90.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    parameter Real k6t;
    BioChem.Interfaces.Nodes.SubstanceConnector y5_node annotation(
      Placement(transformation(origin = {90.0, -90.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}), iconTransformation(origin = {110.0, -90.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    Nucleus.BMAL1_nuclear_export_ BMAL1_nuclear_export(k6t = k6t) "BMAL1_nuclear_export" annotation(
      Placement(transformation(origin = {-80.0, 20.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -90)));
    parameter Real k6d;
    BioChem.Examples.CircadianOscillator.Nucleus.nuclear_BMAL1_degradation_ nuclear_BMAL1_degradation(k6d = k6d) "nuclear_BMAL1_degradation" annotation(
      Placement(transformation(origin = {10.0, 10.0}, extent = {{10.0, -10.0}, {-10.0, 10.0}}, rotation = 90)));
    parameter Real k6a;
    Nucleus.BMAL1_activation_ BMAL1_activation(k6a = k6a) "BMAL1_activation" annotation(
      Placement(transformation(origin = {-30.0, 10.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -90)));
    parameter Real k7a;
    Nucleus.BMAL1_deactivation_ BMAL1_deactivation(k7a = k7a) "BMAL1_deactivation" annotation(
      Placement(transformation(origin = {-61.7118, 10.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -270)));
    parameter Real k7d;
    BioChem.Examples.CircadianOscillator.Nucleus.Active_BMAL1_degradation_ Active_BMAL1_degradation(k7d = k7d) "Active_BMAL1_degradation" annotation(
      Placement(transformation(origin = {-30.0, -40.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
  equation
    connect(y3.n1, nuclear_per2_cry_complex_degradation.s1) annotation(
      Line(origin = {58.0633, -45.0}, points = {{11.9367, -5.0}, {-2.5617, -5.0}, {-2.5617, 5.0}, {-6.8133, 5.0}}, smooth = Smooth.Bezier));
    connect(y3.n1, per2_cry_nuclear_export.s1) annotation(
      Line(origin = {69.0717, -15.5633}, points = {{0.9283, -34.4367}, {0.9283, 10.0617}, {-0.9284, 10.0617}, {-0.9284, 14.3133}}, smooth = Smooth.Bezier));
    connect(y3.n1, y3_node) annotation(
      Line(origin = {76.6667, -56.6667}, points = {{-6.6667, 6.6667}, {-6.6667, -3.3333}, {13.3333, -3.3333}}, smooth = Smooth.Bezier));
    connect(y7.n1, BMAL1_activation.p1) annotation(
      Line(origin = {-35.2035, -11.1599}, points = {{-10.4069, -4.9549}, {5.2035, -4.9549}, {5.2035, 9.9099}}, smooth = Smooth.Bezier));
    connect(y7.n1, Active_BMAL1_degradation.s1) annotation(
      Line(origin = {-44.1569, -32.0383}, points = {{-1.4535, 15.9235}, {-1.4535, -7.9617}, {2.9069, -7.9617}}, smooth = Smooth.Bezier));
    connect(y7.n1, BMAL1_deactivation.s1) annotation(
      Line(origin = {-56.3447, -11.1599}, points = {{10.7343, -4.9549}, {-5.3671, -4.9549}, {-5.3671, 9.9099}}, smooth = Smooth.Bezier));
    connect(y6.n1, BMAL1_deactivation.p1) annotation(
      Line(origin = {-44.4745, 40.4167}, points = {{34.4745, 9.5833}, {-17.2373, 9.5833}, {-17.2373, -19.1667}}, smooth = Smooth.Bezier));
    connect(y6.n1, BMAL1_activation.s1) annotation(
      Line(origin = {-20.0, 30.5633}, points = {{10.0, 19.4367}, {10.0, -5.0617}, {-10.0, -5.0617}, {-10.0, -9.3133}}, smooth = Smooth.Bezier));
    connect(y6.n1, nuclear_BMAL1_degradation.s1) annotation(
      Line(origin = {0.0, 30.5633}, points = {{-10.0, 19.4367}, {-10.0, -5.0617}, {10.0, -5.0617}, {10.0, -9.3133}}, smooth = Smooth.Bezier));
    connect(y6.n1, BMAL1_nuclear_export.s1) annotation(
      Line(origin = {-56.6667, 43.75}, points = {{46.6667, 6.25}, {-23.3333, 6.25}, {-23.3333, -12.5}}, smooth = Smooth.Bezier));
    connect(y6.n1, y6_node) annotation(
      Line(origin = {58.5, 70.0}, points = {{-68.5, -20.0}, {18.5, -20.0}, {18.5, 20.0}, {31.5, 20.0}}, smooth = Smooth.Bezier));
    connect(ambientSubstance.n1, nuclear_per2_cry_complex_degradation.p1) annotation(
      Line(origin = {21.9367, -45.0}, points = {{-11.9367, -5.0}, {2.5617, -5.0}, {2.5617, 5.0}, {6.8133, 5.0}}, smooth = Smooth.Bezier));
    connect(ambientSubstance.n1, nuclear_BMAL1_degradation.p1) annotation(
      Line(origin = {10.0, -25.625}, points = {{0.0, -24.375}, {0.0, 24.375}}, smooth = Smooth.Bezier));
    connect(BMAL1_nuclear_export.p1, y5_node) annotation(
      Line(origin = {-23.3333, -57.0833}, points = {{-56.6667, 65.8333}, {-56.6667, -32.9167}, {113.3333, -32.9167}}, smooth = Smooth.Bezier));
    connect(per2_cry_nuclear_export.p1, y2_node) annotation(
      Line(origin = {79.0717, 43.8125}, points = {{-10.9284, -22.5625}, {-10.9284, 3.1875}, {10.9283, 3.1875}, {10.9283, 16.1875}}, smooth = Smooth.Bezier));
    connect(ambientSubstance.n1, Active_BMAL1_degradation.p1) annotation(
      Line(origin = {-9.4367, -45.0}, points = {{19.4367, -5.0}, {-5.0617, -5.0}, {-5.0617, 5.0}, {-9.3133, 5.0}}, smooth = Smooth.Bezier));
  end Nucleus;

  model Cytoplasm "Cytoplasm"
    extends BioChem.Compartments.Compartment(V(start = 1));
    import BioChem.Math.*;
    import BioChem.Constants.*;

    model y1_
      extends BioChem.Substances.Substance;
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000033\">
      <bqbiol:encodes>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:uniprot:O15055\"/>
          <rdf:li rdf:resource=\"urn:miriam:uniprot:Q16526\"/>
        </rdf:Bag>
      </bqbiol:encodes>
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.chebi:CHEBI%3A33699\"/>
          <rdf:li rdf:resource=\"urn:miriam:kegg.compound:C00046\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
    end y1_;

    model y2_
      extends BioChem.Substances.Substance;
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000034\">
      <bqbiol:hasPart>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:uniprot:O15055\"/>
          <rdf:li rdf:resource=\"urn:miriam:uniprot:Q16526\"/>
        </rdf:Bag>
      </bqbiol:hasPart>
    </rdf:Description>
  </rdf:RDF>"));
    end y2_;

    model y4_
      extends BioChem.Substances.Substance;
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000036\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.chebi:CHEBI%3A33699\"/>
          <rdf:li rdf:resource=\"urn:miriam:kegg.compound:C00046\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
      <bqbiol:encodes>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:uniprot:Q8IUT4\"/>
        </rdf:Bag>
      </bqbiol:encodes>
    </rdf:Description>
  </rdf:RDF>"));
    end y4_;

    model y5_
      extends BioChem.Substances.Substance;
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000037\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:uniprot:Q8IUT4\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
    end y5_;

    model per2_cry_transcription_
      extends BioChem.Interfaces.Reactions.Uui;
      outer Real Cytoplasm_V "Variable used to access the volume of an outer compartment. Do not edit.";
      input Real trans_per2_cry;
    equation
      rr = Cytoplasm_V * trans_per2_cry;
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000044\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0006350\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
    end per2_cry_transcription_;

    model per2_cry_mRNA_degradation_
      extends BioChem.Interfaces.Reactions.Uui;
      outer Real Cytoplasm_V "Variable used to access the volume of an outer compartment. Do not edit.";
      parameter Real k1d;
    equation
      rr = Cytoplasm_V * k1d * s1.c;
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000045\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0006402\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
    end per2_cry_mRNA_degradation_;

    model per2_cry_complex_formation_
      extends BioChem.Interfaces.Reactions.Uui;
      extends BioChem.Interfaces.Reactions.Modifiers.Modifier;
      outer Real Cytoplasm_V "Variable used to access the volume of an outer compartment. Do not edit.";
      parameter Real k2b;
      parameter Real q;
    equation
      rr = Cytoplasm_V * k2b * m1.c ^ q;
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000046\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0046982\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
    end per2_cry_complex_formation_;

    model cytoplasmic_per2_cry_complex_degradation_
      extends BioChem.Interfaces.Reactions.Uui;
      outer Real Cytoplasm_V "Variable used to access the volume of an outer compartment. Do not edit.";
      parameter Real k2d;
    equation
      rr = Cytoplasm_V * k2d * s1.c;
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000047\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0044257\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
    end cytoplasmic_per2_cry_complex_degradation_;

    model per2_cry_nuclear_import_
      extends BioChem.Interfaces.Reactions.Uui;
      outer Real Cytoplasm_V "Variable used to access the volume of an outer compartment. Do not edit.";
      parameter Real k2t;
    equation
      rr = Cytoplasm_V * k2t * s1.c;
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000048\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0051170\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
    end per2_cry_nuclear_import_;

    model Bmal1_transcription_
      extends BioChem.Interfaces.Reactions.Uui;
      outer Real Cytoplasm_V "Variable used to access the volume of an outer compartment. Do not edit.";
      input Real trans_Bmal1;
    equation
      rr = Cytoplasm_V * trans_Bmal1;
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000051\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0006350\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
    end Bmal1_transcription_;

    model Bmal1_mRNA_degradation_
      extends BioChem.Interfaces.Reactions.Uui;
      outer Real Cytoplasm_V "Variable used to access the volume of an outer compartment. Do not edit.";
      parameter Real k4d;
    equation
      rr = Cytoplasm_V * k4d * s1.c;
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000052\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0006402\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
    end Bmal1_mRNA_degradation_;

    model BMAL1_translation_
      extends BioChem.Interfaces.Reactions.Uui;
      extends BioChem.Interfaces.Reactions.Modifiers.Modifier;
      outer Real Cytoplasm_V "Variable used to access the volume of an outer compartment. Do not edit.";
      parameter Real k5b;
    equation
      rr = Cytoplasm_V * k5b * m1.c;
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000053\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0006412\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
    end BMAL1_translation_;

    model cytoplasmic_BMAL1_degradation_
      extends BioChem.Interfaces.Reactions.Uui;
      outer Real Cytoplasm_V "Variable used to access the volume of an outer compartment. Do not edit.";
      parameter Real k5d;
    equation
      rr = Cytoplasm_V * k5d * s1.c;
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000054\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0044257\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
    end cytoplasmic_BMAL1_degradation_;

    model BMAL1_nuclear_import_
      extends BioChem.Interfaces.Reactions.Uui;
      outer Real Cytoplasm_V "Variable used to access the volume of an outer compartment. Do not edit.";
      parameter Real k5t;
    equation
      rr = Cytoplasm_V * k5t * s1.c;
      annotation(
        __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000055\">
      <bqbiol:isVersionOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0051170\"/>
        </rdf:Bag>
      </bqbiol:isVersionOf>
    </rdf:Description>
  </rdf:RDF>"));
    end BMAL1_nuclear_import_;

    inner Real Cytoplasm_V = V "Variable used to make the compartment volume accessible for inner components. Do not edit.";
    Cytoplasm.y1_ y1(c(start = 0.2)) "Per2 or Cry mRNA" annotation(
      Placement(transformation(origin = {170.0, 60.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    Cytoplasm.y2_ y2(c(start = 0)) "PER2_CRY_complex_cytoplasm" annotation(
      Placement(transformation(origin = {140.0, -21.8298}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    Cytoplasm.y4_ y4(c(start = 0.8)) "Bmal1 mRNA" annotation(
      Placement(transformation(origin = {64.8293, -60.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    Cytoplasm.y5_ y5(c(start = 1)) "BMAL1_cytoplasm" annotation(
      Placement(transformation(origin = {20.0, 20.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    BioChem.Substances.AmbientSubstance ambientSubstance annotation(
      Placement(transformation(origin = {90.0, 30.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    input Real trans_per2_cry;
    Cytoplasm.per2_cry_transcription_ per2_cry_transcription(trans_per2_cry = trans_per2_cry) "per2_cry_transcription" annotation(
      Placement(transformation(origin = {130.0, 50.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    parameter Real k1d;
    Cytoplasm.per2_cry_mRNA_degradation_ per2_cry_mRNA_degradation(k1d = k1d) "per2_cry_mRNA_degradation" annotation(
      Placement(transformation(origin = {130.0, 70.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -180)));
    parameter Real k2b;
    parameter Real q;
    Cytoplasm.per2_cry_complex_formation_ per2_cry_complex_formation(k2b = k2b, q = q) "per2_cry_complex_formation" annotation(
      Placement(transformation(origin = {152.1486, 20.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -90)));
    parameter Real k2d;
    Cytoplasm.cytoplasmic_per2_cry_complex_degradation_ cytoplasmic_per2_cry_complex_degradation(k2d = k2d) "cytoplasmic_per2_cry_complex_degradation" annotation(
      Placement(transformation(origin = {120.0, 10.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -270)));
    parameter Real k2t;
    BioChem.Interfaces.Nodes.SubstanceConnector y3_node annotation(
      Placement(transformation(origin = {190.0, 30.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}), iconTransformation(origin = {110.0, 30.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    Cytoplasm.per2_cry_nuclear_import_ per2_cry_nuclear_import(k2t = k2t) "per2_cry_nuclear_import" annotation(
      Placement(transformation(origin = {180.0, 10.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -270)));
    BioChem.Interfaces.Nodes.SubstanceConnector y2_node annotation(
      Placement(transformation(origin = {190.0, -30.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}), iconTransformation(origin = {110.0, -30.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    input Real trans_Bmal1;
    Cytoplasm.Bmal1_transcription_ Bmal1_transcription(trans_Bmal1 = trans_Bmal1) "Bmal1_transcription" annotation(
      Placement(transformation(origin = {74.9249, -23.3818}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -90)));
    parameter Real k4d;
    Cytoplasm.Bmal1_mRNA_degradation_ Bmal1_mRNA_degradation(k4d = k4d) "Bmal1_mRNA_degradation" annotation(
      Placement(transformation(origin = {100.0, -30.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -270)));
    parameter Real k5b;
    Cytoplasm.BMAL1_translation_ BMAL1_translation(k5b = k5b) "BMAL1_translation" annotation(
      Placement(transformation(origin = {60.0, 0.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -180)));
    parameter Real k5d;
    Cytoplasm.cytoplasmic_BMAL1_degradation_ cytoplasmic_BMAL1_degradation(k5d = k5d) "cytoplasmic_BMAL1_degradation" annotation(
      Placement(transformation(origin = {60.0, 30.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    parameter Real k5t;
    BioChem.Interfaces.Nodes.SubstanceConnector y6_node annotation(
      Placement(transformation(origin = {190.0, -90.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}), iconTransformation(origin = {110.0, -90.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    Cytoplasm.BMAL1_nuclear_import_ BMAL1_nuclear_import(k5t = k5t) "BMAL1_nuclear_import" annotation(
      Placement(transformation(origin = {50.0, -80.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = -450)));
    BioChem.Interfaces.Nodes.SubstanceConnector y5_node annotation(
      Placement(transformation(origin = {190.0, 80.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}), iconTransformation(origin = {110.0, 90.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}})));
  equation
    connect(BMAL1_nuclear_import.p1, y6_node) annotation(
      Line(origin = {128.8, -92.4506}, points = {{-78.8, 1.2006}, {-78.8, -3.0509}, {48.2, -3.0509}, {48.2, 2.4506}, {61.2, 2.4506}}, smooth = Smooth.Bezier));
    connect(y2.n1, y2_node) annotation(
      Line(origin = {169.0149, -25.9149}, points = {{-29.0149, 4.0851}, {8.5, 4.0851}, {8.5, -4.0851}, {20.9851, -4.0851}}, smooth = Smooth.Bezier));
    connect(per2_cry_nuclear_import.p1, y3_node) annotation(
      Line(origin = {183.3333, 27.0833}, points = {{-3.3333, -5.8333}, {-3.3333, 2.9167}, {6.6667, 2.9167}}, smooth = Smooth.Bezier));
    connect(y5.n1, y5_node) annotation(
      Line(origin = {121.75, 70.0}, points = {{-101.75, -50.0}, {-41.75, 30.0}, {65.25, 10.0}, {68.25, 10.0}}, smooth = Smooth.Bezier));
    connect(y2.n1, per2_cry_nuclear_import.s1) annotation(
      Line(origin = {166.6667, -14.9699}, points = {{-26.6667, -6.8599}, {13.3333, -6.8599}, {13.3333, 13.7199}}, smooth = Smooth.Bezier));
    connect(y1.n1, per2_cry_complex_formation.m1) annotation(
      Line(origin = {167.0495, 33.3333}, points = {{2.9505, 26.6667}, {2.9505, -13.3333}, {-5.9009, -13.3333}}, smooth = Smooth.Bezier));
    connect(ambientSubstance.n1, per2_cry_complex_formation.s1) annotation(
      Line(origin = {120.0594, 32.4506}, points = {{-30.0594, -2.4506}, {-17.0594, -2.4506}, {-17.0594, 3.0509}, {32.0892, 3.0509}, {32.0892, -1.2006}}, smooth = Smooth.Bezier));
    connect(y2.n1, per2_cry_complex_formation.p1) annotation(
      Line(origin = {146.0743, -1.0207}, points = {{-6.0743, -20.8091}, {-6.0743, 5.5192}, {6.0743, 5.5192}, {6.0743, 9.7707}}, smooth = Smooth.Bezier));
    connect(y2.n1, cytoplasmic_per2_cry_complex_degradation.s1) annotation(
      Line(origin = {130.0, -8.5207}, points = {{10.0, -13.3091}, {10.0, 3.0192}, {-10.0, 3.0192}, {-10.0, 7.2707}}, smooth = Smooth.Bezier));
    connect(ambientSubstance.n1, cytoplasmic_per2_cry_complex_degradation.p1) annotation(
      Line(origin = {110.0, 27.0833}, points = {{-20.0, 2.9167}, {10.0, 2.9167}, {10.0, -5.8333}}, smooth = Smooth.Bezier));
    connect(y1.n1, per2_cry_transcription.p1) annotation(
      Line(origin = {150.5633, 55.0}, points = {{19.4367, 5.0}, {-5.0617, 5.0}, {-5.0617, -5.0}, {-9.3133, -5.0}}, smooth = Smooth.Bezier));
    connect(y1.n1, per2_cry_mRNA_degradation.s1) annotation(
      Line(origin = {150.5633, 65.0}, points = {{19.4367, -5.0}, {-5.0617, -5.0}, {-5.0617, 5.0}, {-9.3133, 5.0}}, smooth = Smooth.Bezier));
    connect(ambientSubstance.n1, per2_cry_mRNA_degradation.p1) annotation(
      Line(origin = {99.5833, 56.6667}, points = {{-9.5833, -26.6667}, {-9.5833, 13.3333}, {19.1667, 13.3333}}, smooth = Smooth.Bezier));
    connect(ambientSubstance.n1, per2_cry_transcription.s1) annotation(
      Line(origin = {106.872, 42.5}, points = {{-16.872, -12.5}, {-2.6325, -2.5}, {7.6265, 7.5}, {11.878, 7.5}}, smooth = Smooth.Bezier));
    connect(ambientSubstance.n1, BMAL1_translation.s1) annotation(
      Line(origin = {83.75, 10.0}, points = {{6.25, 20.0}, {6.25, -10.0}, {-12.5, -10.0}}, smooth = Smooth.Bezier));
    connect(ambientSubstance.n1, Bmal1_mRNA_degradation.p1) annotation(
      Line(origin = {95.0, -4.4367}, points = {{-5.0, 34.4367}, {-5.0, -10.0617}, {5.0, -10.0617}, {5.0, -14.3133}}, smooth = Smooth.Bezier));
    connect(ambientSubstance.n1, Bmal1_transcription.s1) annotation(
      Line(origin = {82.4624, 0.5269}, points = {{7.5376, 29.4731}, {7.5376, -8.4072}, {-7.5375, -8.4072}, {-7.5375, -12.6587}}, smooth = Smooth.Bezier));
    connect(ambientSubstance.n1, cytoplasmic_BMAL1_degradation.p1) annotation(
      Line(origin = {80.625, 30.0}, points = {{9.375, -0.0}, {-9.375, 0.0}}, smooth = Smooth.Bezier));
    connect(y5.n1, cytoplasmic_BMAL1_degradation.s1) annotation(
      Line(origin = {39.4367, 25.0}, points = {{-19.4367, -5.0}, {5.0617, -5.0}, {5.0617, 5.0}, {9.3133, 5.0}}, smooth = Smooth.Bezier));
    connect(y5.n1, BMAL1_nuclear_import.s1) annotation(
      Line(origin = {35.0, -44.4367}, points = {{-15.0, 64.4367}, {-15.0, -20.0617}, {15.0, -20.0617}, {15.0, -24.3133}}, smooth = Smooth.Bezier));
    connect(y5.n1, BMAL1_translation.p1) annotation(
      Line(origin = {39.4367, 10.0}, points = {{-19.4367, 10.0}, {5.0617, 10.0}, {5.0617, -10.0}, {9.3133, -10.0}}, smooth = Smooth.Bezier));
    connect(y4.n1, BMAL1_translation.m1) annotation(
      Line(origin = {62.4147, -24.2512}, points = {{2.4147, -35.7488}, {2.4147, 10.2487}, {-2.4147, 10.2487}, {-2.4147, 15.2512}}, smooth = Smooth.Bezier));
    connect(y4.n1, Bmal1_transcription.p1) annotation(
      Line(origin = {69.8771, -43.0996}, points = {{-5.0478, -16.9004}, {-5.0478, 4.2163}, {5.0478, 4.2163}, {5.0478, 8.4678}}, smooth = Smooth.Bezier));
    connect(y4.n1, Bmal1_mRNA_degradation.s1) annotation(
      Line(origin = {88.2764, -53.75}, points = {{-23.4471, -6.25}, {11.7236, -6.25}, {11.7236, 12.5}}, smooth = Smooth.Bezier));
    annotation(
      Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, grid = {10, 10})),
      Diagram(coordinateSystem(extent = {{0.0, -100.0}, {200.0, 100.0}}, preserveAspectRatio = true, grid = {10, 10})));
  end Cytoplasm;
  annotation(
    __MathCore(RDF = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
    <rdf:Description rdf:about=\"#metaid_0000002\">
      <dc:creator rdf:parseType=\"Resource\">
        <rdf:Bag>
          <rdf:li rdf:parseType=\"Resource\">
            <vCard:N rdf:parseType=\"Resource\">
              <vCard:Family>Dharuri</vCard:Family>
              <vCard:Given>Harish</vCard:Given>
            </vCard:N>
            <vCard:EMAIL>hdharuri@cds.caltech.edu</vCard:EMAIL>
            <vCard:ORG>
              <vCard:Orgname>California Institute of Technology</vCard:Orgname>
            </vCard:ORG>
          </rdf:li>
        </rdf:Bag>
      </dc:creator>
      <dcterms:created rdf:parseType=\"Resource\">
        <dcterms:W3CDTF>2008-04-16T11:56:13Z</dcterms:W3CDTF>
      </dcterms:created>
      <dcterms:modified rdf:parseType=\"Resource\">
        <dcterms:W3CDTF>2008-08-20T18:28:56Z</dcterms:W3CDTF>
      </dcterms:modified>
      <bqmodel:is>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:biomodels.db:BIOMD0000000170\"/>
        </rdf:Bag>
      </bqmodel:is>
      <bqmodel:isDescribedBy>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:pubmed:15347590\"/>
        </rdf:Bag>
      </bqmodel:isDescribedBy>
      <bqbiol:isPartOf>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:kegg.pathway:hsa04710\"/>
        </rdf:Bag>
      </bqbiol:isPartOf>
      <bqbiol:is>
        <rdf:Bag>
          <rdf:li rdf:resource=\"urn:miriam:taxonomy:40674\"/>
          <rdf:li rdf:resource=\"urn:miriam:obo.go:GO%3A0007623\"/>
        </rdf:Bag>
      </bqbiol:is>
    </rdf:Description>
  </rdf:RDF>"));
  annotation(
    Documentation(info = "<html>
<h1>Circadian Oscillator</h1>

This example is the modelica version of the model presented in
<i>Modeling feedback loops of the Mammalian circadian oscillator</i> by
Becker-Weimann S, Wolf J, Herzel H, Kramer A. (Biophysical Journal Volume 87 November 2004 3023-3034)

<br>
<br>
See
<a href=\"Modelica://BioChem.Examples.CircadianOscillator.Container\">Container</a>
 for more documentation and simulation results.
</html>", revisions = ""));
end CircadianOscillator;
