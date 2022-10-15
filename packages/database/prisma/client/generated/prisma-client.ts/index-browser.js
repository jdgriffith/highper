
Object.defineProperty(exports, "__esModule", { value: true });

const {
  Decimal,
  objectEnumValues,
  makeStrictEnum
} = require('./runtime/index-browser')


const Prisma = {}

exports.Prisma = Prisma

/**
 * Prisma Client JS version: 4.4.0
 * Query Engine version: f352a33b70356f46311da8b00d83386dd9f145d6
 */
Prisma.prismaVersion = {
  client: "4.4.0",
  engine: "f352a33b70356f46311da8b00d83386dd9f145d6"
}

Prisma.PrismaClientKnownRequestError = () => {
  throw new Error(`PrismaClientKnownRequestError is unable to be run in the browser.
In case this error is unexpected for you, please report it in https://github.com/prisma/prisma/issues`,
)};
Prisma.PrismaClientUnknownRequestError = () => {
  throw new Error(`PrismaClientUnknownRequestError is unable to be run in the browser.
In case this error is unexpected for you, please report it in https://github.com/prisma/prisma/issues`,
)}
Prisma.PrismaClientRustPanicError = () => {
  throw new Error(`PrismaClientRustPanicError is unable to be run in the browser.
In case this error is unexpected for you, please report it in https://github.com/prisma/prisma/issues`,
)}
Prisma.PrismaClientInitializationError = () => {
  throw new Error(`PrismaClientInitializationError is unable to be run in the browser.
In case this error is unexpected for you, please report it in https://github.com/prisma/prisma/issues`,
)}
Prisma.PrismaClientValidationError = () => {
  throw new Error(`PrismaClientValidationError is unable to be run in the browser.
In case this error is unexpected for you, please report it in https://github.com/prisma/prisma/issues`,
)}
Prisma.NotFoundError = () => {
  throw new Error(`NotFoundError is unable to be run in the browser.
In case this error is unexpected for you, please report it in https://github.com/prisma/prisma/issues`,
)}
Prisma.Decimal = Decimal

/**
 * Re-export of sql-template-tag
 */
Prisma.sql = () => {
  throw new Error(`sqltag is unable to be run in the browser.
In case this error is unexpected for you, please report it in https://github.com/prisma/prisma/issues`,
)}
Prisma.empty = () => {
  throw new Error(`empty is unable to be run in the browser.
In case this error is unexpected for you, please report it in https://github.com/prisma/prisma/issues`,
)}
Prisma.join = () => {
  throw new Error(`join is unable to be run in the browser.
In case this error is unexpected for you, please report it in https://github.com/prisma/prisma/issues`,
)}
Prisma.raw = () => {
  throw new Error(`raw is unable to be run in the browser.
In case this error is unexpected for you, please report it in https://github.com/prisma/prisma/issues`,
)}
Prisma.validator = () => (val) => val

/**
 * Shorthand utilities for JSON filtering
 */
Prisma.DbNull = objectEnumValues.instances.DbNull
Prisma.JsonNull = objectEnumValues.instances.JsonNull
Prisma.AnyNull = objectEnumValues.instances.AnyNull

Prisma.NullTypes = {
  DbNull: objectEnumValues.classes.DbNull,
  JsonNull: objectEnumValues.classes.JsonNull,
  AnyNull: objectEnumValues.classes.AnyNull
}

/**
 * Enums
 */
// Based on
// https://github.com/microsoft/TypeScript/issues/3192#issuecomment-261720275
function makeEnum(x) { return x; }

exports.Prisma.AccountsScalarFieldEnum = makeEnum({
  id: 'id',
  name: 'name',
  accountId: 'accountId',
  marketValue: 'marketValue',
  buyingPower: 'buyingPower',
  cash: 'cash',
  currency: 'currency',
  daytradeCount: 'daytradeCount',
  daytradeBuyingPower: 'daytradeBuyingPower',
  regulationTBuyingPower: 'regulationTBuyingPower',
  initialMargin: 'initialMargin',
  lastMaintenanceMargin: 'lastMaintenanceMargin',
  longMarketValue: 'longMarketValue',
  shortMarketValue: 'shortMarketValue',
  maintenanceMargin: 'maintenanceMargin',
  multiplier: 'multiplier',
  sma: 'sma',
  status: 'status',
  createdAt: 'createdAt',
  updatedAt: 'updatedAt'
});

exports.Prisma.AmeritradeEventsScalarFieldEnum = makeEnum({
  id: 'id',
  message: 'message',
  createdAt: 'createdAt',
  updatedAt: 'updatedAt'
});

exports.Prisma.AmeritradeTokensScalarFieldEnum = makeEnum({
  id: 'id',
  data: 'data',
  createdAt: 'createdAt',
  updatedAt: 'updatedAt'
});

exports.Prisma.BackTestingScalarFieldEnum = makeEnum({
  id: 'id',
  strategy: 'strategy',
  strategyParameters: 'strategyParameters',
  startDate: 'startDate',
  endDate: 'endDate',
  resultLog: 'resultLog',
  marginPercentage: 'marginPercentage',
  averageInterestRate: 'averageInterestRate',
  finalBalance: 'finalBalance',
  profits: 'profits',
  losses: 'losses',
  highestInterestDay: 'highestInterestDay',
  lowestInterestDay: 'lowestInterestDay',
  createdAt: 'createdAt',
  updatedAt: 'updatedAt',
  code: 'code',
  unrealizedProfit: 'unrealizedProfit'
});

exports.Prisma.ConditionsScalarFieldEnum = makeEnum({
  id: 'id',
  tradeId: 'tradeId',
  quoteId: 'quoteId',
  condition: 'condition',
  modifier: 'modifier',
  SIPMapping: 'SIPMapping',
  createdAt: 'createdAt'
});

exports.Prisma.ExchangesScalarFieldEnum = makeEnum({
  id: 'id',
  name: 'name',
  description: 'description',
  assetClass: 'assetClass',
  locale: 'locale',
  acronym: 'acronym',
  mic: 'mic',
  operatingMic: 'operatingMic',
  participantId: 'participantId',
  url: 'url'
});

exports.Prisma.JsonNullValueFilter = makeEnum({
  DbNull: Prisma.DbNull,
  JsonNull: Prisma.JsonNull,
  AnyNull: Prisma.AnyNull
});

exports.Prisma.JsonNullValueInput = makeEnum({
  JsonNull: Prisma.JsonNull
});

exports.Prisma.MigrationsScalarFieldEnum = makeEnum({
  id: 'id',
  timestamp: 'timestamp',
  name: 'name'
});

exports.Prisma.NullableJsonNullValueInput = makeEnum({
  DbNull: Prisma.DbNull,
  JsonNull: Prisma.JsonNull
});

exports.Prisma.OrdersScalarFieldEnum = makeEnum({
  id: 'id',
  securityId: 'securityId',
  strategyName: 'strategyName',
  accountId: 'accountId',
  symbol: 'symbol',
  name: 'name',
  type: 'type',
  timeInForce: 'timeInForce',
  quantity: 'quantity',
  filledQuantity: 'filledQuantity',
  filledTime: 'filledTime',
  stopPrice: 'stopPrice',
  limitPrice: 'limitPrice',
  filledAveragePrice: 'filledAveragePrice',
  status: 'status',
  orderType: 'orderType',
  trailAmount: 'trailAmount',
  extendedHours: 'extendedHours',
  submittedAt: 'submittedAt',
  expiredAt: 'expiredAt',
  canceledAt: 'canceledAt',
  failedAt: 'failedAt',
  createdAt: 'createdAt',
  updatedAt: 'updatedAt'
});

exports.Prisma.PositionOrdersScalarFieldEnum = makeEnum({
  positionId: 'positionId',
  orderId: 'orderId',
  intent: 'intent',
  createdAt: 'createdAt'
});

exports.Prisma.PositionsScalarFieldEnum = makeEnum({
  id: 'id',
  price: 'price',
  securityId: 'securityId',
  strategyName: 'strategyName',
  name: 'name',
  accountId: 'accountId',
  quantity: 'quantity',
  marketValue: 'marketValue',
  symbol: 'symbol',
  exchange: 'exchange',
  positionPercent: 'positionPercent',
  createdAt: 'createdAt',
  updatedAt: 'updatedAt',
  status: 'status',
  type: 'type',
  sellLock: 'sellLock'
});

exports.Prisma.PreferencesScalarFieldEnum = makeEnum({
  id: 'id',
  singleTradeRiskLevel: 'singleTradeRiskLevel',
  allTradeRiskLevel: 'allTradeRiskLevel',
  singleTradeVolatilityLevel: 'singleTradeVolatilityLevel',
  allTradeVolatilityLevel: 'allTradeVolatilityLevel',
  lowestStockPrice: 'lowestStockPrice',
  createdAt: 'createdAt',
  updatedAt: 'updatedAt'
});

exports.Prisma.QueryMode = makeEnum({
  default: 'default',
  insensitive: 'insensitive'
});

exports.Prisma.QuotesScalarFieldEnum = makeEnum({
  id: 'id',
  securityId: 'securityId',
  bidExchangeId: 'bidExchangeId',
  askExchangeId: 'askExchangeId',
  bidPrice: 'bidPrice',
  askPrice: 'askPrice',
  bidSize: 'bidSize',
  askSize: 'askSize',
  createdAt: 'createdAt'
});

exports.Prisma.SectorDailyScalarFieldEnum = makeEnum({
  id: 'id',
  sectorId: 'sectorId',
  calendarDate: 'calendarDate',
  realtimeReturn: 'realtimeReturn',
  oneDayReturn: 'oneDayReturn',
  fiveDayReturn: 'fiveDayReturn',
  oneMonthReturn: 'oneMonthReturn',
  threeMonthReturn: 'threeMonthReturn',
  oneYearReturn: 'oneYearReturn',
  threeYearReturn: 'threeYearReturn',
  fiveYearReturn: 'fiveYearReturn',
  tenYearReturn: 'tenYearReturn',
  ytdReturn: 'ytdReturn',
  createdAt: 'createdAt',
  updatedAt: 'updatedAt'
});

exports.Prisma.SectorsScalarFieldEnum = makeEnum({
  id: 'id',
  name: 'name',
  createdAt: 'createdAt',
  updatedAt: 'updatedAt'
});

exports.Prisma.SecuritiesScalarFieldEnum = makeEnum({
  id: 'id',
  name: 'name',
  description: 'description',
  symbol: 'symbol',
  cusip: 'cusip',
  exchange: 'exchange',
  securityTypeId: 'securityTypeId',
  createdAt: 'createdAt',
  updatedAt: 'updatedAt',
  marketCap: 'marketCap',
  companyName: 'companyName',
  sector: 'sector',
  active: 'active',
  delistedCalendarDate: 'delistedCalendarDate',
  companyDescription: 'companyDescription',
  url: 'url',
  sharesOutstanding: 'sharesOutstanding',
  numberOfEmployees: 'numberOfEmployees'
});

exports.Prisma.SecurityDailyScalarFieldEnum = makeEnum({
  id: 'id',
  securityId: 'securityId',
  open: 'open',
  high: 'high',
  low: 'low',
  close: 'close',
  adjustedClose: 'adjustedClose',
  marketCap: 'marketCap',
  enterpriseValue: 'enterpriseValue',
  peRatio: 'peRatio',
  pbRatio: 'pbRatio',
  trailingOneYearPegRatio: 'trailingOneYearPegRatio',
  dividendAmount: 'dividendAmount',
  splitCoefficient: 'splitCoefficient',
  volume: 'volume',
  adjusted: 'adjusted',
  calendarDate: 'calendarDate',
  createdAt: 'createdAt',
  updatedAt: 'updatedAt'
});

exports.Prisma.SecurityDividendsScalarFieldEnum = makeEnum({
  id: 'id',
  securityId: 'securityId',
  expirationDate: 'expirationDate',
  paymentDate: 'paymentDate',
  recordDate: 'recordDate',
  amount: 'amount',
  createdAt: 'createdAt',
  updatedAt: 'updatedAt'
});

exports.Prisma.SecurityIndexTypesScalarFieldEnum = makeEnum({
  id: 'id',
  name: 'name',
  description: 'description'
});

exports.Prisma.SecurityMinutelyScalarFieldEnum = makeEnum({
  securityId: 'securityId',
  calendarDate: 'calendarDate',
  minute: 'minute',
  label: 'label',
  open: 'open',
  close: 'close',
  high: 'high',
  low: 'low',
  average: 'average',
  volume: 'volume',
  notional: 'notional',
  numberOfTrades: 'numberOfTrades',
  marketHigh: 'marketHigh',
  marketLow: 'marketLow',
  marketAverage: 'marketAverage',
  marketVolume: 'marketVolume',
  marketNotional: 'marketNotional',
  marketNumberOfTrades: 'marketNumberOfTrades',
  marketOpen: 'marketOpen',
  marketClose: 'marketClose',
  changeOverTime: 'changeOverTime',
  marketChangeOverTime: 'marketChangeOverTime',
  createdAt: 'createdAt',
  updatedAt: 'updatedAt',
  dateTime: 'dateTime'
});

exports.Prisma.SecuritySecondlyScalarFieldEnum = makeEnum({
  calendarDate: 'calendarDate',
  securityId: 'securityId',
  open: 'open',
  close: 'close',
  high: 'high',
  low: 'low',
  average: 'average',
  volume: 'volume',
  notional: 'notional',
  numberOfTrades: 'numberOfTrades',
  changeOverTime: 'changeOverTime',
  createdAt: 'createdAt',
  updatedAt: 'updatedAt'
});

exports.Prisma.SecuritySplitsScalarFieldEnum = makeEnum({
  id: 'id',
  securityId: 'securityId',
  paymentDate: 'paymentDate',
  ratio: 'ratio',
  createdAt: 'createdAt',
  updatedAt: 'updatedAt',
  exercisedDate: 'exercisedDate',
  declaredDate: 'declaredDate',
  toFactor: 'toFactor',
  fromFactor: 'fromFactor',
  description: 'description'
});

exports.Prisma.SecurityTypesScalarFieldEnum = makeEnum({
  id: 'id',
  name: 'name',
  description: 'description'
});

exports.Prisma.SortOrder = makeEnum({
  asc: 'asc',
  desc: 'desc'
});

exports.Prisma.StrategiesScalarFieldEnum = makeEnum({
  id: 'id',
  name: 'name',
  description: 'description'
});

exports.Prisma.StrategyParametersScalarFieldEnum = makeEnum({
  id: 'id',
  strategyId: 'strategyId',
  key: 'key',
  value: 'value',
  dataType: 'dataType'
});

exports.Prisma.TradesScalarFieldEnum = makeEnum({
  id: 'id',
  securityId: 'securityId',
  exchangeId: 'exchangeId',
  tradeDate: 'tradeDate',
  price: 'price',
  quantity: 'quantity',
  createdAt: 'createdAt'
});

exports.Prisma.TransactionIsolationLevel = makeStrictEnum({
  ReadUncommitted: 'ReadUncommitted',
  ReadCommitted: 'ReadCommitted',
  RepeatableRead: 'RepeatableRead',
  Serializable: 'Serializable'
});


exports.Prisma.ModelName = makeEnum({
  Accounts: 'Accounts',
  AmeritradeEvents: 'AmeritradeEvents',
  AmeritradeTokens: 'AmeritradeTokens',
  BackTesting: 'BackTesting',
  Exchanges: 'Exchanges',
  migrations: 'migrations',
  Orders: 'Orders',
  Positions: 'Positions',
  PositionOrders: 'PositionOrders',
  Preferences: 'Preferences',
  SectorDaily: 'SectorDaily',
  Sectors: 'Sectors',
  Securities: 'Securities',
  SecurityDaily: 'SecurityDaily',
  SecurityDividends: 'SecurityDividends',
  SecurityIndexTypes: 'SecurityIndexTypes',
  SecurityMinutely: 'SecurityMinutely',
  SecuritySecondly: 'SecuritySecondly',
  SecuritySplits: 'SecuritySplits',
  SecurityTypes: 'SecurityTypes',
  Strategies: 'Strategies',
  StrategyParameters: 'StrategyParameters',
  Trades: 'Trades',
  Quotes: 'Quotes',
  Conditions: 'Conditions'
});

/**
 * Create the Client
 */
class PrismaClient {
  constructor() {
    throw new Error(
      `PrismaClient is unable to be run in the browser.
In case this error is unexpected for you, please report it in https://github.com/prisma/prisma/issues`,
    )
  }
}
exports.PrismaClient = PrismaClient

Object.assign(exports, Prisma)
