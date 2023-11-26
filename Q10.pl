% Facts
property(property1).
property(property2).
property(property3).
property(property4).
property(property5).
property(property6).
property(property7).

tenant(john).
tenant(mary).
tenant(david).
tenant(lisa).

occupied(property1, john).
occupied(property2, mary).
occupied(property4, david).
occupied(property6, lisa).

property_type(property1, apartment).
property_type(property2, apartment).
property_type(property3, apartment).
property_type(property4, house).
property_type(property5, house).
property_type(property6, office).
property_type(property7, office).

rent(property1, 1200).
rent(property2, 1100).
rent(property4, 2000).
rent(property6, 1500).

maintenance_cost(property1, 100).
maintenance_cost(property2, 120).
maintenance_cost(property4, 150).
maintenance_cost(property6, 200).

% Queries
% a) List all properties and their types.
query_a(Property, Type) :-
    property(Property),
    property_type(Property, Type).

% b) List all properties and their monthly rents.
query_b(Property, Rent) :-
    property(Property),
    rent(Property, Rent).

% c) List all tenants and the properties they occupy.
query_c(Property, Tenant) :-
    tenant(Tenant),
    occupied(Property, Tenant).

% d) List properties with their types and rents that have a maintenance cost below 130.
query_d(Property, Type, Rent, Cost) :-
    property(Property),
    property_type(Property, Type),
    rent(Property, Rent),
    maintenance_cost(Property, Cost),
    Cost < 130.

% Example usage:
% ?- findall([Property, Type], query_a(Property, Type), Results_a).
% ?- findall([Property, Rent], query_b(Property, Rent), Results_b).
% ?- findall([Property, Tenant], query_c(Property, Tenant), Results_c).
% ?- findall([Property, Type, Rent, Cost], query_d(Property, Type, Rent, Cost), Results_d).

% You can use findall/3 to get all possible solutions for each query.
