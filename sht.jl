# set up 
origin = [Cdouble(i) for i in 1:3]
target = zeros(ComplexF64, 3)

# perform the call
GC.@preserve origin target ccall(
    (:sht, "./sht.so"),
    Cint,
    (Ptr{Ptr{Cdouble}}, Ptr{Ptr{ComplexF64}}, Cint, Cint),
    [pointer(origin)], [pointer(target)], 3, 1)

println(target)  # want this to be [1.0, 2.0, 3.0]
