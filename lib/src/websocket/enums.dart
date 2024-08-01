enum ContractType {
  perpetual,
  current_quarter,
  next_quarter,
}

extension ContractTypeExt on ContractType {
  String toStr() => name;
}

extension WsEnumExt on String {
  ContractType toContractTypeEnum() =>
      ContractType.values.firstWhere((s) => s.name == this);
}
