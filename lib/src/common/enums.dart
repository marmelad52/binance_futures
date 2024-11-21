enum Side {
  BUY,
  SELL,
  NONE, // Добавлено значение NONE
}

extension SideExt on Side {
  String toStr() => name;
}

enum PositionSide {
  LONG,
  SHORT,
  BOTH,
  NONE, // Добавлено значение NONE
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
  NONE, // Добавлено значение NONE
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
  NONE, // Добавлено значение NONE
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
  NONE, // Добавлено значение NONE
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
  NONE, // Добавлено значение NONE
}

extension ExecutionTypeExt on ExecutionType {
  String toStr() => name;
}

enum TimeInForce {
  GTC,
  IOC,
  FOK,
  GTX,
  GTE_GTC,
  NONE, // Добавлено значение NONE
}

extension TimeInForceExt on TimeInForce {
  String toStr() => name;
}

extension EnumExt on String {
  Side toSideEnum() => Side.values.firstWhere(
        (s) => s.name == this,
        orElse: () => Side.NONE,
      );
  PositionSide toPositionSideEnum() => PositionSide.values.firstWhere(
        (s) => s.name == this,
        orElse: () => PositionSide.NONE,
      );
  OrderType toOrderTypeEnum() => OrderType.values.firstWhere(
        (s) => s.name == this,
        orElse: () => OrderType.NONE,
      );
  ExecutionType toExecutionTypeEnum() => ExecutionType.values.firstWhere(
        (s) => s.name == this,
        orElse: () => ExecutionType.NONE,
      );
  OrderStatus toOrderStatusEnum() => OrderStatus.values.firstWhere(
        (s) => s.name == this,
        orElse: () => OrderStatus.NONE,
      );
  Interval toIntervalEnum() => Interval.values.firstWhere(
        (s) => s.name.split("_").last == this,
        orElse: () => Interval.NONE,
      );
  TimeInForce toTimeInForceEnum() => TimeInForce.values.firstWhere(
        (s) => s.name == this,
        orElse: () => TimeInForce.NONE,
      );
}
