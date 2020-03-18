#  set up 
origin = collect(1.0:3.0)
target = zeros(3)

pointer_origin = pointer([origin],1)
pointer_target = pointer([target],1)

# perform the call
println(target)

ccall(
    (:sht, "./sht.so"),
    Cint,
    (Ptr{Ptr{Cdouble}}, Ptr{Ptr{Cdouble}}, Cint, Cint),
    pointer_origin, pointer_target, 3, 1)

println(target)  # want this to be [1.0, 2.0, 3.0]
