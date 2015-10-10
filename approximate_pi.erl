-module(approximate_pi).
-export([get_pi/1,approximate_pi/1]).


get_pi(N) when N > 1 ->
  approximate_pi(N)/N;
get_pi(N) when N >=0 ->
  approximate_pi(1)/2. 

approximate_pi(N) when N > 0 ->
  (4 * math:sqrt(1 - math:pow(random:uniform(),2))) + approximate_pi(N-1);
approximate_pi(0) ->
  (4 * math:sqrt(1 - math:pow(random:uniform(),2))).
