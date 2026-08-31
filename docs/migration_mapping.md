# SSIS-to-Azure Migration Mapping
This is a future enhancement for this repository. Typical mappings include:

| Legacy SSIS | Azure implementation |
|---|---|
| OLE DB Source | ADF linked service + dataset |
| Data Flow Task | ADF Mapping Data Flow / SQL |
| Lookup | ADF Lookup / SQL join |
| Derived Column | Mapping Data Flow / SQL |
| Conditional Split | Mapping Data Flow / If Condition |
| Variables | ADF parameters/variables |
| SSIS schedule | ADF trigger |
| SQL Server target | Azure SQL / ADLS Gen2 |
