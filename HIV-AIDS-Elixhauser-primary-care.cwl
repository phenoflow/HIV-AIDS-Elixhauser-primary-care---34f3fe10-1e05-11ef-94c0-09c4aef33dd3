cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  hiv-aids-elixhauser-primary-care---primary:
    run: hiv-aids-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  viral-hiv-aids-elixhauser-primary-care---primary:
    run: viral-hiv-aids-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: hiv-aids-elixhauser-primary-care---primary/output
  hiv-aids-elixhauser-primary-care-deficiency---primary:
    run: hiv-aids-elixhauser-primary-care-deficiency---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: viral-hiv-aids-elixhauser-primary-care---primary/output
  multiple-hiv-aids-elixhauser-primary-care---primary:
    run: multiple-hiv-aids-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: hiv-aids-elixhauser-primary-care-deficiency---primary/output
  hiv-aids-elixhauser-primary-care-neoplasm---primary:
    run: hiv-aids-elixhauser-primary-care-neoplasm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: multiple-hiv-aids-elixhauser-primary-care---primary/output
  asymptomatic-hiv-aids-elixhauser-primary-care---primary:
    run: asymptomatic-hiv-aids-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: hiv-aids-elixhauser-primary-care-neoplasm---primary/output
  hiv-aids-elixhauser-primary-care-unspcf---primary:
    run: hiv-aids-elixhauser-primary-care-unspcf---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: asymptomatic-hiv-aids-elixhauser-primary-care---primary/output
  hiv-aids-elixhauser-primary-care-lymphoma---primary:
    run: hiv-aids-elixhauser-primary-care-lymphoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: hiv-aids-elixhauser-primary-care-unspcf---primary/output
  hiv-aids-elixhauser-primary-care-unspecified---primary:
    run: hiv-aids-elixhauser-primary-care-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: hiv-aids-elixhauser-primary-care-lymphoma---primary/output
  other-hiv-aids-elixhauser-primary-care---primary:
    run: other-hiv-aids-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: hiv-aids-elixhauser-primary-care-unspecified---primary/output
  hiv-aids-elixhauser-primary-care-resulting---primary:
    run: hiv-aids-elixhauser-primary-care-resulting---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: other-hiv-aids-elixhauser-primary-care---primary/output
  hiv-aids-elixhauser-primary-care-abnormsnec---primary:
    run: hiv-aids-elixhauser-primary-care-abnormsnec---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: hiv-aids-elixhauser-primary-care-resulting---primary/output
  hiv-aids-elixhauser-primary-care-nurse---primary:
    run: hiv-aids-elixhauser-primary-care-nurse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: hiv-aids-elixhauser-primary-care-abnormsnec---primary/output
  hiv-aids-elixhauser-primary-care-pneumonia---primary:
    run: hiv-aids-elixhauser-primary-care-pneumonia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: hiv-aids-elixhauser-primary-care-nurse---primary/output
  hiv-aids-elixhauser-primary-care-sarcoma---primary:
    run: hiv-aids-elixhauser-primary-care-sarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: hiv-aids-elixhauser-primary-care-pneumonia---primary/output
  immunologic-hiv-aids-elixhauser-primary-care---primary:
    run: immunologic-hiv-aids-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: hiv-aids-elixhauser-primary-care-sarcoma---primary/output
  aids---primary:
    run: aids---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: immunologic-hiv-aids-elixhauser-primary-care---primary/output
  parasitic-hiv-aids-elixhauser-primary-care---primary:
    run: parasitic-hiv-aids-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: aids---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: parasitic-hiv-aids-elixhauser-primary-care---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
