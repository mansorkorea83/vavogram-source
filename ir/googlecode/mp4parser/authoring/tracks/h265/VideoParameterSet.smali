.class public Lcom/googlecode/mp4parser/authoring/tracks/h265/VideoParameterSet;
.super Ljava/lang/Object;
.source "VideoParameterSet.java"


# instance fields
.field vps:Ljava/nio/ByteBuffer;

.field vps_parameter_set_id:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/tracks/h265/VideoParameterSet;->vps:Ljava/nio/ByteBuffer;

    new-instance v7, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;

    new-instance v20, Lcom/googlecode/mp4parser/util/ByteBufferByteChannel;

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v19

    check-cast v19, Ljava/nio/ByteBuffer;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/googlecode/mp4parser/util/ByteBufferByteChannel;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static/range {v20 .. v20}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;-><init>(Ljava/io/InputStream;)V

    const/16 v19, 0x4

    const-string/jumbo v20, "vps_parameter_set_id"

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/mp4parser/authoring/tracks/h265/VideoParameterSet;->vps_parameter_set_id:I

    const/16 v19, 0x2

    const-string/jumbo v20, "vps_reserved_three_2bits"

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    const/16 v19, 0x6

    const-string/jumbo v20, "vps_max_layers_minus1"

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    const/16 v19, 0x3

    const-string/jumbo v20, "vps_max_sub_layers_minus1"

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v13

    const-string/jumbo v19, "vps_temporal_id_nesting_flag"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    const/16 v19, 0x10

    const-string/jumbo v20, "vps_reserved_0xffff_16bits"

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v7}, Lcom/googlecode/mp4parser/authoring/tracks/h265/VideoParameterSet;->profile_tier_level(ILcom/googlecode/mp4parser/h264/read/CAVLCReader;)V

    const-string/jumbo v19, "vps_sub_layer_ordering_info_present_flag"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    const/16 v19, 0x1

    :goto_0
    move/from16 v0, v19

    new-array v9, v0, [I

    if-eqz v17, :cond_4

    const/16 v19, 0x1

    :goto_1
    move/from16 v0, v19

    new-array v12, v0, [I

    if-eqz v17, :cond_5

    const/16 v19, 0x1

    :goto_2
    move/from16 v0, v19

    new-array v10, v0, [I

    if-eqz v17, :cond_6

    const/4 v4, 0x0

    :goto_3
    if-le v4, v13, :cond_7

    const/16 v19, 0x6

    const-string/jumbo v20, "vps_max_layer_id"

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v11

    const-string/jumbo v19, "vps_num_layer_sets_minus1"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v15

    filled-new-array {v15, v11}, [I

    move-result-object v19

    sget-object v20, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Z

    const/4 v4, 0x1

    :goto_4
    if-le v4, v15, :cond_8

    const-string/jumbo v19, "vps_timing_info_present_flag"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    const/16 v19, 0x20

    const-string/jumbo v20, "vps_num_units_in_tick"

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const/16 v19, 0x20

    const-string/jumbo v20, "vps_time_scale"

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-string/jumbo v19, "vps_poc_proportional_to_timing_flag"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_0

    const-string/jumbo v19, "vps_num_ticks_poc_diff_one_minus1"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v19, "vps_num_hrd_parameters"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v14

    new-array v3, v14, [I

    new-array v2, v14, [Z

    const/4 v4, 0x0

    :goto_5
    if-lt v4, v14, :cond_a

    :cond_1
    const-string/jumbo v19, "vps_extension_flag"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    :goto_6
    invoke-virtual {v7}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->moreRBSPData()Z

    move-result v19

    if-nez v19, :cond_c

    :cond_2
    invoke-virtual {v7}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readTrailingBits()V

    return-void

    :cond_3
    add-int/lit8 v19, v13, 0x1

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v19, v13, 0x1

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v19, v13, 0x1

    goto/16 :goto_2

    :cond_6
    move v4, v13

    goto/16 :goto_3

    :cond_7
    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "vps_max_dec_pic_buffering_minus1["

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v19

    aput v19, v9, v4

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "vps_max_dec_pic_buffering_minus1["

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v19

    aput v19, v12, v4

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "vps_max_dec_pic_buffering_minus1["

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v19

    aput v19, v10, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    :cond_8
    const/4 v5, 0x0

    :goto_7
    if-le v5, v11, :cond_9

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    :cond_9
    aget-object v19, v6, v4

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "layer_id_included_flag["

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "]["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v20

    aput-boolean v20, v19, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_a
    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "hrd_layer_set_idx["

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v19

    aput v19, v3, v4

    if-lez v4, :cond_b

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "cprms_present_flag["

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v19

    aput-boolean v19, v2, v4

    :goto_8
    aget-boolean v19, v2, v4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v13, v7}, Lcom/googlecode/mp4parser/authoring/tracks/h265/VideoParameterSet;->hrd_parameters(ZILcom/googlecode/mp4parser/h264/read/CAVLCReader;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    :cond_b
    const/16 v19, 0x0

    const/16 v20, 0x1

    aput-boolean v20, v2, v19

    goto :goto_8

    :cond_c
    const-string/jumbo v19, "vps_extension_data_flag"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    goto/16 :goto_6
.end method

.method private hrd_parameters(ZILcom/googlecode/mp4parser/h264/read/CAVLCReader;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    if-eqz p1, :cond_3

    const-string/jumbo v9, "nal_hrd_parameters_present_flag"

    invoke-virtual {p3, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v6

    const-string/jumbo v9, "vcl_hrd_parameters_present_flag"

    invoke-virtual {p3, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v8

    if-nez v6, :cond_0

    if-eqz v8, :cond_3

    :cond_0
    const-string/jumbo v9, "sub_pic_hrd_params_present_flag"

    invoke-virtual {p3, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v9, 0x8

    const-string/jumbo v10, "tick_divisor_minus2"

    invoke-virtual {p3, v9, v10}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    const/4 v9, 0x5

    const-string/jumbo v10, "du_cpb_removal_delay_increment_length_minus1"

    invoke-virtual {p3, v9, v10}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    const-string/jumbo v9, "sub_pic_cpb_params_in_pic_timing_sei_flag"

    invoke-virtual {p3, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    const/4 v9, 0x5

    const-string/jumbo v10, "dpb_output_delay_du_length_minus1"

    invoke-virtual {p3, v9, v10}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    :cond_1
    const/4 v9, 0x4

    const-string/jumbo v10, "bit_rate_scale"

    invoke-virtual {p3, v9, v10}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    const/4 v9, 0x4

    const-string/jumbo v10, "cpb_size_scale"

    invoke-virtual {p3, v9, v10}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    if-eqz v7, :cond_2

    const/4 v9, 0x4

    const-string/jumbo v10, "cpb_size_du_scale"

    invoke-virtual {p3, v9, v10}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    :cond_2
    const/4 v9, 0x5

    const-string/jumbo v10, "initial_cpb_removal_delay_length_minus1"

    invoke-virtual {p3, v9, v10}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    const/4 v9, 0x5

    const-string/jumbo v10, "au_cpb_removal_delay_length_minus1"

    invoke-virtual {p3, v9, v10}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    const/4 v9, 0x5

    const-string/jumbo v10, "dpb_output_delay_length_minus1"

    invoke-virtual {p3, v9, v10}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    :cond_3
    new-array v2, p2, [Z

    new-array v3, p2, [Z

    new-array v5, p2, [Z

    new-array v0, p2, [I

    new-array v1, p2, [I

    const/4 v4, 0x0

    :goto_0
    if-le v4, p2, :cond_4

    return-void

    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "fixed_pic_rate_general_flag["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v9

    aput-boolean v9, v2, v4

    aget-boolean v9, v2, v4

    if-nez v9, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "fixed_pic_rate_within_cvs_flag["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v9

    aput-boolean v9, v3, v4

    :cond_5
    aget-boolean v9, v3, v4

    if-eqz v9, :cond_9

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "elemental_duration_in_tc_minus1["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v9

    aput v9, v1, v4

    :goto_1
    aget-boolean v9, v5, v4

    if-nez v9, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "cpb_cnt_minus1["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v9

    aput v9, v0, v4

    :cond_6
    if-eqz v6, :cond_7

    aget v9, v0, v4

    invoke-virtual {p0, v4, v9, v7, p3}, Lcom/googlecode/mp4parser/authoring/tracks/h265/VideoParameterSet;->sub_layer_hrd_parameters(IIZLcom/googlecode/mp4parser/h264/read/CAVLCReader;)V

    :cond_7
    if-eqz v8, :cond_8

    aget v9, v0, v4

    invoke-virtual {p0, v4, v9, v7, p3}, Lcom/googlecode/mp4parser/authoring/tracks/h265/VideoParameterSet;->sub_layer_hrd_parameters(IIZLcom/googlecode/mp4parser/h264/read/CAVLCReader;)V

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "low_delay_hrd_flag["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v9

    aput-boolean v9, v5, v4

    goto :goto_1
.end method


# virtual methods
.method public profile_tier_level(ILcom/googlecode/mp4parser/h264/read/CAVLCReader;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v18, 0x2

    const-string/jumbo v19, "general_profile_space "

    move-object/from16 v0, p2

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    const-string/jumbo v18, "general_tier_flag"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    const/16 v18, 0x5

    const-string/jumbo v19, "general_profile_idc"

    move-object/from16 v0, p2

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    const/16 v18, 0x20

    move/from16 v0, v18

    new-array v4, v0, [Z

    const/4 v6, 0x0

    :goto_0
    const/16 v18, 0x20

    move/from16 v0, v18

    if-lt v6, v0, :cond_1

    const-string/jumbo v18, "general_progressive_source_flag"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    const-string/jumbo v18, "general_interlaced_source_flag"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    const-string/jumbo v18, "general_non_packed_constraint_flag"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    const-string/jumbo v18, "general_frame_only_constraint_flag"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    const/16 v18, 0x2c

    const-string/jumbo v19, "general_reserved_zero_44bits"

    move-object/from16 v0, p2

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const/16 v18, 0x8

    const-string/jumbo v19, "general_level_idc"

    move-object/from16 v0, p2

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move/from16 v0, p1

    new-array v14, v0, [Z

    move/from16 v0, p1

    new-array v10, v0, [Z

    const/4 v5, 0x0

    :goto_1
    move/from16 v0, p1

    if-lt v5, v0, :cond_2

    if-lez p1, :cond_0

    move/from16 v5, p1

    :goto_2
    const/16 v18, 0x8

    move/from16 v0, v18

    if-lt v5, v0, :cond_3

    :cond_0
    move/from16 v0, p1

    new-array v15, v0, [I

    move/from16 v0, p1

    new-array v0, v0, [Z

    move-object/from16 v17, v0

    move/from16 v0, p1

    new-array v13, v0, [I

    const/16 v18, 0x20

    move/from16 v0, p1

    move/from16 v1, v18

    filled-new-array {v0, v1}, [I

    move-result-object v18

    sget-object v19, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[Z

    move/from16 v0, p1

    new-array v0, v0, [Z

    move-object/from16 v16, v0

    move/from16 v0, p1

    new-array v8, v0, [Z

    move/from16 v0, p1

    new-array v11, v0, [Z

    move/from16 v0, p1

    new-array v7, v0, [Z

    move/from16 v0, p1

    new-array v9, v0, [I

    const/4 v5, 0x0

    :goto_3
    move/from16 v0, p1

    if-lt v5, v0, :cond_4

    return-void

    :cond_1
    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "general_profile_compatibility_flag["

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v18

    aput-boolean v18, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_2
    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "sub_layer_profile_present_flag["

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v18

    aput-boolean v18, v14, v5

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "sub_layer_level_present_flag["

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v18

    aput-boolean v18, v10, v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_3
    const/16 v18, 0x2

    const-string/jumbo v19, "reserved_zero_2bits"

    move-object/from16 v0, p2

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_4
    aget-boolean v18, v14, v5

    if-eqz v18, :cond_5

    const/16 v18, 0x2

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "sub_layer_profile_space["

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v18

    aput v18, v15, v5

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "sub_layer_tier_flag["

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v18

    aput-boolean v18, v17, v5

    const/16 v18, 0x5

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "sub_layer_profile_idc["

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v18

    aput v18, v13, v5

    const/4 v6, 0x0

    :goto_4
    const/16 v18, 0x20

    move/from16 v0, v18

    if-lt v6, v0, :cond_7

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "sub_layer_progressive_source_flag["

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v18

    aput-boolean v18, v16, v5

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "sub_layer_interlaced_source_flag["

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v18

    aput-boolean v18, v8, v5

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "sub_layer_non_packed_constraint_flag["

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v18

    aput-boolean v18, v11, v5

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "sub_layer_frame_only_constraint_flag["

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v18

    aput-boolean v18, v7, v5

    const/16 v18, 0x2c

    const-string/jumbo v19, "reserved"

    move-object/from16 v0, p2

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    :cond_5
    aget-boolean v18, v10, v5

    if-eqz v18, :cond_6

    const/16 v18, 0x8

    const-string/jumbo v19, "sub_layer_level_idc"

    move-object/from16 v0, p2

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v18

    aput v18, v9, v5

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :cond_7
    aget-object v18, v12, v5

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "sub_layer_profile_compatibility_flag["

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "]["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v19

    aput-boolean v19, v18, v6

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4
.end method

.method sub_layer_hrd_parameters(IIZLcom/googlecode/mp4parser/h264/read/CAVLCReader;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array v1, p2, [I

    new-array v4, p2, [I

    new-array v3, p2, [I

    new-array v0, p2, [I

    new-array v2, p2, [Z

    const/4 v5, 0x0

    :goto_0
    if-le v5, p2, :cond_0

    return-void

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "bit_rate_value_minus1["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v6

    aput v6, v1, v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "cpb_size_value_minus1["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v6

    aput v6, v4, v5

    if-eqz p3, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "cpb_size_du_value_minus1["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v6

    aput v6, v3, v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "bit_rate_du_value_minus1["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v6

    aput v6, v0, v5

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "cbr_flag["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v6

    aput-boolean v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method

.method public toByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h265/VideoParameterSet;->vps:Ljava/nio/ByteBuffer;

    return-object v0
.end method
