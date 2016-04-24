In ModelSim, you will need to add the UPF and Power Aware libraries:

        vmap mtiUPF /w/apps3/Mentor/ModelsimSE/v6.6a/modeltech/upf_lib
        vmap mtiPA /w/apps3/Mentor/ModelsimSE/v6.6a/modeltech/pa_lib

To simulate with your lab3.upf, you will need to create a power aware simulation:

        vopt test_NLC_4sec_10th_order_32ch_v0 -pa_upf nlc.upf

And to run the simulation, you will need to include the power aware library:

        vsim -pa work.test_NLC_4sec_10th_order_32ch_v0 -L mtiPA

Then

        run -all
