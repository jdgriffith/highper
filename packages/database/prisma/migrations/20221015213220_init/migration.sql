-- CreateTable
CREATE TABLE "accounts" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "account_id" TEXT,
    "market_value" DECIMAL(13,2),
    "buying_power" DECIMAL(13,2),
    "cash" DECIMAL(13,2),
    "currency" TEXT NOT NULL,
    "daytrade_count" INTEGER NOT NULL DEFAULT 0,
    "daytrade_buying_power" DECIMAL(13,2),
    "regulation_t_buying_power" DECIMAL(13,2),
    "initial_margin" DECIMAL(13,2),
    "last_maintenance_margin" DECIMAL(13,2),
    "long_market_value" DECIMAL(13,2),
    "short_market_value" DECIMAL(13,2),
    "maintenance_margin" DECIMAL(13,2),
    "multiplier" DECIMAL(13,2),
    "sma" DECIMAL(13,2),
    "status" TEXT,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),

    CONSTRAINT "PK_accounts" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ameritrade_events" (
    "id" TEXT NOT NULL,
    "message" JSONB NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),

    CONSTRAINT "PK_ameritrade_events" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ameritrade_tokens" (
    "id" SERIAL NOT NULL,
    "data" JSONB NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),

    CONSTRAINT "PK_ameritrade_tokens" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "back_testing" (
    "id" TEXT NOT NULL,
    "strategy" TEXT NOT NULL,
    "strategy_parameters" JSONB,
    "start_date" TIMESTAMPTZ(6) NOT NULL,
    "end_date" TIMESTAMPTZ(6) NOT NULL,
    "result_log" TEXT,
    "margin_percentage" DECIMAL(5,2) NOT NULL,
    "average_interest_rate" DECIMAL(10,4) NOT NULL,
    "final_balance" DECIMAL(20,4) NOT NULL,
    "profits" DECIMAL(20,4) NOT NULL,
    "losses" DECIMAL(20,4) NOT NULL,
    "highest_interest_day" DECIMAL(10,4) NOT NULL,
    "lowest_interest_day" DECIMAL(10,4) NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),
    "code" TEXT,
    "unrealized_profit" DECIMAL,

    CONSTRAINT "PK_back_testing" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "exchanges" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT,
    "asset_class" TEXT,
    "locale" TEXT,
    "acronym" TEXT,
    "mic" TEXT,
    "operating_mic" TEXT,
    "participant_id" TEXT,
    "url" TEXT,

    CONSTRAINT "PK_exchanges" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "migrations" (
    "id" SERIAL NOT NULL,
    "timestamp" BIGINT NOT NULL,
    "name" VARCHAR NOT NULL,

    CONSTRAINT "PK_migrations" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "orders" (
    "id" TEXT NOT NULL,
    "security_id" INTEGER NOT NULL,
    "strategy_name" TEXT,
    "account_id" TEXT,
    "symbol" TEXT NOT NULL,
    "name" TEXT,
    "type" TEXT NOT NULL,
    "time_in_force" TEXT NOT NULL,
    "quantity" DECIMAL(19,8) NOT NULL,
    "filled_quantity" DECIMAL(19,8) NOT NULL,
    "filled_time" TIMESTAMPTZ(6),
    "stop_price" DECIMAL(7,2),
    "limit_price" DECIMAL(7,2),
    "filled_average_price" DECIMAL(7,2),
    "status" TEXT,
    "order_type" TEXT,
    "trail_amount" DECIMAL(7,2),
    "extended_hours" BOOLEAN NOT NULL DEFAULT false,
    "submitted_at" TIMESTAMPTZ(6),
    "expired_at" TIMESTAMPTZ(6),
    "canceled_at" TIMESTAMPTZ(6),
    "failed_at" TIMESTAMPTZ(6),
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),

    CONSTRAINT "PK_orders" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "positions" (
    "id" TEXT NOT NULL,
    "price" DECIMAL(7,2) NOT NULL,
    "security_id" INTEGER NOT NULL,
    "strategy_name" TEXT,
    "name" TEXT,
    "account_id" TEXT,
    "quantity" DECIMAL(19,8) NOT NULL,
    "market_value" DECIMAL(13,2),
    "symbol" TEXT NOT NULL,
    "exchange" TEXT,
    "position_percent" DECIMAL(5,2),
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),
    "status" TEXT,
    "type" TEXT NOT NULL,
    "sell_lock" BOOLEAN NOT NULL,

    CONSTRAINT "PK_positions" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "position_orders" (
    "position_id" TEXT NOT NULL,
    "order_id" TEXT NOT NULL,
    "intent" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "position_orders_pkey" PRIMARY KEY ("position_id","order_id","intent","created_at")
);

-- CreateTable
CREATE TABLE "preferences" (
    "id" SERIAL NOT NULL,
    "single_trade_risk_level" DECIMAL,
    "all_trade_risk_level" DECIMAL,
    "single_trade_volatility_level" DECIMAL,
    "all_trade_volatility_level" DECIMAL,
    "lowest_stock_price" DECIMAL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),

    CONSTRAINT "PK_preferences" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "sector_daily" (
    "id" SERIAL NOT NULL,
    "sector_id" INTEGER NOT NULL,
    "calendar_date" TIMESTAMPTZ(6) NOT NULL,
    "realtime_return" DECIMAL(7,2) NOT NULL,
    "one_day_return" DECIMAL(7,2) NOT NULL,
    "five_day_return" DECIMAL(7,2) NOT NULL,
    "one_month_return" DECIMAL(7,2) NOT NULL,
    "three_month_return" DECIMAL(7,2) NOT NULL,
    "one_year_return" DECIMAL(7,2) NOT NULL,
    "three_year_return" DECIMAL(7,2) NOT NULL,
    "five_year_return" DECIMAL(7,2) NOT NULL,
    "ten_year_return" DECIMAL(7,2) NOT NULL,
    "ytd_return" DECIMAL(7,2) NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),

    CONSTRAINT "PK_sector_daily" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "sectors" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),

    CONSTRAINT "PK_sectors" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "securities" (
    "id" SERIAL NOT NULL,
    "name" TEXT,
    "description" TEXT,
    "symbol" TEXT,
    "cusip" TEXT,
    "exchange" TEXT,
    "security_type_id" INTEGER,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),
    "market_cap" DECIMAL,
    "company_name" TEXT,
    "sector" TEXT,
    "active" BOOLEAN NOT NULL DEFAULT true,
    "delisted_calendar_date" TIMESTAMPTZ(6),
    "company_description" TEXT,
    "url" TEXT,
    "shares_outstanding" INTEGER,
    "number_of_employees" INTEGER,

    CONSTRAINT "PK_securities" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "security_daily" (
    "id" SERIAL NOT NULL,
    "security_id" INTEGER NOT NULL,
    "open" DECIMAL(13,2),
    "high" DECIMAL(13,2),
    "low" DECIMAL(13,2),
    "close" DECIMAL(13,2),
    "adjusted_close" DECIMAL(13,2),
    "market_cap" DECIMAL(16,4),
    "enterprise_value" DECIMAL(16,4),
    "pe_ratio" DECIMAL(7,2),
    "pb_ratio" DECIMAL(7,2),
    "trailing_one_year_peg_ratio" DECIMAL(7,2),
    "dividend_amount" DECIMAL(7,2),
    "split_coefficient" DECIMAL(7,2),
    "volume" INTEGER NOT NULL,
    "adjusted" BOOLEAN NOT NULL DEFAULT false,
    "calendar_date" TIMESTAMPTZ(6) NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),

    CONSTRAINT "PK_security_daily" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "security_dividends" (
    "id" SERIAL NOT NULL,
    "security_id" INTEGER NOT NULL,
    "expiration_date" TIMESTAMPTZ(6),
    "payment_date" TIMESTAMPTZ(6) NOT NULL,
    "record_date" TIMESTAMPTZ(6) NOT NULL,
    "amount" DECIMAL(13,2) NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),

    CONSTRAINT "PK_security_dividends" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "security_index_types" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT,

    CONSTRAINT "PK_security_index_types" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "security_minutely" (
    "security_id" INTEGER NOT NULL,
    "calendar_date" TIMESTAMPTZ(6) NOT NULL,
    "minute" TEXT,
    "label" TEXT,
    "open" DECIMAL(13,2),
    "close" DECIMAL(13,2),
    "high" DECIMAL(13,2),
    "low" DECIMAL(13,2),
    "average" DECIMAL(13,2),
    "volume" BIGINT,
    "notional" DECIMAL(13,2),
    "number_of_trades" BIGINT,
    "market_high" DECIMAL(13,2),
    "market_low" DECIMAL(13,2),
    "market_average" DECIMAL(13,2),
    "market_volume" BIGINT,
    "market_notional" DECIMAL(13,2),
    "market_number_of_trades" BIGINT,
    "market_open" DECIMAL(13,2),
    "market_close" DECIMAL(13,2),
    "change_over_time" DECIMAL(40,20),
    "market_change_over_time" DECIMAL(40,20),
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),
    "date_time" TIMESTAMPTZ(6),

    CONSTRAINT "PK_security_minutely" PRIMARY KEY ("security_id","calendar_date")
);

-- CreateTable
CREATE TABLE "security_secondly" (
    "calendar_date" TIMESTAMPTZ(6) NOT NULL,
    "security_id" INTEGER NOT NULL,
    "open" DECIMAL(13,2),
    "close" DECIMAL(13,2),
    "high" DECIMAL(13,2),
    "low" DECIMAL(13,2),
    "average" DECIMAL(13,2),
    "volume" BIGINT,
    "notional" DECIMAL(13,2),
    "number_of_trades" BIGINT,
    "change_over_time" DECIMAL(40,20),
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),

    CONSTRAINT "PK_security_secondly" PRIMARY KEY ("security_id","calendar_date")
);

-- CreateTable
CREATE TABLE "security_splits" (
    "id" SERIAL NOT NULL,
    "security_id" INTEGER NOT NULL,
    "payment_date" TIMESTAMPTZ(6) NOT NULL,
    "ratio" DECIMAL(5,5) NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3),
    "exercised_date" TIMESTAMPTZ(6) NOT NULL,
    "declared_date" TIMESTAMPTZ(6) NOT NULL,
    "to_factor" INTEGER NOT NULL,
    "from_factor" INTEGER NOT NULL,
    "description" TEXT,

    CONSTRAINT "PK_security_splits" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "security_types" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT,

    CONSTRAINT "PK_security_types" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "strategies" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT,

    CONSTRAINT "PK_strategies" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "strategy_parameters" (
    "id" SERIAL NOT NULL,
    "strategy_id" INTEGER NOT NULL,
    "key" TEXT NOT NULL,
    "value" TEXT NOT NULL,
    "data_type" TEXT,

    CONSTRAINT "PK_strategy_parameters" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "trades" (
    "id" SERIAL NOT NULL,
    "security_id" INTEGER NOT NULL,
    "exchange_id" INTEGER NOT NULL,
    "trade_date" TIMESTAMPTZ(6) NOT NULL,
    "price" DECIMAL(13,5) NOT NULL,
    "quantity" DECIMAL(13,6) NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "PK_trades" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "quotes" (
    "id" SERIAL NOT NULL,
    "security_id" INTEGER NOT NULL,
    "bid_exchange_id" INTEGER NOT NULL,
    "ask_exchange_id" INTEGER NOT NULL,
    "bid_price" DECIMAL(13,5),
    "ask_price" DECIMAL(13,5),
    "bid_size" DECIMAL(13,6),
    "ask_size" DECIMAL(13,6),
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "PK_quotes" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "conditions" (
    "id" SERIAL NOT NULL,
    "trade_id" INTEGER NOT NULL,
    "quote_id" INTEGER NOT NULL,
    "condition" TEXT NOT NULL,
    "modifier" INTEGER NOT NULL,
    "sip_mapping" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "PK_trade_conditions" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "security_symbol_idx" ON "securities"("symbol");

-- CreateIndex
CREATE INDEX "symbol_market_cap_idx" ON "securities"("symbol", "market_cap");

-- CreateIndex
CREATE INDEX "security_daily_security_id_idx" ON "security_daily"("security_id");

-- CreateIndex
CREATE UNIQUE INDEX "security_daily_security_id_calendar_date_unique_idx" ON "security_daily"("security_id", "calendar_date");

-- CreateIndex
CREATE INDEX "security_minutely_calendar_date_idx" ON "security_minutely"("calendar_date");

-- CreateIndex
CREATE UNIQUE INDEX "security_minutely_security_id_calendar_date_unique_idx" ON "security_minutely"("security_id", "calendar_date");

-- CreateIndex
CREATE INDEX "security_secondly_calendar_date_idx1" ON "security_secondly"("calendar_date" DESC);

-- CreateIndex
CREATE UNIQUE INDEX "security_secondly_security_id_calendar_date_unique_idx" ON "security_secondly"("security_id", "calendar_date");

-- AddForeignKey
ALTER TABLE "orders" ADD CONSTRAINT "FK_accounts_orders" FOREIGN KEY ("account_id") REFERENCES "accounts"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "positions" ADD CONSTRAINT "FK_accounts_positions" FOREIGN KEY ("account_id") REFERENCES "accounts"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "position_orders" ADD CONSTRAINT "FK_positions_position_orders" FOREIGN KEY ("position_id") REFERENCES "positions"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "position_orders" ADD CONSTRAINT "FK_orders_position_orders" FOREIGN KEY ("order_id") REFERENCES "orders"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "sector_daily" ADD CONSTRAINT "FK_sectors_sector_daily" FOREIGN KEY ("sector_id") REFERENCES "sectors"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "security_daily" ADD CONSTRAINT "FK_securities_security_daily" FOREIGN KEY ("security_id") REFERENCES "securities"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "security_dividends" ADD CONSTRAINT "FK_securities_security_dividends" FOREIGN KEY ("security_id") REFERENCES "securities"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "security_minutely" ADD CONSTRAINT "FK_securities_security_minutely" FOREIGN KEY ("security_id") REFERENCES "securities"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "security_secondly" ADD CONSTRAINT "FK_securities_security_secondly" FOREIGN KEY ("security_id") REFERENCES "securities"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "security_splits" ADD CONSTRAINT "FK_securities_security_splits" FOREIGN KEY ("security_id") REFERENCES "securities"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "strategy_parameters" ADD CONSTRAINT "FK_strategies_strategy_parameters" FOREIGN KEY ("strategy_id") REFERENCES "strategies"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "trades" ADD CONSTRAINT "FK_trades_exchanges" FOREIGN KEY ("exchange_id") REFERENCES "exchanges"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "trades" ADD CONSTRAINT "FK_trades_security_id" FOREIGN KEY ("security_id") REFERENCES "securities"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "quotes" ADD CONSTRAINT "FK_quotes_ask_exchanges" FOREIGN KEY ("ask_exchange_id") REFERENCES "exchanges"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "quotes" ADD CONSTRAINT "FK_quotes_bid_exchanges" FOREIGN KEY ("bid_exchange_id") REFERENCES "exchanges"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "quotes" ADD CONSTRAINT "FK_quotes_security_id" FOREIGN KEY ("security_id") REFERENCES "securities"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "conditions" ADD CONSTRAINT "FK_trades_conditions" FOREIGN KEY ("trade_id") REFERENCES "trades"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "conditions" ADD CONSTRAINT "FK_quotes_conditions" FOREIGN KEY ("quote_id") REFERENCES "quotes"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
