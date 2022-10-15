create database hasura;
create schema if not exists hasura;

grant all on database hasura to highper;
grant usage on schema hasura to highper;

alter default privileges in schema hasura grant all on tables to highper;
alter default privileges in schema hasura grant all on functions to highper;
alter default privileges in schema hasura grant all on sequences to highper;
