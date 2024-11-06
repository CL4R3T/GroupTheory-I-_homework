#import "@preview/problemst:0.1.0": pset
#import "@preview/physica:0.9.3": *
#show: doc => pset(
  doc,
  class: "Group Theory I",
  student: read("../.authorinfo"),
  title: "Homework 2",
  date: datetime(year: 2024, month: 11, day: 6),
)
#show: super-plus-as-dagger
#show: super-T-as-transpose
=

- 若 $A(g)$ 为群 $G={g}$ 的一个表示, 则说明满足这个关系:
$ A(g_alpha) A(g_beta) = A(g_alpha g_beta) $
将该式取复共轭得到
$ A^*(g_alpha) A^*(g_beta) = A^*(g_alpha g_beta) $
这说明 $A^*(g)$ 也是 $G$ 的一个表示.

- 若 $A(g)$ 是不可约的, 也就是说对于 $A(g)$ 的表示空间 $V$ 与它的所有真子空间 $W$ 满足$ forall W subset V (exists arrow(y)in W, g_alpha in G, s.t." " A(g_alpha) in.not W) $
将该表达式取复共轭, 则有
$ forall W^* subset V (exists arrow(y)in W^*, g_alpha in G, s.t." " A^*(g_alpha) in.not W^*) $
其中$W^* = {w^* | w in W}$. 这说明 $A^*(g)$ 也是不可约的.

- 若 $A(g)$ 是幺正的, 则
$ forall g_alpha in G, A(g_alpha)^dagger = A(g_alpha)^(-1) $
将该等式取复共轭, 由复共轭, 厄密共轭, 取逆三个操作两两交换, 则有 $ forall g_alpha in G, A^* (g_alpha)^dagger = A^*(g_alpha)^(-1) $
也即 $A^*(g)$ 是幺正的.


=


- 若 $A(g)$ 为群 $G={g}$ 的一个表示, 则说明满足这个关系:
$ A(g_alpha) A(g_beta) = A(g_alpha g_beta) $
将该式分别取转置逆和厄密共轭逆得到
$
  [A^T (g_alpha)]^(-1) [A^T (g_beta)]^(-1) = [A^T (g_beta)A^T (g_alpha)]^(-1) = [[A(g_alpha)A (g_beta)]^T]^(-1) = [
    A^T (g_alpha g_beta)
  ]^(-1)
$
$
  [A^+ (g_alpha)]^(-1) [A^+ (g_beta)]^(-1) = [A^+ (g_beta)A^+ (g_alpha)]^(-1) = [[A(g_alpha)A (g_beta)]^+]^(-1) = [
    A^+ (g_alpha g_beta)
  ]^(-1)
$
这说明 $[A^T (g)]^(-1),[A^+ (g)]^(-1)$ 也是 $G$ 的一个表示.

- 若 $A(g)$ 是不可约的, 也就是说对于 $A(g)$ 的表示空间 $V$ 与它的所有真子空间 $W$ 满足$ forall W subset V (exists arrow(y)in W, g_alpha in G, s.t." " A(g_alpha) in.not W) $
将该表达式分别取转置逆和厄密共轭逆, 则有
$ forall [W^T]^(-1) subset V (exists arrow(y)in W^T, g_alpha in G, s.t." " [A^T (g_alpha)]^(-1) in.not [W^T]^(-1)) $
$ forall [W^+]^(-1) subset V (exists arrow(y)in W^+, g_alpha in G, s.t." " [A^+ (g_alpha)]^(-1) in.not [W^+]^(-1)) $
其中记$[W^T]^(-1) = {[w^T]^(-1) | w in W}, [W^+]^(-1) = {[w^+]^(-1) | w in W}$.
这说明 $[A^T (g)]^(-1), [A^+ (g)]^(-1)$ 也是不可约的.

- 若 $A(g)$ 是幺正的, 则
$ forall g_alpha in G, A(g_alpha)^+ = A(g_alpha)^(-1) $
将该等式分别取转置和厄密共轭, 由转置, 厄密共轭, 取逆三个操作两两均交换, 则有
$ forall g_alpha in G, [[A^T (g_alpha)]^(-1)]^+ = [[A^T (g_alpha)]^(-1)]^(-1) $
$ forall g_alpha in G, [[A^+ (g_alpha)]^(-1)]^+ = [[A^+ (g_alpha)]^(-1)]^(-1) $
也即 $[A^T (g)]^(-1), [A^+ (g)]^(-1)$ 是幺正的.

=
不一定. 若 $A(g)$ 为群 $G={g}$ 的一个表示, 则 $A^T (g),A^+ (g)$ 为群 $G$ 的表示当且仅当 $A(g)$ 两两可交换 , 对 $A^T (g)$ 的证明如下:
$ A^T (g_alpha) A^T (g_beta) = [A(g_beta)A (g_alpha)]^T = A^T (g_beta g_alpha) $
$
  A^T (g_alpha) A^T (g_beta) = A^T (g_alpha g_beta) <=> A (g_alpha g_beta) = A (g_beta g_alpha) <=> A (g_alpha) A (
    g_beta
  ) = A (g_beta) A (g_alpha)
$
这对 $A^+ (g)$ 同理, 只需把其中转置符号换成厄密共轭符号即可.

=

$forall g_alpha in G, forall g_1,g_2 in G$, 有 $g_alpha g_1 g_alpha^(-1) = g_alpha g_2 g_alpha^(-1) <=> g_1 = g_2$, 根据这个性质, 映射$f_alpha: g -> g_alpha g g_alpha^(-1)$ 应当为 $C$ 的一个重排列. 因此我们得到:

$
  A(g_alpha) sum_(g in C) A(g) = sum_(g in C) A(g_alpha) A(g)= sum_(g in C) A(g_alpha g g_alpha^(-1))A(g_alpha) = [
    sum_(g in C) A(g)
  ] A(g_alpha)
$
这对 $forall g_alpha in G$ 成立, 由于 $A$ 是不可约表示, 根据Schur引理二, $sum_(g in C) A(g) = lambda E$, 其中 $lambda$ 为数域上的常数, $E$ 为单位矩阵.

=

这在Problem 4中已经证明过了, 下面重复一遍.

$forall g_alpha in G, forall g_1,g_2 in G$, 有 $g_alpha g_1 g_alpha^(-1) = g_alpha g_2 g_alpha^(-1) <=> g_1 = g_2$, 根据这个性质, 映射$f_alpha: g -> g_alpha g g_alpha^(-1)$ 应当为 $C$ 的一个重排列. 因此我们得到:

$
  A(g_alpha) sum_(g in C) A(g) = sum_(g in C) A(g_alpha) A(g)= sum_(g in C) A(g_alpha g g_alpha^(-1))A(g_alpha) = [
    sum_(g in C) A(g)
  ] A(g_alpha)
$

=
三阶群仅有三阶循环群${e,a,a^2}$一种, 由Burnside定理,其所有不等价不可约表示只能为3个1维的表示, 如下:
- $A(e) = A(a) = A(a^2) = 1$
- $A(e) = 1, A(a) = omega, A(a^2) = omega^2$
- $A(e) = 1, A(a) = omega^2, A(a^2) = omega$
其中 $omega = e^((2pi i)/3)$

=

由于 $B(g)$ 是一维的, 所以这两个表示的直积可以表示为
$
  A(g) times.circle B(g) = A(g)B(
    g
  ) = mat([A(g)]_11 B(g), [A(g)]_12 B(g), dots;[A(g)]_21 B(g), [A(g)]_22 B(g), dots;dots.v,dots.v,dots.down)
$
若 $A(g) times.circle B(g)$ 可约, 也即存在一组基使得
$ A(g) times.circle B(g) = mat(G_1(g),R(g);0,G_2(g)) $
其中$G_1,G_2$为方阵. 注意到$B(g) != 0$, 故
$ A(g) = [A(g) times.circle B(g)]\/B(g) = mat(G_1(g)\/B(g),R(g)\/B(g);0,G_2(g)\/B(g)) $
这说明 $A(g)$ 可约, 与题目矛盾, 所以 $A(g) times.circle B(g)$ 不可约.

=

群 $V$ 可交换,所以其每个元素自成一类,一共4个类, 由Burnside定理, 其所有不等价不可约表示只能为4个1维的表示, 可以直接写出这些1维表示:
#align(
  center,
  table(
    columns: 5,
    [表示], [e], [a], [b], [c],
    [$A^1$], [1], [1], [1], [1],
    [$A^2$], [1], [-1], [1], [-1],
    [$A^3$], [1], [1], [-1], [-1],
    [$A_4$], [1], [-1], [-1], [1],
  ),
)
这个表中每一行均为一个表示.

=

群 $D_3$ 共有3个共轭类: ${e},{a,b,c},{d,f}$ 由Burnside定理, $6=1^2+1^2+2^2$, 其所有不等价不可约表示只能为2个1维的表示和1个2维的表示,
- 1维恒等表示: $A^1(g)=1 forall g in D_3$
- 1维表示: $A^2(g)=1  forall g in {e,d,f}, A^2(g)=-1  forall g in {a,b,c}$
- 2维表示:
$
  A^3(e) = mat(1,0;0,1), A^3(d) = mat(-1/2, -sqrt(3)/2;sqrt(3)/2,-1/2), A^3(f) = mat(-1/2, sqrt(3)/2;-sqrt(3)/2,-1/2)\
  A^3(a) = mat(-1,0;0,1), A^3(b) = mat(1/2, sqrt(3)/2;sqrt(3)/2,-1/2), A^3(c) = mat(1/2, -sqrt(3)/2;-sqrt(3)/2,-1/2)\
$

其特征标表如下:
#align(center,
  table(
    columns:(20%,20%,20%,20%),
    [ ],[1{e}],[2{d}],[3{a}],
    $A^1$,$1$,$1$,$1$,
    $A^2$,$1$,$1$,$-1$,
    $A^3$,$2$,$-1$,$0$,
  )
)
验证正交性:
$
  (chi^1|chi^2) = 1/6(1*1*1+2*1*1+3*1*(-1)) = 0\
  (chi^1|chi^3) = 1/6(1*1*2+2*1*(-1)+3*1*0) = 0\
  (chi^2|chi^3) = 1/6(1*1*2+2*1*(-1)+3*(-1)*0) = 0
$
=

$D_3$ 群的群元在三维实空间中的意义为
$
  e = mat(1,0,0;0,1,0;0,0,1), d = mat(-1/2, -sqrt(3)/2,0;sqrt(3)/2,-1/2,0;0,0,1), f=d^2\
  a = mat(-1,0,0;0,1,0;0,0,1), b=d^2 a,c= d a\
$
显然 $A(e)Psi_i (arrow(r)) = A(e)Psi_i (arrow(r)) = Psi_i (e^(-1) dot arrow(r)) = Psi_i (arrow(r)) $, 所以
$
  A(e) =
  mat(
    1,0,0,0,0,0;
    0,1,0,0,0,0;
    0,0,1,0,0,0;
    0,0,0,1,0,0;
    0,0,0,0,1,0;
    0,0,0,0,0,1;)
$
$A(a)$ 带来的作用为 $A(a)Psi_i (x,y,z) = Psi_i (-x,y,z)$所以
$
  A(a)Psi_1 = x^2 = Psi_1, A(a)Psi_2 = y^2 = Psi_2, A(a)Psi_3 = z^2 = Psi_3,\
  A(a)Psi_4 = -x y = -Psi_4, A(a)Psi_5 = y z = Psi_5, A(a)Psi_6 = -x z = -Psi_6,
$
也即
$
  A(a) =
  mat(
    1,0,0,0,0,0;
    0,1,0,0,0,0;
    0,0,1,0,0,0;
    0,0,0,-1,0,0;
    0,0,0,0,1,0;
    0,0,0,0,0,-1;)
$
$A(d)$ 带来的作用为 $A(d)Psi_i (x,y,z) = Psi_i (-1/2 x+ sqrt(3)/2 y, -sqrt(3)/2 x -1/2y,z)$所以
$
  A(d)Psi_1 = (-1 / 2 x+ sqrt(3) / 2 y)^2 = 1 / 4 Psi_1 + 3 / 4 Psi_2 - sqrt(3) / 2 Psi_4,\
  A(d)Psi_2 = (-sqrt(3) / 2 x -1 / 2y)^2 = 3 / 4 Psi_1+ 1 / 4 Psi_2 + sqrt(3) / 2 Psi_4,\
  A(d)Psi_3 = z^2 = Psi_3,\
  A(d)Psi_4 = (-1 / 2 x+ sqrt(3) / 2 y)(-sqrt(3) / 2 x -1 / 2y) = sqrt(3) / 4 Psi_1 - sqrt(3) / 4 Psi_2 - 1 / 2 Psi_4,\
  A(d)Psi_5 = (-sqrt(3) / 2 x -1 / 2y) z = -1 / 2 Psi_5 -sqrt(3) / 2 Psi_6,\
  A(d)Psi_6 = (-1 / 2 x+ sqrt(3) / 2 y) z = sqrt(3) / 2 Psi_5 -1 / 2 Psi_6 ,
$
即
$
  A(d) =
  mat(
    1/4,        3/4,       0, sqrt(3)/4,  0,          0;
    3/4,        1/4,       0, -sqrt(3)/4, 0,          0;
    0,          0,         1, 0,          0,          0;
    -sqrt(3)/2, sqrt(3)/2, 0, -1/2,       0,          0;
    0,          0,         0, 0,          -1/2,       sqrt(3)/2;
    0,          0,         0, 0,          -sqrt(3)/2, -1/2;)
$
于是可以推出剩下三个元素的表示矩阵:
$
  A(f) = A(d)^2 = mat(
    1/4,        3/4,       0, -sqrt(3)/4,  0,          0;
    3/4,        1/4,       0, sqrt(3)/4, 0,          0;
    0,          0,         1, 0,          0,          0;
    sqrt(3)/2, -sqrt(3)/2, 0, -1/2,       0,          0;
    0,          0,         0, 0,          -1/2,       -sqrt(3)/2;
    0,          0,         0, 0,          sqrt(3)/2, -1/2;)
$
$
  A(b) = A(f)A(a) = mat(
    1/4,        3/4,       0, sqrt(3)/4,  0,          0;
    3/4,        1/4,       0, -sqrt(3)/4, 0,          0;
    0,          0,         1, 0,          0,          0;
    sqrt(3)/2, -sqrt(3)/2, 0, 1/2,       0,          0;
    0,          0,         0, 0,          -1/2,       sqrt(3)/2;
    0,          0,         0, 0,          sqrt(3)/2, 1/2;)
$
$
  A(c) = A(d)A(a) = mat(
    1/4,        3/4,       0, -sqrt(3)/4,  0,          0;
    3/4,        1/4,       0, sqrt(3)/4, 0,          0;
    0,          0,         1, 0,          0,          0;
    -sqrt(3)/2, sqrt(3)/2, 0, 1/2,       0,          0;
    0,          0,         0, 0,          -1/2,       -sqrt(3)/2;
    0,          0,         0, 0,          -sqrt(3)/2, 1/2;)
$
于是其特征标为
$chi(e) = 6,chi(d) = 0, chi(a) = 2$
将其与上一题中求出的三个表示做特征标内积可以得到:
$
  (chi|chi^1) = 1/6(1*6*1+2*0*1+3*2*1) = 2\
  (chi|chi^2) = 1/6(1*6*1+2*0*1+3*2*(-1)) = 0\
  (chi|chi^3) = 1/6(1*6*2+2*0*(-1)+3*2*0) = 2
$
所以 $A = 2 A^1 plus.circle 2 A^3$

=

左正则表示:
$
  L(e) = mat(
    1,0,0,0;
    0,1,0,0;
    0,0,1,0;
    0,0,0,1;)
  L(a) = mat(
    0,0,0,1;
    1,0,0,0;
    0,1,0,0;
    0,0,1,0;)\
  L(a^2) = mat(
    0,0,1,0;
    0,0,0,1;
    1,0,0,0;
    0,1,0,0;)
  L(a^3) = mat(
    0,1,0,0;
    0,0,1,0;
    0,0,0,1;
    1,0,0,0;)
$
右正则表示:$
  R(e) = mat(
    1,0,0,0;
    0,1,0,0;
    0,0,1,0;
    0,0,0,1;)
  R(a) = mat(
    0,1,0,0;
    0,0,1,0;
    0,0,0,1;
    1,0,0,0;)\
  R(a^2) = mat(
    0,0,1,0;
    0,0,0,1;
    1,0,0,0;
    0,1,0,0;)
  R(a^3) = mat(
    0,0,0,1;
    1,0,0,0;
    0,1,0,0;
    0,0,1,0;)\
$

=

恒等表示的特征标 $chi^I (g_i) = 1$,
$A^1(g) = A^p (g) times.circle A^(r*)(g)$ 的特征标 $chi^1(g_i) = chi^p (g_i) chi^(r*) (g_i)$, 二者作特征标内积得:
$
  (chi^I|chi^1) = 1/n sum_(i=1)^q n_i chi^p (g_i) chi^(r*) (g_i) = (chi^r|chi^p) = 0
$
故表示 $A^1(g) = A^p (g) times.circle A^(r*)(g)$ 不包含恒等表示. 

$A^2(g) = A^p (g) times.circle A^(p*)(g)$ 的特征标 $chi^2(g_i) = chi^p (g_i) chi^(p*) (g_i)$,与恒等表示作特征标内积得:
$
  (chi^I|chi^2) = 1/n sum_(i=1)^q n_i chi^p (g_i) chi^(p*) (g_i) = (chi^p|chi^p) = 1
$
故表示 $A^2(g) = A^p (g) times.circle A^(p*)(g)$ 包含一次恒等表示.

=

首先考虑将群 $G$ 按照子群 $H$ 的右陪集进行分解: $ G= {H g_1,H g_2,...,H g_l}$, $l = abs(G)/abs(H),g_1= e$, 则总满足 $forall g in G, exists h in H, i in N,s.t. " " g = h g_i$

根据这个右陪集分组, 诱导表示的每个表示矩阵都可以写作分块矩阵的形式, 每行每列恰有一块为子群的表示矩阵, 其余块为零矩阵:
$
  [U(g)]_(i j) = cases(L(g_i g g_j^(-1)) "if" g_i g g_j^(-1) in H,0 "otherwise")
$

而子群 $H$ 的左正则表示矩阵可以写作 
$
  L(h)_(m n) = cases(1 "if" h_m = h h_n,0 "otherwise")
$
每行每列恰有一个元素为1, 其余元素为0. 



将诱导表示的表示矩阵展开
$
  [U(g)]_(m i; n j) = cases(1 "if" h_m = g_i g g_j^(-1) h_n,0 "otherwise")
$

所以诱导表示的表示矩阵也是每行每列恰有一个元素为1, 其余为0, 这说明子群 $H$ 的左正则表示的诱导表示是群$G$ 的正则表示.
// #block(
//   fill: luma(230),
//   inset: 8pt,
//   radius: 4pt,

//   [注意到 $h_m = g_i g g_j^(-1) h_n$ 等价于 $h_m^(-1) g_i = h_n^(-1) g_j g^(-1)$, 而且$(h_m^(-1)g_i), (h_n^(-1)g_j)$ 可以取遍 $G$ 中所有元素,那么进行$V->V_G$ 的同构映射, 使得 $V$ 的基 $e_(m i)$ 被映射到 $V_G$ 的基 $g_alpha = h_m^(-1) g_i$. 映射后 $U(g)$ 在 $V_G$ 的基上写作: 
// $
//   [U(g)]_(alpha beta) = cases(1 "if" g_alpha = g_beta g^(-1) ,0 "otherwise")
// $
// 这说明如果按照讲义上的过程定义诱导表示, 那么写出来的表示矩阵是和群 $G$ 的右正则表示"同构的", 这个事实与 $f(h g) = B(h) f(g)$有关.])

=

有限群 $G$ 的非恒等的不可约表示的特征标之和为0, 证明如下:

有限群 $G$ 的不可约恒等表示的特征标为 $forall g in G, chi^0(g) = 1$,

于是对于非恒等的不可约表示$A^p(g)$, $sum_(g in G) chi^p (g) = sum_(g in G) chi^(0*)(g) chi^p (g) = (chi^0|chi^p)$

由不等价不可约表示特征标的正交性, $(chi^0|chi^p) = 0$, 故$sum_(g in G) chi^p (g)=0$

=
$D_3$ 群的群元在2维空间中的意义为
$
  e = mat(1,0;0,1), d = mat(-1/2, -sqrt(3)/2;sqrt(3)/2,-1/2), f=d^2\
  a = mat(-1,0;0,1), b=d^2 a,c= d a\
$
显然 $A(e)f_i (arrow(r)) = A(e)f_i (arrow(r)) = f_i (e^(-1) dot arrow(r)) = f_i (arrow(r)) $, 所以
$
  A(e) =
  mat(
    1,0,0;
    0,1,0;
    0,0,1;)
$
$A(a)$ 带来的作用为 $A(a)Psi_i (x,y) = f_i (-x,y)$所以
$
  A(a)f_1 = x^2 = f_1, A(a)f_2 = y^2 = f_2, A(a)f_3 = -x y = -f_3
$
也即
$
  A(a) =
  mat(
    1,0,0;
    0,1,0;
    0,0,-1;)
$
$A(d)$ 带来的作用为 $A(d)f_i (x,y) = f_i (-1/2 x+ sqrt(3)/2 y, -sqrt(3)/2 x -1/2y)$所以
$
  A(d)f_1 = (-1 / 2 x+ sqrt(3) / 2 y)^2 = 1 / 4 f_1 + 3 / 4 f_2 - sqrt(3) / 2 f_3,\
  A(d)f_2 = (-sqrt(3) / 2 x -1 / 2y)^2 = 3 / 4 f_1+ 1 / 4 f_2 + sqrt(3) / 2 f_3,\
  A(d)f_3 = (-1 / 2 x+ sqrt(3) / 2 y)(-sqrt(3) / 2 x -1 / 2y) = sqrt(3) / 4 f_1 - sqrt(3) / 4 f_2 - 1 / 2 f_3,\
$
即
$
  A(d) =
  mat(
    1/4,        3/4,       sqrt(3)/4;
    3/4,        1/4,       -sqrt(3)/4;
    -sqrt(3)/2, sqrt(3)/2, -1/2)
$
于是可以推出剩下三个元素的表示矩阵:
$
  A(f) = A(d)^2 = mat(
    1/4,        3/4,       -sqrt(3)/4;
    3/4,        1/4,       sqrt(3)/4;
    sqrt(3)/2, -sqrt(3)/2, -1/2;)
$
$
  A(b) = A(f)A(a) = mat(
    1/4,        3/4,       sqrt(3)/4;
    3/4,        1/4,       -sqrt(3)/4;
    sqrt(3)/2, -sqrt(3)/2, 1/2;)
$
$
  A(c) = A(d)A(a) = mat(
    1/4,        3/4,       -sqrt(3)/4;
    3/4,        1/4,       sqrt(3)/4;
    -sqrt(3)/2, sqrt(3)/2, 1/2;)
$
于是其特征标为
$chi(e) = 3,chi(d) = 0, chi(a) = 1$
将其与 Problem 9 中求出的三个表示做特征标内积可以得到:
$
  (chi|chi^1) = 1/6(1*3*1+2*0*1+3*1*1) = 1\
  (chi|chi^2) = 1/6(1*3*1+2*0*1+3*1*(-1)) = 0\
  (chi|chi^3) = 1/6(1*3*2+2*0*(-1)+3*1*0) = 1
$
所以 $A = A^1 plus.circle A^3$

=

将群 $G=D_3$ 对其子群 $H={e,a}$ 进行右陪集分解: $G = {H,H d,H f}$

则诱导表示为:
$
  U(g)=mat(
    dot(B)(e g e^(-1)),dot(B)(e g d^(-1)),dot(B)(e g f^(-1));
    dot(B)(d g e^(-1)),dot(B)(d g d^(-1)),dot(B)(d g f^(-1));
    dot(B)(f g e^(-1)),dot(B)(f g d^(-1)),dot(B)(f g f^(-1));)
  =mat(
    dot(B)(g),dot(B)(g f),dot(B)(g d);
    dot(B)(d g),dot(B)(d g f),dot(B)(d g d);
    dot(B)(f g),dot(B)(f g f),dot(B)(f g d);)
$
其中
$
  dot(B)(g) = cases(1 "if" g in{e,a},0 "otherwise")
$
将所有群元代入该表达式:
$
  U(e) = mat(
    dot(B)(e),dot(B)(e f),dot(B)(e d);
    dot(B)(d e),dot(B)(d e f),dot(B)(d e d);
    dot(B)(f e),dot(B)(f e f),dot(B)(f e d);)
  = mat(
    1,0,0;
    0,1,0;
    0,0,1)
$
$
  U(d) = mat(
    dot(B)(d),dot(B)(d f),dot(B)(d d);
    dot(B)(d d),dot(B)(d d f),dot(B)(d d d);
    dot(B)(f d),dot(B)(f d f),dot(B)(f d d);)
  = mat(
    0,1,0;
    0,0,1;
    1,0,0)
$
$
  U(f) = mat(
    dot(B)(f),dot(B)(f f),dot(B)(f d);
    dot(B)(d f),dot(B)(d f f),dot(B)(d f d);
    dot(B)(f f),dot(B)(f f f),dot(B)(f f d);)
  = mat(
    0,0,1;
    1,0,0;
    0,1,0;)
$
$
  U(a) = mat(
    dot(B)(a),dot(B)(a f),dot(B)(a d);
    dot(B)(d a),dot(B)(d a f),dot(B)(d a d);
    dot(B)(f a),dot(B)(f a f),dot(B)(f a d);)
  = mat(
    1,0,0;
    0,0,1;
    0,1,0)
$
$
  U(b) = mat(
    dot(B)(b),dot(B)(b f),dot(B)(b d);
    dot(B)(d b),dot(B)(d b f),dot(B)(d b d);
    dot(B)(f b),dot(B)(f b f),dot(B)(f b d);)
  = mat(
    0,1,0;
    1,0,0;
    0,0,1)
$
$
  U(c) = mat(
    dot(B)(c),dot(B)(c f),dot(B)(c d);
    dot(B)(d c),dot(B)(d c f),dot(B)(d c d);
    dot(B)(f c),dot(B)(f c f),dot(B)(f c d);)
  = mat(
    0,0,1;
    0,1,0;
    1,0,0)
$
特征标 $chi(e) = 3,chi(d) = 0, chi(a) = 1$ 与上一题相同, 故 $U = A^1 plus.circle A^3$

=

回顾一下 Problem 9 中求出的 $D_3$ 群所有不等价不可约表示与其特征标列表:

- 1维恒等表示: $A^1(g)=1 forall g in D_3$
- 1维表示: $A^2(g)=1  forall g in {e,d,f}, A^2(g)=-1  forall g in {a,b,c}$
- 2维表示:
$
  A^3(e) = mat(1,0;0,1), A^3(d) = mat(-1/2, -sqrt(3)/2;sqrt(3)/2,-1/2), A^3(f) = mat(-1/2, sqrt(3)/2;-sqrt(3)/2,-1/2)\
  A^3(a) = mat(-1,0;0,1), A^3(b) = mat(1/2, sqrt(3)/2;sqrt(3)/2,-1/2), A^3(c) = mat(1/2, -sqrt(3)/2;-sqrt(3)/2,-1/2)\
$
#align(center,
  table(
    columns:(20%,20%,20%,20%),
    [ ],[1{e}],[2{d}],[3{a}],
    $A^1$,$1$,$1$,$1$,
    $A^2$,$1$,$1$,$-1$,
    $A^3$,$2$,$-1$,$0$,
  )
)

可以显然地写出一些直积:
$
  A^1 times.circle A^1 = A^2 times.circle A^2 = A^1,\
  A^1 times.circle A^2 = A^2,\
  A^1 times.circle A^3 = A^3,\
$
$A^2 times.circle A^3$:
$
  [A^2 times.circle A^3](e) = mat(1,0;0,1), [A^2 times.circle A^3](d) = mat(-1/2, -sqrt(3)/2;sqrt(3)/2,-1/2), [A^2 times.circle A^3](f) = mat(-1/2, sqrt(3)/2;-sqrt(3)/2,-1/2)\
  [A^2 times.circle A^3](a) = mat(1,0;0,-1), [A^2 times.circle A^3](b) = mat(-1/2, -sqrt(3)/2;-sqrt(3)/2,1/2), [A^2 times.circle A^3](c) = mat(-1/2, sqrt(3)/2;sqrt(3)/2,1/2)\
$
显然$A^2 times.circle A^3 tilde.eq A^3$ (只是交换了矩阵的两个基)

$A^3 times.circle A^3$:
$
  [A^3 times.circle A^3](e) = mat(1,0,0,0;0,1,0,0;0,0,1,0;0,0,0,1),
  [A^3 times.circle A^3](d) = mat(1/4,sqrt(3)/4,sqrt(3)/4,3/4;- sqrt(3)/4,1/4,-3/4,sqrt(3)/4;- sqrt(3)/4,-3/4,1/4,sqrt(3)/4;3/4,-sqrt(3)/4,-sqrt(3)/4,1/4), 
  [A^3 times.circle A^3](f) = mat(1/4,-sqrt(3)/4,-sqrt(3)/4,3/4;sqrt(3)/4,1/4,-3/4,-sqrt(3)/4;sqrt(3)/4,-3/4,1/4,-sqrt(3)/4;3/4,sqrt(3)/4,sqrt(3)/4,1/4), \
  [A^3 times.circle A^3](a) = mat(1,0,0,0;0,-1,0,0;0,0,-1,0;0,0,0,1), 
  [A^3 times.circle A^3](b) = mat(1/4,sqrt(3)/4,sqrt(3)/4,3/4;sqrt(3)/4,-1/4,3/4,-sqrt(3)/4;sqrt(3)/4,3/4,-1/4,-sqrt(3)/4;3/4,-sqrt(3)/4,-sqrt(3)/4,1/4),
   [A^3 times.circle A^3](c) = mat(1/4,-sqrt(3)/4,-sqrt(3)/4,3/4;-sqrt(3)/4,-1/4,3/4,sqrt(3)/4;-sqrt(3)/4,3/4,-1/4,sqrt(3)/4;3/4,sqrt(3)/4,sqrt(3)/4,1/4),\
$
其特征标为
$chi(e) = 4, chi(d) = 1, chi(a) = 0$
$
  (chi|chi^1) = 1/6(1*4*1+2*1*1+3*0*1) = 1\
  (chi|chi^2) = 1/6(1*4*1+2*1*1+3*0*(-1)) = 1\
  (chi|chi^3) = 1/6(1*4*2+2*1*(-1)+3*0*0) = 1
$
故 $A^3 times.circle A^3 tilde.eq A^1 plus.circle A^2 plus.circle A^3$