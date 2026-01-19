CREATE TABLE category (
    id BIGSERIAL PRIMARY KEY,
    user_id UUID NOT NULL,
    name VARCHAR(50) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW()

);

CREATE TABLE expense (
    id BIGSERIAL PRIMARY KEY,
    user_id UUID NOT NULL,
    category_id BIGINT NOT NULL,
    amount NUMERIC(10, 2) NOT NULL,
    currency CHAR(3) NOT NULL,
    merchant VARCHAR(120) NOT NULL,
    expense_date DATE NOT NULL,
    note VARCHAR(255) NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    FOREIGN KEY (category_id) REFERENCES category(id)
);

CREATE INDEX idx_expenses_user_date ON expense(user_id, created_at);
CREATE INDEX idx_expenses_user_category_date ON expense(user_id, category_id, created_at);