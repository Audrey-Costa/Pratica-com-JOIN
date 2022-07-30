-- Criação do banco
CREATE DATABASE "DRIVENBANK";

-- Criação tabela states
CREATE TABLE "states"(
 "id" SERIAL PRIMARY KEY,
 "name" VARCHAR(60));

-- Criação tabela cities
CREATE TABLE "cities"(
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(60),
    "stateId" INTEGER,
    FOREIGN KEY("stateId") REFERENCES states(id));

-- Criação tabela customAddresses

-- Criação tabela customerPhones

-- Criação tabela customer
CREATE TABLE "customers"(
    "id" SERIAL PRIMARY KEY,
    "fullName" VARCHAR(60),
    "cpf" VARCHAR(11),
    "email" VARCHAR(70),
    "password" VARCHAR(20));

-- Criação tabela bankAccount

-- Criação tabela transactions

-- Criação tabela creditCards
