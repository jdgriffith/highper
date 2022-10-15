create schema if not exists highper;

grant usage on schema highper to highper;
alter default privileges in schema highper grant all on tables to highper;
alter default privileges in schema highper grant all on functions to highper;
alter default privileges in schema highper grant all on sequences to highper;
