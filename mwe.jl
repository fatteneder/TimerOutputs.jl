using TimerOutputs

to = TimerOutput()

@timeit to "sleep" begin # last_entered = now()
    sleep(0.05)
    @timeit to "myself" begin # last_entered = now() + 0.05
        # println(convert(Int64, time_ns()-to.last_entered))
        # println("before sleep:   $(time_ns())")
        sleep(1.05)
        # do_accumluate as times_ns() - last_entered
        # TimerOutputs.poll!(to)
        # println("before display: $(time_ns())")
        display(to) # scan all childern to find "myself" block and update times for all parents
    end
    sleep(0.6)
    # do_accumluate as times_ns() - last_entered
    sleep(0.05)
    @timeit to "myself2" begin # last_entered = now() + 0.05
        # println(convert(Int64, time_ns()-to.last_entered))
        # println("before sleep:   $(time_ns())")
        sleep(1.05)
        # do_accumluate as times_ns() - last_entered
        # TimerOutputs.poll!(to)
        # println("before display: $(time_ns())")
        display(to) # scan all childern to find "myself" block and update times for all parents
    end
    sleep(0.6)
    # do_accumluate as times_ns() - last_entered
end

# @timeit to "myself" begin
#     sleep(0.05)
#     display(to)
#     sleep(0.05)
# end

# @timeit to "another sleep" sleep(0.05)

# display(to)
# display(to)
display(to)
