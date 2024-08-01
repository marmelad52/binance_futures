enum Side {
  BUY,
  SELL,
}

extension SideExt on Side {
  String toStr() => name;
}

enum PositionSide {
  LONG,
  SHORT,
  BOTH,
}

extension PosSideExt on PositionSide {
  String toStr() => name;
}

enum OrderType {
  LIMIT,
  MARKET,
  STOP,
  STOP_MARKET,
  TAKE_PROFIT,
  TAKE_PROFIT_MARKET,
  TRAILING_STOP_MARKET,
  LIQUIDATION,
}

extension OrderTypeExt on OrderType {
  String toStr() => name;
}

enum Interval {
  INTERVAL_1m,
  INTERVAL_3m,
  INTERVAL_5m,
  INTERVAL_15m,
  INTERVAL_30m,
  INTERVAL_1h,
  INTERVAL_2h,
  INTERVAL_4h,
  INTERVAL_6h,
  INTERVAL_8h,
  INTERVAL_12h,
  INTERVAL_1d,
  INTERVAL_3d,
  INTERVAL_1w,
  INTERVAL_1M,
}

extension IntervalExt on Interval {
  String toStr() => name.split("_").last;
}

enum OrderStatus {
  NEW,
  PARTIALLY_FILLED,
  FILLED,
  CANCELED,
  REJECTED,
  EXPIRED,
  NEW_INSURANCE,
  NEW_ADL,
}

extension OrderStatusExt on OrderStatus {
  String toStr() => name;
}

enum ExecutionType {
  NEW,
  CANCELED,
  CALCULATED,
  EXPIRED,
  TRADE,
}

extension ExecutionTypeExt on ExecutionType {
  String toStr() => name;
}

enum TimeInForce {
  GTC,
  IOC,
  FOK,
  GTX,
}

extension TimeInForceExt on TimeInForce {
  String toStr() => name;
}

extension EnumExt on String {
  Side toSideEnum() => Side.values.firstWhere((s) => s.name == this);
  PositionSide toPositionSideEnum() =>
      PositionSide.values.firstWhere((s) => s.name == this);
  OrderType toOrderTypeEnum() =>
      OrderType.values.firstWhere((s) => s.name == this);
  ExecutionType toExecutionTypeEnum() =>
      ExecutionType.values.firstWhere((s) => s.name == this);
  OrderStatus toOrderStatusEnum() =>
      OrderStatus.values.firstWhere((s) => s.name == this);
  Interval toIntervalEnum() => Interval.values
      .firstWhere((s) => s.name.split("_").last == this);
  TimeInForce toTimeInForceEnum() =>
      TimeInForce.values.firstWhere((s) => s.name == this);
}
