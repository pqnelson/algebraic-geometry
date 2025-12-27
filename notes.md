# TODO

- [ ] Define affine space (for differential geometry purposes)
- [ ] Finish linear algebra
- [ ] Finish group theory

# Commutative Algebra

- Hilbert basis theorem is in `hilbasis`
- `integral_closure` of a subring is defined in `algnum_1:def 3`
- minimal polynomial `algnum_1:def 9`
- Also, if `A is Subring of B`:
```mizar
theorem Th8: :: ALGNUM_1:5
  for A, B being Ring
  for x, y being Element of B
  for x1, y1 being Element of A
  st A is Subring of B & x = x1 & y = y1
  holds x + y = x1 + y1

theorem Th9: :: ALGNUM_1:6
  for A, B being Ring
  for x, y being Element of B
  for x1, y1 being Element of A
  st A is Subring of B & x = x1 & y = y1
  holds x * y = x1 * y1 
```
- `Maps(X,L)` is the module over `L` of all functions `X -> L`
  `vectsp13:def 16`
- `gaussint` defines Gaussian integers

# Differential Geometry

- Follow Dan Freed's notes on differential geometry and define a chart
  on a set $X$ as an ordered pair $(U,\phi)$ where $U\subset X$ and
  $\phi\colon U\to A^{n}$ such that $\phi(U)$ is connected,
  simply-connected, contractible (i.e., homeomorphic to $A^{n}$) and
  $A^{n}$ is a [topological] affine space.
  - We can define an expandable `let X be 1-sorted; mode Chart of
    X is Chart of the carrier of X;`
- We have a predicate on two charts of the same set, saying they
  `are_compatible_of_order_C|^ k` if their transition function is
  `C^k` differentiable (where `k` is an `ExtNat`)
- An atlas is a collection of charts which cover `X` and are pairwise
  compatible. 