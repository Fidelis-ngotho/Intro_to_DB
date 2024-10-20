CREATE DATABASE IF NOT EXISTS  alx_book_store;

USE alx_book_store;


CREATE TABLE "Authors" (
    "author_id" VARCHAR(130) NOT NULL PRIMARY KEY,
    "author_name" VARCHAR(215) NOT NULL
);

CREATE TABLE "Books" (
    "book_id" VARCHAR(130) NOT NULL PRIMARY KEY,
    "title" VARCHAR(130) NOT NULL,
    "author_id" VARCHAR(130) NOT NULL,
    "price" DOUBLE NOT NULL,
    "publication_date" DATE NOT NULL,
    FOREIGN KEY ("author_id") REFERENCES "Authors"("author_id")
);
CREATE TABLE "Customers" (
    "customer_id" VARCHAR(130) NOT NULL PRIMARY KEY,
    "customer_name" VARCHAR(215) NOT NULL,
    "email" VARCHAR(215) NOT NULL,
    "address" TEXT NOT NULL
);

CREATE TABLE "Orders" (
    "order_id" VARCHAR(130) NOT NULL PRIMARY KEY,
    "customer_id" VARCHAR(130) NOT NULL,
    "order_date" DATE NOT NULL,
    FOREIGN KEY ("customer_id") REFERENCES "Customers"("customer_id")
);

CREATE TABLE "Order_Details" (
    "orderdetailid" VARCHAR(130) NOT NULL PRIMARY KEY,
    "order_id" VARCHAR(130) NOT NULL,
    "book_id" VARCHAR(130) NOT NULL,
    "quantity" DOUBLE NOT NULL,
    FOREIGN KEY ("order_id") REFERENCES "Orders"("order_id"),
    FOREIGN KEY ("book_id") REFERENCES "Books"("book_id")
);
