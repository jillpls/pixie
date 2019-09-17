CREATE TABLE "pb_server" (
    "server_id" SERIAL,
    "server_name" VARCHAR NOT NULL,
    "server_creationdate" TIMESTAMP,
    PRIMARY KEY (server_id)
);
CREATE TABLE "pb_bot" (
    "bot_id" SERIAL,
    "bot_Name" VARCHAR NOT NULL,
    "server_id" INTEGER NOT NULL,
    "bot_creationdate" TIMESTAMP,
    PRIMARY KEY (bot_id),
    FOREIGN KEY (server_id) REFERENCES pb_server(server_id)
);
CREATE TABLE "pb_user" (
    "user_id" SERIAL PRIMARY KEY,
    "user_name" VARCHAR NOT NULL,
    "user_creationdate" TIMESTAMP
);
CREATE TABLE "pb_quotes" (
    "quote_id" SERIAL,
    "quotes_content" TEXT NOT NULL,
    "quotes_date" DATE NOT NULL,
    "quotes_author" VARCHAR NULL,
    "user_id" INTEGER NOT NULL, 
    "server_id" INTEGER NOT NULL,
    "quote_creationdate" TIMESTAMP,
    PRIMARY KEY (quote_id),
    FOREIGN KEY (server_id) REFERENCES pb_server(server_id),
    FOREIGN KEY (user_id) REFERENCES pb_user(user_id)

);
CREATE TABLE "pb_permissions" (
    "perm_id" SERIAL,
    "user_id" INTEGER NOT NULL,
    "server_id" INTEGER NOT NULL,
    "perm_permission" VARCHAR NOT NULL,
    "perm_creationdate" TIMESTAMP,
    PRIMARY KEY (perm_id),
    FOREIGN KEY (server_id) REFERENCES pb_server(server_id),
    FOREIGN KEY (user_id) REFERENCES pb_user(user_id)
);
CREATE TABLE "pb_birthday" (
    "bday_id" SERIAL,
    "bday_date" VARCHAR NOT NULL,
    "bday_name" VARCHAR NOT NULL,
    "server_id" INTEGER NOT NULL,
    "user_id" INTEGER NOT NULL,
    "bday_creationdate" TIMESTAMP,
    PRIMARY KEY (bday_id),
    FOREIGN KEY (server_id) REFERENCES pb_server(server_id),
    FOREIGN KEY (user_id) REFERENCES pb_user(user_id)
);
