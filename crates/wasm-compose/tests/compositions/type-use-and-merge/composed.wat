(component
  (type (;0;)
    (instance
      (type (;0;) u32)
      (export (;1;) "t" (type (eq 0)))
      (type (;2;) (func (result 1)))
      (export (;0;) "f2" (func (type 2)))
      (type (;3;) (func (result 1)))
      (export (;1;) "f1" (func (type 3)))
    )
  )
  (import "c" (instance (;0;) (type 0)))
  (component (;0;)
    (type (;0;)
      (instance)
    )
    (import "b" (instance (;0;) (type 0)))
    (type (;1;)
      (instance)
    )
    (import "a" (instance (;1;) (type 1)))
  )
  (component (;1;)
    (type (;0;)
      (instance
        (type (;0;) u32)
        (export (;1;) "t" (type (eq 0)))
        (type (;2;) (func (result 1)))
        (export (;0;) "f2" (func (type 2)))
      )
    )
    (import "c" (instance (;0;) (type 0)))
  )
  (component (;2;)
    (type (;0;)
      (instance
        (type (;0;) u32)
        (type (;1;) u32)
        (export (;2;) "t" (type (eq 1)))
        (type (;3;) (func (result 2)))
        (export (;0;) "f1" (func (type 3)))
      )
    )
    (import "c" (instance (;0;) (type 0)))
  )
  (instance (;1;) (instantiate 2
      (with "c" (instance 0))
    )
  )
  (instance (;2;) (instantiate 1
      (with "c" (instance 0))
    )
  )
  (instance (;3;) (instantiate 0
      (with "b" (instance 2))
      (with "a" (instance 1))
    )
  )
)
