within BioChem.Interfaces.Compartments;

partial model Compartment
  extends BioChem.Icons.Interfaces.Compartments.Compartment;
  inner BioChem.Units.Volume V(start = 1, stateSelect = StateSelect.prefer) "Compartment volume";
    annotation(
      Documentation(info = "<html>
 <p>
 A partial model describing the basics of a default compartment.
 </p>
 </html>"),
      defaultComponentName = "compartment");
end Compartment;
