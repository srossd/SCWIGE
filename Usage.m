(* ::Package:: *)

(* Wolfram Language package *)

BeginPackage["SCWIGEE`"]
(* Exported symbols added here with SymbolName::usage *)  


SetGlobalSymmetry::usage = "SetGlobalSymmetry[\!\(\*
StyleBox[\"group\",\nFontSlant->\"Italic\"]\)] sets the global symmetry to \!\(\*
StyleBox[\"group\",\nFontSlant->\"Italic\"]\).";
SetDefectGlobalSymmetry::usage = "SetDefectGlobalSymmetry[\!\(\*
StyleBox[\"group\",\nFontSlant->\"Italic\"]\)] sets the global symmetry in the presence of the defect to \!\(\*
StyleBox[\"group\",\nFontSlant->\"Italic\"]\).";
SetMultiplet::usage = "SetMultiplet[\!\(\*
StyleBox[\"{\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"op1\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"op2\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"...\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"}\",\nFontSlant->\"Italic\"]\), \!\(\*
StyleBox[\"name\",\nFontSlant->\"Italic\"]\), \!\(\*
StyleBox[\"selfConjugate\",\nFontSlant->\"Italic\"]\), \!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)] sets the \*
StyleBox[\(\!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)th\)] multiplet to be {op1, op2, ...} with name \!\(\*
StyleBox[\"name\",\nFontSlant->\"Italic\"]\), and declared self-conjugate if \!\(\*
StyleBox[\"selfConjugate\",\nFontSlant->\"Italic\"]\) is true.";
SetSignature::usage = "SetSignature[\!\(\*
StyleBox[\"sig\",\nFontSlant->\"Italic\"]\)] sets the signature to \!\(\*
StyleBox[\"sig\",\nFontSlant->\"Italic\"]\), where \!\(\*
StyleBox[\"sig\",\nFontSlant->\"Italic\"]\) is either \"Lorentzian\" or \"Euclidean\".";
SetDefectCodimension::usage = "SetDefectCodimension\!\(\*
StyleBox[\"[\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"q\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"]\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)sets the defect codimension to \!\(\*
StyleBox[\"q\",\nFontSlant->\"Italic\"]\).";
QGlobalRep::usage = "QGlobalRep[] gives the representation of the supercharge under the global symmetry.";
SetQGlobalRep::usage = "SetQGlobalRep[\!\(\*
StyleBox[\"rep\",\nFontSlant->\"Italic\"]\)] sets the representation of the supercharge under the global symmetry to \!\(\*
StyleBox[\"rep\",\nFontSlant->\"Italic\"]\).";

GlobalSymmetry::usage = "GlobalSymmetry[] gives the Cartan matrix of the global symmetry group (or list of Cartan matrices for a non-simple group).";
DefectGlobalSymmetry::usage = "DefectGlobalSymmetry[] gives the Cartan matrix of the global symmetry group in the presence of the defect (or list of Cartan matrices for a non-simple group).";
Multiplet::usage = "Multiplet[\!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)] gives the list of fields in the \*
StyleBox[\(\!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)th\)] SUSY multiplet.";

DisplayMultiplet::usage = "DisplayMultiplet[\!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)] displays the \*
StyleBox[\(\!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)th\)] SUSY multiplet.";

Operator::usage = "Operator[\!\(\*
StyleBox[\"name\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"rep\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"dim\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"{\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"l\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"lb\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"}\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"u1\",\nFontSlant->\"Italic\"]\)] represents a field \!\(\*
StyleBox[\"name\",\nFontSlant->\"Italic\"]\) with global symmetry representation \!\(\*
StyleBox[\"rep\",\nFontSlant->\"Italic\"]\), scaling dimension \!\(\*
StyleBox[\"dim\",\nFontSlant->\"Italic\"]\), spin (\!\(\*
StyleBox[\"l\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"lb\",\nFontSlant->\"Italic\"]\)), and U(1)-charge \!\(\*
StyleBox[\"u1\",\nFontSlant->\"Italic\"]\).";
ScalingDimension::usage = "ScalingDimension[\!\(\*
StyleBox[\"field\",\nFontSlant->\"Italic\"]\)] gives the scaling dimension of \!\(\*
StyleBox[\"field\",\nFontSlant->\"Italic\"]\).";
Spin::usage = "Spin[\!\(\*
StyleBox[\"field\",\nFontSlant->\"Italic\"]\)] gives the spin of \!\(\*
StyleBox[\"field\",\nFontSlant->\"Italic\"]\).";
GlobalRep::usage = "GlobalRep[\!\(\*
StyleBox[\"field\",\nFontSlant->\"Italic\"]\)] gives the global symmetry representation of \!\(\*
StyleBox[\"field\",\nFontSlant->\"Italic\"]\).";
DefectGlobalRep::usage = "GlobalRep[\!\(\*
StyleBox[\"field\",\nFontSlant->\"Italic\"]\)] gives the defect global symmetry representation of \!\(\*
StyleBox[\"field\",\nFontSlant->\"Italic\"]\).";

ToTensor::usage = "ToTensor[\!\(\*
StyleBox[\"field\",\nFontSlant->\"Italic\"]\)] gives a tensor corresponding to \!\(\*
StyleBox[\"field\",\nFontSlant->\"Italic\"]\).";

IndependentSet::usage = "IndependentSet[\!\(\*
StyleBox[\"tensors\",\nFontSlant->\"Italic\"]\)] gives a maximal subset of \!\(\*
StyleBox[\"tensors\",\nFontSlant->\"Italic\"]\) that are linearly independent."

Spinor::usage = "Spinor represents a spinor index.";
DottedSpinor::usage = "DottedSpinor represents a dotted spinor index.";
SpaceTime::usage = "SpaceTime represents a spacetime index.";
GlobalIndex::usage = "GlobalIndex[\!\(\*
StyleBox[\"rep\",\nFontSlant->\"Italic\"]\)] represents an index for the global symmetry representation \!\(\*
StyleBox[\"rep\",\nFontSlant->\"Italic\"]\).";
DefectGlobalIndex::usage = "DefectGlobalIndex[\!\(\*
StyleBox[\"rep\",\nFontSlant->\"Italic\"]\)] represents an index for the defect global symmetry representation \!\(\*
StyleBox[\"rep\",\nFontSlant->\"Italic\"]\).";

QAnsatz::usage = "QAnsatz[\!\(\*
StyleBox[\"field\",\nFontSlant->\"Italic\"]\)] gives an ansatz for the action of a SUSY generator on \!\(\*
StyleBox[\"field\",\nFontSlant->\"Italic\"]\).";
SUSYCoefficient::usage = "SUSYCoefficient[\!\(\*
StyleBox[\"name\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"idx\",\nFontSlant->\"Italic\"]\)] represents an undetermined coefficient in the SUSY variations.";

XX::usage = "XX[\!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)] gives the spacetime point with index \!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)as a tensor\n"<>
			"XX[\!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"j\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"]\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)gives the separation between spacetime points \!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[\"j\",\nFontSlant->\"Italic\"]\) as a tensor";

XXDefect::usage = "XXDefect[\!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)] gives the components of the spacetime point with index \!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)parallel to the defect as a tensor\n"<>
			"XXDefect[\!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"j\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"]\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)gives the components of the separation between spacetime points \!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[\"j\",\nFontSlant->\"Italic\"]\) parallel to the defect as a tensor";

XXTransverse::usage = "XXTransverse[\!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)] gives the components of the spacetime point with index \!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)transverse to the defect as a tensor\n"<>
			"XXTransverse[\!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"j\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"]\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)gives the components of the separation between spacetime points \!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[\"j\",\nFontSlant->\"Italic\"]\) transverse to the defect as a tensor";

x::usage = "x[\!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"j\",\nFontSlant->\"Italic\"]\)] is the \!\(\*
StyleBox[\"j\",\nFontSlant->\"Italic\"]\)th component of spacetime point \!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)";
SpacetimePoint::usage = "SpacetimePoint[\!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)] is the name of the tensor XX[\!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)].";
SpacetimeSeparation::usage = "SpacetimeSeparation[\!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"j\",\nFontSlant->\"Italic\"]\)] is the name of the tensor XX[\!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"j\",\nFontSlant->\"Italic\"]\)].";

XXSquared::usage = "XXSquared[\!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)] gives the norm of the spacetime point with index \!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)as a tensor\n"<>
			"XXSquared[\!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"j\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"]\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)gives the norm of the separation between spacetime points \!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[\"j\",\nFontSlant->\"Italic\"]\) as a tensor";

XXSquaredDefect::usage = "XXSquaredDefect[\!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)] gives the norm of the components of the spacetime point with index \!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)parallel to the defect as a tensor\n"<>
			"XXSquared[\!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"j\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"]\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)gives the norm of the components of the separation between spacetime points \!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[\"j\",\nFontSlant->\"Italic\"]\) parallel to the defect as a tensor";

XXSquaredTransverse::usage = "XXSquaredTransverse[\!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)] gives the norm of the components of the spacetime point with index \!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)transverse to the defect as a tensor\n"<>
			"XXSquaredTransverse[\!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"j\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"]\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)gives the norm of the components of the separation between spacetime points \!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[\"j\",\nFontSlant->\"Italic\"]\) transverse to the defect as a tensor";

XXDot::usage = "XXDot[\!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"j\",\nFontSlant->\"Italic\"]\)] gives the inner product between spacetime points \!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[\"j\",\nFontSlant->\"Italic\"]\)";
XXDotTransverse::usage = "XXDot[\!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"j\",\nFontSlant->\"Italic\"]\)] gives the inner product between the parts of spacetime points \!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[\"j\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)transverse to the defect";
XXDotDefect::usage = "XXDot[\!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"j\",\nFontSlant->\"Italic\"]\)] gives the inner product between spacetime points \!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[\"j\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"parallel\",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\"to\",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\"the\",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\"defect\",\nFontSlant->\"Plain\"]\)";
			
SpinorX::usage = "SpinorX[\!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"j\",\nFontSlant->\"Italic\"]\)] gives the spacetime separation between points \!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\) and \!\(\*
StyleBox[\"j\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\"in\",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\"spinorial\",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\"form\",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\".\",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\"\\\"\",\nFontSlant->\"Plain\"]\)";
			
TensorDerivative::usage = "TensorDerivative[\!\(\*
StyleBox[\"tensor\",\nFontSlant->\"Italic\"]\), \!\(\*
StyleBox[\"idx\",\nFontSlant->\"Italic\"]\)] is the derivative of \!\(\*
StyleBox[\"tensor\",\nFontSlant->\"Italic\"]\) with respect to the spacime point with index \!\(\*
StyleBox[\"idx\",\nFontSlant->\"Italic\"]\).";
TensorSpinorDerivative::usage = "TensorDerivative[\!\(\*
StyleBox[\"tensor\",\nFontSlant->\"Italic\"]\), \!\(\*
StyleBox[\"idx\",\nFontSlant->\"Italic\"]\)] is the derivative of \!\(\*
StyleBox[\"tensor\",\nFontSlant->\"Italic\"]\) with respect to the spacime point with index \!\(\*
StyleBox[\"idx\",\nFontSlant->\"Italic\"]\) in spinor form.";

TwoPtGlobalInvariant::usage = "TwoPtGlobalInvariant[\!\(\*
StyleBox[\"rep1\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"rep2\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"]\",\nFontSlant->\"Italic\"]\) gives the invariant tensor with raised indices in representations (\!\(\*
StyleBox[\"rep1\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"rep2\",\nFontSlant->\"Italic\"]\)).";

ThreePtGlobalInvariant::usage = "ThreePtGlobalInvariant[{\!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"j\",\nFontSlant->\"Italic\"]\)}, \!\(\*
StyleBox[\"k\",\nFontSlant->\"Italic\"]\)] gives the invariant tensor \!\(\*SubscriptBox[SuperscriptBox[\"C\", 
StyleBox[\"k\",\nFontSlant->\"Italic\"]], 
StyleBox[\"ij\",\nFontSlant->\"Italic\"]]\) describing how \!\(\*
StyleBox[\"k\",\nFontSlant->\"Italic\"]\) appears in the product \!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"\[Times]\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"j\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\".\",\nFontSlant->\"Italic\"]\)";

RPart::usage = "RPart[\!\(\*
StyleBox[\"tensor\",\nFontSlant->\"Italic\"]\)] extracts the part of \!\(\*
StyleBox[\"tensor\",\nFontSlant->\"Italic\"]\) composed of global symmetry invariants.";
NonRPart::usage = "NonRPart[\!\(\*
StyleBox[\"tensor\",\nFontSlant->\"Italic\"]\)] removes the global symmetry invariants from \!\(\*
StyleBox[\"tensor\",\nFontSlant->\"Italic\"]\).";

FourPtInvariantGraphs::usage = "InvariantFourPtGraphs[\!\(\*
StyleBox[\"reps\",\nFontSlant->\"Italic\"]\)] gives the graphs of three-pt invariant tensors used to build InvariantFourPts[\!\(\*
StyleBox[\"reps\",\nFontSlant->\"Italic\"]\)].";

ExpansionComponents::usage = "ExpansionComponents[\!\(\*
StyleBox[\"expr\",\nFontSlant->\"Italic\"]\)] takes a tensor expression consisting of global symmetry invariants and spacetime structures, and expands both into a complete basis to give a highly compressed set of components.";

KinematicPrefactor::usage = "KinematicPrefactor[\!\(\*
StyleBox[\"dims\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"spins\",\nFontSlant->\"Italic\"]\)] gives the kinematic prefactor for a correlator of operators with scaling dimensions \!\(\*
StyleBox[\"dims\",\nFontSlant->\"Italic\"]\) and spins \!\(\*
StyleBox[\"spins\",\nFontSlant->\"Italic\"]\).";

Structure::usage = "Structure[\!\(\*
StyleBox[\"symbol\",\nFontSlant->\"Italic\"]\)] is a head for spacetime structures."; 1

SpacetimeStructures::usage = "SpacetimeStructures[\!\(\*
StyleBox[\"dims\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"spins\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"derivatives\",\nFontSlant->\"Italic\"]\)] gives a list of spacetime structures for operators with scaling dimensions \!\(\*
StyleBox[\"dims\",\nFontSlant->\"Italic\"]\), spins \!\(\*
StyleBox[\"spins\",\nFontSlant->\"Italic\"]\), and derivatives acting on fields at indices \!\(\*
StyleBox[\"derivatives\",\nFontSlant->\"Italic\"]\).";
SpacetimeStructure::usage = "SpacetimeStructure[\!\(\*
StyleBox[\"dims\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"spins\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"derivatives\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"derivType\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"permutation\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"index\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"]\",\nFontSlant->\"Italic\"]\) is the name of the spacetime structure for operators...";

Correlator::usage = "Correlator[\!\(\*
StyleBox[\"expr\",\nFontSlant->\"Italic\"]\)] represents the VEV of \!\(\*
StyleBox[\"expr\",\nFontSlant->\"Italic\"]\), with constant tensors factored out.";
ExpandCorrelator::usage = "ExpandCorrelator[\!\(\*
StyleBox[\"expr\",\nFontSlant->\"Italic\"]\)] expands correlators in \!\(\*
StyleBox[\"expr\",\nFontSlant->\"Italic\"]\) in terms of global symmetry invariants and spacetime structures.";

SUSYRules::usage = "SUSYRules[] gives the coefficients of the SUSY variations.";

DisplaySUSYVariations::usage = "DisplaySUSYVariations[] gives a table showing the SUSY algebra.";

\[Epsilon]::usage = "\[Epsilon][\!\(\*
StyleBox[\"modifiers\",\nFontSlant->\"Italic\"]\)] gives an \[Epsilon]-tensor, e.g., \[Epsilon][Upper, Dot] gives \!\(\*SuperscriptBox[\(\[Epsilon]\), \(\*OverscriptBox[\(\[Alpha]\), \(.\)] \*OverscriptBox[\(\[Beta]\), \(.\)]\)]\)";
\[Sigma]::usage = "\[Sigma][\!\(\*
StyleBox[\"modifiers\",\nFontSlant->\"Italic\"]\)] gives a \[Sigma]-tensor, e.g., \[Sigma][Bar] gives \!\(\*SubscriptBox[OverscriptBox[\(\[Sigma]\), \(_\)], \(\[Mu] \*OverscriptBox[\(\[Alpha]\), \(.\)] \[Alpha]\)]\)";
\[Eta]::usage = "\[Eta][\!\(\*
StyleBox[\"modifiers\",\nFontSlant->\"Italic\"]\)] gives an \[Eta]-tensor, e.g., \[Eta][Upper] gives \!\(\*SuperscriptBox[\(\[Eta]\), \(\[Mu]\[Nu]\)]\)";

Upper::usage = "Upper is a modifier for \[Epsilon], \[Sigma], or \[Eta] tensors";
Lower::usage = "Lower is a modifier for \[Epsilon], \[Sigma], or \[Eta] tensors";
Defect::usage = "Defect is a modifier for \[Epsilon] or \[Eta] tensors";
Transverse::usage = "Transverse is a modifier for \[Epsilon] or \[Eta] tensors";
Bar::usage = "Bar is a modifier for \[Sigma] tensors";
NoBar::usage = "NoBar is a modifier for \[Sigma] tensors";
Bare::usage = "Bar is a modifier for \[Sigma] tensors";
Vector::usage = "Vector is a modifier for \[Sigma] tensors";

SpacetimeStructureExpressions::usage = "SpacetimeStructureExpressions[\!\(\*
StyleBox[\"spins\",\nFontSlant->\"Italic\"]\)] gives a list of symbolic expressions for the normalized spacetime structures with spins \!\(\*
StyleBox[\"spins\",\nFontSlant->\"Italic\"]\).";

GlobalInvariant::usage = "GlobalInvariant[\!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)] labels the \*
StyleBox[\(\!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"th\",\nFontSlant->\"Plain\"]\)\)]\!\(\*
StyleBox[\" \",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\"of\",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\"a\",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\"set\",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\"of\",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\"R\",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\"-\",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\"invariant\",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\"tensors\",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\".\",\nFontSlant->\"Plain\"]\)";
FourPtGlobalInvariant::usage = "FourPtGlobalInvariant[{\!\(\*
StyleBox[\"r1\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"r2\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"r3\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"r4\",\nFontSlant->\"Italic\"]\)}, \!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"]\",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\"gives\",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\"the\",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Plain\"]\)\*
StyleBox[\(\!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"th\",\nFontSlant->\"Plain\"]\)\)]\!\(\*
StyleBox[\" \",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\"invariant\",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\"tensor\",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\"in\",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\"reps\",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\"{\",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\"r1\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"r2\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"r3\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"r4\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"}\",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\".\",\nFontSlant->\"Plain\"]\)";

QTensor::usage = "QTensor[] gives the tensor of supercharges.";

u::usage = "u[{\!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"j\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"k\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"l\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"}\",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\"]\",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\"is\",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\"the\",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\"cross\",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\"-\",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\"ratio\",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\"u\",\nFontSlant->\"Italic\"]\) with coordinates in the order {\!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"j\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"k\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"l\",\nFontSlant->\"Italic\"]\)}.";
v::usage = "v[{\!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"j\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"k\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"l\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"}\",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\"]\",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\"is\",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\"the\",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\"cross\",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\"-\",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\"ratio\",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Plain\"]\)v with coordinates in the order {\!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"j\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"k\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"l\",\nFontSlant->\"Italic\"]\)}.";

DeclareAlgebra::usage = "DeclareAlgebra[] computes ansatze for SUSY variations and sets the (anti)commutators between QTensor[] and the multiplet appropriately.";
DeclareArbitraryFunction::usage = "DeclareArbitraryFunction[\!\(\*
StyleBox[\"head\",\nFontSlant->\"Italic\"]\)] declares that \!\(\*
StyleBox[\"head\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"[\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"u\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"v\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"]\",\nFontSlant->\"Italic\"]\) is an arbitrary function appearing in solutions of Ward identities.";
SolvedCorrelators::usage = "SolvedCorrelators[] gives a list of explicit coefficient functions in correlators.";
SolveWard::usage = "SolveWard[\!\(\*
StyleBox[\"ops\",\nFontSlant->\"Italic\"]\)] solves the Ward identity obtained by acting with a SUSY generator on the correlator of \!\(\*
StyleBox[\"ops\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\".\",\nFontSlant->\"Italic\"]\)";
DeclareCrossingRule::usage = "DeclareCrossingRule[\!\(\*
StyleBox[\"cross\",\nFontSlant->\"Italic\"]\), \!\(\*
StyleBox[\"rhs\",\nFontSlant->\"Italic\"]\)] declares that the expression \!\(\*
StyleBox[\"cross\",\nFontSlant->\"Italic\"]\) is equal to \!\(\*
StyleBox[\"rhs\",\nFontSlant->\"Italic\"]\).";
CrossingSimplify::usage = "CrossingSimplify[\!\(\*
StyleBox[\"expr\",\nFontSlant->\"Italic\"]\)] simplifies \!\(\*
StyleBox[\"expr\",\nFontSlant->\"Italic\"]\) using rules declared with DeclareCrossingRule.";
AddSolutions::usage = "AddSolutions[\!\(\*
StyleBox[\"soln\",\nFontSlant->\"Italic\"]\)] adds \!\(\*
StyleBox[\"soln\",\nFontSlant->\"Italic\"]\) to the list of solved correlators.";
WardEquations::usage = "WardEquations[\!\(\*
StyleBox[\"fields\",\nFontSlant->\"Italic\"]\)] gives a list of equations obtained by acting with a supersymmetry generator on the correlator of \!\(\*
StyleBox[\"fields\",\nFontSlant->\"Italic\"]\).";

TreeInvariant::usage = "TreeInvariant[\!\(\*
StyleBox[\"edges\",\nFontSlant->\"Italic\"]\)] represents a tree diagram for a four-point R-invariant.";
LoopInvariant::usage = "LoopInvariant[\!\(\*
StyleBox[\"edges\",\nFontSlant->\"Italic\"]\)] represents a loop diagram for a four-point R-invariant.";
Internal::usage = "Internal[\!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)] represents an internal vertex in an R-invariant diagram.";
External::usage = "External[\!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)] represents an external vertex in an R-invariant diagram.";

SetTwoPtGlobalInvariant::usage = "SetTwoPtGlobalInvariant[\!\(\*
StyleBox[\"r1\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"r2\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"inv\",\nFontSlant->\"Italic\"]\)] sets the two-point R-invariant \!\(\*SuperscriptBox[\(\[Delta]\), 
StyleBox[
RowBox[{\"r1\", \",\", \" \", \"r2\"}],\nFontSlant->\"Italic\"]]\) to \!\(\*
StyleBox[\"inv\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\".\",\nFontSlant->\"Italic\"]\)"
SetThreePtGlobalInvariant::usage = "SetThreePtGlobalInvariant[\!\(\*
StyleBox[\"r1\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"r2\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"r3\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"inv\",\nFontSlant->\"Italic\"]\)] sets the three-point R-invariant \!\(\*SuperscriptBox[\(C\), 
StyleBox[
RowBox[{\"r1\", \",\", \" \", \"r2\", \",\", \" \", \"r3\"}],\nFontSlant->\"Italic\"]]\) to \!\(\*
StyleBox[\"inv\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\".\",\nFontSlant->\"Italic\"]\)"

SetTwoPtDefectGlobalInvariant::usage = "SetTwoPtDefectGlobalInvariant[{\!\(\*
StyleBox[\"r1\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\"p1\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"}\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"{\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"r2\",\nFontSlant->\"Italic\"]\), \!\(\*
StyleBox[\"p2\",\nFontSlant->\"Italic\"]\)}, \!\(\*
StyleBox[\"mat\",\nFontSlant->\"Italic\"]\)] sets the two-point R-invariant \!\(\*SuperscriptBox[\(\[Delta]\), \(\*
StyleBox[\"r1\",\nFontSlant->\"Italic\"] \((\*
StyleBox[\"p1\",\nFontSlant->\"Italic\"])\), \*
StyleBox[\"r2\",\nFontSlant->\"Italic\"] \((\*
StyleBox[\"p2\",\nFontSlant->\"Italic\"])\)\)]\) to \!\(\*
StyleBox[\"mat\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\".\",\nFontSlant->\"Italic\"]\)"
SetThreePtDefectGlobalInvariant::usage = "SetThreePtDefectGlobalInvariant[{\!\(\*
StyleBox[\"r1\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Plain\"]\)\!\(\*
StyleBox[\"p1\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"}\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"{\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"r2\",\nFontSlant->\"Italic\"]\), \!\(\*
StyleBox[\"p2\",\nFontSlant->\"Italic\"]\)}, \!\(\*
StyleBox[\"{\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"r3\",\nFontSlant->\"Italic\"]\), \!\(\*
StyleBox[\"p3\",\nFontSlant->\"Italic\"]\)}, \!\(\*
StyleBox[\"mat\",\nFontSlant->\"Italic\"]\)] sets the three-point R-invariant \!\(\*SuperscriptBox[\(C\), \(\*
StyleBox[\"r1\",\nFontSlant->\"Italic\"] \((\*
StyleBox[\"p1\",\nFontSlant->\"Italic\"])\), \*
StyleBox[\"r2\",\nFontSlant->\"Italic\"] \((\*
StyleBox[\"p2\",\nFontSlant->\"Italic\"])\), \*
StyleBox[\"r3\",\nFontSlant->\"Italic\"] \((\*
StyleBox[\"p3\",\nFontSlant->\"Italic\"])\)\)]\) to \!\(\*
StyleBox[\"mat\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\".\",\nFontSlant->\"Italic\"]\)"

ConformalCheck::usage = "ConformalCheck[\!\(\*
StyleBox[\"t\",\nFontSlant->\"Italic\"]\)] gives an expression for a special conformal generator \!\(\*SubscriptBox[\(K\), \(\[Mu]\)]\) acting on \!\(\*
StyleBox[\"t\",\nFontSlant->\"Italic\"]\), which should vanish if \!\(\*
StyleBox[\"t\",\nFontSlant->\"Italic\"]\) is a conformally-invariant spacetime structure.";

RepWithMultiplicity::usage = "RepWithMultiplicity[\!\(\*
StyleBox[\"rep\",\nFontSlant->\"Italic\"]\),\!\(\*
StyleBox[\"n\",\nFontSlant->\"Italic\"]\)] denotes the \*
StyleBox[\(\!\(\*
StyleBox[\"n\",\nFontSlant->\"Italic\"]\)th\)] copy of \!\(\*
StyleBox[\"rep\",\nFontSlant->\"Italic\"]\) appearing in the decomposition of some global symmetry representation into representations of the remnant global symmetry in the presence of a defect."

ExportResults::usage = "ExportResults[\!\(\*
StyleBox[\"file\",\nFontSlant->\"Italic\"]\)] generates a notebook containing all correlators and basis functions and exports it to \!\(\*
StyleBox[\"file\",\nFontSlant->\"Italic\"]\).";

\[Lambda]::usage = "\[Lambda][\!\(\*
StyleBox[\"ops\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"i\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\",\",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\" \",\nFontSlant->\"Italic\"]\)\!\(\*
StyleBox[\"j\",\nFontSlant->\"Italic\"]\)] is an unknown constant appearing in three-point functions.";


EndPackage[]
