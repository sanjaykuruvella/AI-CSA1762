fruit(apple).
fruit(banana).
fruit(cherry).
fruit(grape).

color(red).
color(yellow).
color(blue).
color(purple).

assign_color(apple, red).
assign_color(banana, yellow).
assign_color(cherry, blue).
assign_color(grape, purple).

solve(FruitsColors) :-
    FruitsColors = [apple-red, banana-yellow, cherry-blue, grape-purple],
    assign_color(apple, red),
    assign_color(banana, yellow),
    assign_color(cherry, blue),
    assign_color(grape, purple).
