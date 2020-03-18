#  set up 
origin = [[Cdouble(i) for i in 1:3]]
target = [zeros(ComplexF64, 3)]

pointer_origin = pointer(origin,1)
pointer_target = pointer(target,1)

# perform the call
ccall(
    (:sht, "./sht.so"),
    Cint,
    (Ptr{Ptr{Cdouble}}, Ptr{Ptr{ComplexF64}}, Cint, Cint),
    pointer_origin, pointer_target, 3, 1)

println(target)  # want this to be [1.0, 2.0, 3.0]
