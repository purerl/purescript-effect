-module(effect_uncurried@foreign).
-export([mkEffectFn1/1,mkEffectFn2/1,mkEffectFn3/1,mkEffectFn4/1,mkEffectFn5/1,mkEffectFn6/1,mkEffectFn7/1,mkEffectFn8/1,mkEffectFn9/1,mkEffectFn10/1,runEffectFn1/2,runEffectFn2/3,runEffectFn3/4,runEffectFn4/5,runEffectFn5/6,runEffectFn6/7,runEffectFn7/8,runEffectFn8/9,runEffectFn9/10,runEffectFn10/11]).

% mkEffectFnX - feeling the paren love

mkEffectFn1(Fun) -> fun (A) -> (Fun(A))() end.

mkEffectFn2(Fun) -> fun (A,B) -> ((Fun(A))(B))() end.

mkEffectFn3(Fun) -> fun (A,B,C) -> (((Fun(A))(B))(C))() end.

mkEffectFn4(Fun) -> fun (A,B,C,D) -> ((((Fun(A))(B))(C))(D))() end.

mkEffectFn5(Fun) -> fun (A,B,C,D,E) -> (((((Fun(A))(B))(C))(D))(E))() end.

mkEffectFn6(Fun) -> fun (A,B,C,D,E,F) -> ((((((Fun(A))(B))(C))(D))(E))(F))() end.

mkEffectFn7(Fun) -> fun (A,B,C,D,E,F,G) -> (((((((Fun(A))(B))(C))(D))(E))(F))(G))() end.

mkEffectFn8(Fun) -> fun (A,B,C,D,E,F,G,H) -> ((((((((Fun(A))(B))(C))(D))(E))(F))(G))(H))() end.

mkEffectFn9(Fun) -> fun (A,B,C,D,E,F,G,H,I) -> (((((((((Fun(A))(B))(C))(D))(E))(F))(G))(H))(I))() end.

mkEffectFn10(Fun) -> fun (A,B,C,D,E,F,G,H,I,J) -> ((((((((((Fun(A))(B))(C))(D))(E))(F))(G))(H))(I))(J))() end.

% runEffectFnX - making heavy use of auto-currying

runEffectFn1(Fun,A) -> fun (_) -> Fun(A) end.

runEffectFn2(Fun,A,B) -> fun (_) -> Fun(A,B) end.

runEffectFn3(Fun,A,B,C) -> fun (_) -> Fun(A,B,C) end.

runEffectFn4(Fun,A,B,C,D) -> fun (_) -> Fun(A,B,C,D) end.

runEffectFn5(Fun,A,B,C,D,E) -> fun (_) -> Fun(A,B,C,D,E) end.

runEffectFn6(Fun,A,B,C,D,E,F) -> fun (_) -> Fun(A,B,C,D,E,F) end.

runEffectFn7(Fun,A,B,C,D,E,F,G) -> fun (_) -> Fun(A,B,C,D,E,F,G) end.

runEffectFn8(Fun,A,B,C,D,E,F,G,H) -> fun (_) -> Fun(A,B,C,D,E,F,G,H) end.

runEffectFn9(Fun,A,B,C,D,E,F,G,H,I) -> fun (_) -> Fun(A,B,C,D,E,F,G,H,I) end.

runEffectFn10(Fun,A,B,C,D,E,F,G,H,I,J) -> fun (_) -> Fun(A,B,C,D,E,F,G,H,I,J) end.
