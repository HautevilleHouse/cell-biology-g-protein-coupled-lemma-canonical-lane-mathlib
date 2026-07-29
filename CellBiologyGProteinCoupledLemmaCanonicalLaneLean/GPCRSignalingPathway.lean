namespace HautevilleHouse
namespace CellBiologyGProteinCoupledLemmaCanonicalLaneLean

structure GPCRPathwayPackage where
  ligand : Type
  receptor : Type
  gProtein : Type
  effector : Type
  ligandBindingDomain : Prop
  receptorActivationDomain : Prop
  gProteinDissociationDomain : Prop
  effectorActivationDomain : Prop
  signalAmplification : Prop

structure GPCRPathwayEvidence (P : GPCRPathwayPackage) where
  ligandBindingDomainClosed : P.ligandBindingDomain
  receptorActivationDomainClosed : P.receptorActivationDomain
  gProteinDissociationDomainClosed : P.gProteinDissociationDomain
  effectorActivationDomainClosed : P.effectorActivationDomain
  signalAmplificationClosed : P.signalAmplification

def GPCRPathwayClosed (P : GPCRPathwayPackage) : Prop :=
  P.ligandBindingDomain ∧ P.receptorActivationDomain ∧
  P.gProteinDissociationDomain ∧ P.effectorActivationDomain ∧
  P.signalAmplification

theorem gpcr_pathway_closed_from_evidence (P : GPCRPathwayPackage) (E : GPCRPathwayEvidence P) :
    GPCRPathwayClosed P :=
  by
    exact And.intro E.ligandBindingDomainClosed
      (And.intro E.receptorActivationDomainClosed
        (And.intro E.gProteinDissociationDomainClosed
          (And.intro E.effectorActivationDomainClosed
            E.signalAmplificationClosed)))

end CellBiologyGProteinCoupledLemmaCanonicalLaneLean
end HautevilleHouse