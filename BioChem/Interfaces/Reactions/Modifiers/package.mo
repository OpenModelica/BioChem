within BioChem.Interfaces.Reactions;
package Modifiers "Partial models of modifiers to reactions"
  extends Icons.Library;
  annotation(Documentation(info="", revisions=""), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  partial model ModifierForward "Basics for a forward modifier in a reaction edge"
    annotation(Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10}), graphics={Line(points={{0,56.25},{0,6.25}}, color={0,0,255}, arrow={Arrow.None,Arrow.Open}, arrowSize=25)}));
    BioChem.Interfaces.Nodes.ModifierConnector mF1 annotation(Placement(transformation(origin={1.11022e-16,90}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-1.5099e-14,90}, extent={{-20,-20},{20,20}})));
  equation
    mF1.r=0;
  end ModifierForward;

  partial model ModifierBackward "Basics for a backward modifier in a reaction edge"
    annotation(Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10}), graphics={Line(points={{0,-56.25},{0,-6.715}}, color={0,0,255}, arrow={Arrow.None,Arrow.Open}, arrowSize=25)}));
    BioChem.Interfaces.Nodes.ModifierConnector mB1 annotation(Placement(transformation(origin={0,-90}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-6.66134e-15,-90}, extent={{-20,-20},{20,20}})));
  equation
    mB1.r=0;
  end ModifierBackward;

  partial model InhibitorForward "Basics for a forward inhibitor in a reaction edge"
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10}), graphics={Line(points={{0,56.25},{0,6.25}}, color={0,0,255}, arrow={Arrow.None,Arrow.Open}, arrowSize=25)}), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    BioChem.Interfaces.Nodes.InhibitorConnector iF1 annotation(Placement(transformation(origin={-2.66454e-15,90}, extent={{-10,-10},{10,10}}), iconTransformation(origin={1.06581e-14,90}, extent={{-20,-20},{20,20}})));
  equation
    iF1.r=0;
  end InhibitorForward;

  partial model InhibitorBackward "Basics for a backward inhibitor in a reaction edge"
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10}), graphics={Line(points={{0,-56.25},{0,-6.25}}, color={0,0,255}, arrow={Arrow.None,Arrow.Open}, arrowSize=25)}), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    BioChem.Interfaces.Nodes.InhibitorConnector iB1 annotation(Placement(transformation(origin={-5.55112e-16,-90}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-4.88498e-15,-90}, extent={{-20,-20},{20,20}})));
  equation
    iB1.r=0;
  end InhibitorBackward;

  partial model ActivatorForward "Basics for a forward activator in a reaction edge"
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10}), graphics={Line(points={{0,56.25},{0,6.25}}, color={0,0,255}, arrow={Arrow.None,Arrow.Open}, arrowSize=25)}), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    BioChem.Interfaces.Nodes.ActivatorConnector aF1 annotation(Placement(transformation(origin={-4.21885e-15,90}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-8.88178e-16,90}, extent={{-20,-20},{20,20}})));
  equation
    aF1.r=0;
  end ActivatorForward;

  partial model ActivatorBackward "Basics for a backward activator in a reaction edge"
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10}), graphics={Line(points={{0,-56.25},{0,-6.25}}, color={0,0,255}, arrow={Arrow.None,Arrow.Open}, arrowSize=25)}), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    BioChem.Interfaces.Nodes.ActivatorConnector aB1 annotation(Placement(transformation(origin={-6.66134e-16,-90}, extent={{-10,-10},{10,10}}), iconTransformation(origin={1.77636e-15,-90}, extent={{-20,-20},{20,20}})));
  equation
    aB1.r=0;
  end ActivatorBackward;

  model TwoModifiers "Basics for two modifiers in a reaction edge"
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10}), graphics={Line(points={{0,56.25},{0,6.25}}, color={0,0,255}, arrow={Arrow.None,Arrow.Open}, arrowSize=25)}), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    BioChem.Interfaces.Nodes.ModifierConnector m2 annotation(Placement(transformation(origin={50,90}, extent={{-10,-10},{10,10}}), iconTransformation(origin={50,90}, extent={{-20,-20},{20,20}})));
    BioChem.Interfaces.Nodes.ModifierConnector m1 annotation(Placement(transformation(origin={-50,90}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-50,90}, extent={{-20,-20},{20,20}})));
  equation
    0=m1.r;
    0=m2.r;
  end TwoModifiers;

  model Modifier
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10}), graphics={Line(points={{0,56.25},{0,6.25}}, color={0,0,255}, arrow={Arrow.None,Arrow.Open}, arrowSize=30)}), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    BioChem.Interfaces.Nodes.ModifierConnector m1 annotation(Placement(transformation(origin={5.55111e-16,90}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-3.10862e-15,90}, extent={{-20,-20},{20,20}})));
  equation
    m1.r=0;
  end Modifier;

  model Activator "Basics for a forward activator in a reaction edge"
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10}), graphics={Line(points={{0,56.25},{0,6.25}}, color={0,0,255}, arrow={Arrow.None,Arrow.Open}, arrowSize=25)}), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    BioChem.Interfaces.Nodes.ActivatorConnector a1 annotation(Placement(transformation(origin={0,90}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-1.28786e-14,90}, extent={{-20,-20},{20,20}})));
  equation
    a1.r=0;
  end Activator;

  model Inhibitor
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10}), graphics={Line(points={{0,56.25},{0,6.25}}, color={0,0,255}, arrow={Arrow.None,Arrow.Open}, arrowSize=25)}), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    BioChem.Interfaces.Nodes.InhibitorConnector i1 annotation(Placement(transformation(origin={0,90}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-9.99201e-15,90}, extent={{-20,-20},{20,20}})));
  equation
    i1.r=0;
  end Inhibitor;

  partial model ThreeModifiers "Basics for three modifiers in a reaction edge"
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10}), graphics={Line(points={{0,56.25},{0,6.25}}, color={0,0,255}, arrow={Arrow.None,Arrow.Open}, arrowSize=25)}), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    BioChem.Interfaces.Nodes.ModifierConnector m1 annotation(Placement(transformation(origin={-50,90}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-50,90}, extent={{-20,-20},{20,20}})));
    BioChem.Interfaces.Nodes.ModifierConnector m2 annotation(Placement(transformation(origin={-3.33065e-16,90}, extent={{-10,-10},{10,10}}), iconTransformation(origin={1.11022e-15,90}, extent={{-20,-20},{20,20}})));
    BioChem.Interfaces.Nodes.ModifierConnector m3 annotation(Placement(transformation(origin={50,90}, extent={{-10,-10},{10,10}}), iconTransformation(origin={50,90}, extent={{-20,-20},{20,20}})));
  equation
    0=m1.r;
    0=m2.r;
    0=m3.r;
  end ThreeModifiers;

  model MultipleModifiers
    annotation(Icon(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, grid={10,10}), graphics={Ellipse(lineColor={255,255,0}, fillColor={255,255,127}, fillPattern=FillPattern.Solid, lineThickness=2, extent={{-25.0,65.0},{25.0,115.0}}),Line(origin={0.0,29.1679}, points={{0.0,29.17},{0.0,-29.17}}, arrow={Arrow.None,Arrow.Filled}, arrowSize=30)}), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    parameter Integer dimM "number of modifiers";
    BioChem.Interfaces.Nodes.ModifierConnector m[dimM] annotation(Placement(transformation(origin={-2.9976e-15,90}, extent={{-10,-10},{10,10}}), iconTransformation(origin={-8.88178e-16,90}, extent={{-18.75,-18.75},{18.75,18.75}})));
  equation
    m.r=fill(0, dimM);
  end MultipleModifiers;

end Modifiers;
