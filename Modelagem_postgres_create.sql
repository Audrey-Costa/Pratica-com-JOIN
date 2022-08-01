CREATE TABLE "public.Users" (
	"id" serial NOT NULL,
	"Name" varchar(60) NOT NULL,
	"e-mail" varchar(60) NOT NULL UNIQUE,
	"password" varchar(20) NOT NULL,
	CONSTRAINT "Users_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Products" (
	"id" serial NOT NULL,
	"name" varchar(150) NOT NULL UNIQUE,
	"price" int NOT NULL,
	"imagePrincipal" TEXT NOT NULL,
	"secondaryImage" TEXT,
	"categoryId" numeric NOT NULL,
	"sizeId" numeric NOT NULL,
	CONSTRAINT "Products_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Categories" (
	"id" serial NOT NULL,
	"name" varchar(15) NOT NULL UNIQUE,
	CONSTRAINT "Categories_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Sizes" (
	"id" serial NOT NULL UNIQUE,
	"size" varchar(5) NOT NULL UNIQUE,
	CONSTRAINT "Sizes_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Sells" (
	"id" serial NOT NULL,
	"userId" numeric NOT NULL,
	"productId" numeric NOT NULL,
	"statusId" numeric NOT NULL,
	"date" DATE NOT NULL,
	"adress" TEXT NOT NULL,
	CONSTRAINT "Sells_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Statuses" (
	"id" serial NOT NULL,
	"status" varchar(9) NOT NULL,
	CONSTRAINT "Statuses_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);




ALTER TABLE "Products" ADD CONSTRAINT "Products_fk0" FOREIGN KEY ("categoryId") REFERENCES "Categories"("id");
ALTER TABLE "Products" ADD CONSTRAINT "Products_fk1" FOREIGN KEY ("sizeId") REFERENCES "Sizes"("id");



ALTER TABLE "Sells" ADD CONSTRAINT "Sells_fk0" FOREIGN KEY ("userId") REFERENCES "Users"("id");
ALTER TABLE "Sells" ADD CONSTRAINT "Sells_fk1" FOREIGN KEY ("productId") REFERENCES "Products"("id");
ALTER TABLE "Sells" ADD CONSTRAINT "Sells_fk2" FOREIGN KEY ("statusId") REFERENCES "Statuses"("id");








