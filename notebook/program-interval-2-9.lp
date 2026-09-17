% p(N, N * N + N + 41) :- N = 0..3.
% p(N, N * N + N + 41) :- N+1 = 1..4.
% p(N, N * N + N + 41) :- N = -3..3, N >= 0.

% one-rule program without pooling and has the same stable model as exc 2.6 program
% p(1,2; 2,4; 4,8; 8,16).
% p(2 ** N, 2 ** (N+1)) :- N = 0..3.

% p(0,1) p(1,-1) p(2,1) p(3,-1) p(4,1)
% p(N, -1**N) :- N = 0..4.

% p(1,1)
% p(2,1) p(2,2)
% p(3,1) p(3,2) p(3,3)
% p(4,1) p(4,2) p(4,3) p(4,4)

p(N, 1..N) :- N = 1..4. 