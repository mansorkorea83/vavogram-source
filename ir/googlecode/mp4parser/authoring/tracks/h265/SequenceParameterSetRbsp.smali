.class public Lcom/googlecode/mp4parser/authoring/tracks/h265/SequenceParameterSetRbsp;
.super Ljava/lang/Object;
.source "SequenceParameterSetRbsp.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;-><init>(Ljava/io/InputStream;)V

    const/4 v15, 0x4

    const-string/jumbo v16, "sps_video_parameter_set_id"

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v15, v0

    const/4 v15, 0x3

    const-string/jumbo v16, "sps_max_sub_layers_minus1"

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v12, v0

    const-string/jumbo v15, "sps_temporal_id_nesting_flag"

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/googlecode/mp4parser/authoring/tracks/h265/SequenceParameterSetRbsp;->profile_tier_level(ILcom/googlecode/mp4parser/h264/read/CAVLCReader;)V

    const-string/jumbo v15, "sps_seq_parameter_set_id"

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    const-string/jumbo v15, "chroma_format_idc"

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v3

    const/4 v15, 0x3

    if-ne v3, v15, :cond_0

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->read1Bit()I

    const-string/jumbo v15, "pic_width_in_luma_samples"

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    const-string/jumbo v15, "pic_width_in_luma_samples"

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    const-string/jumbo v15, "conformance_window_flag"

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v15, "conf_win_left_offset"

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    const-string/jumbo v15, "conf_win_right_offset"

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    const-string/jumbo v15, "conf_win_top_offset"

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    const-string/jumbo v15, "conf_win_bottom_offset"

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v15, "bit_depth_luma_minus8"

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    const-string/jumbo v15, "bit_depth_chroma_minus8"

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    const-string/jumbo v15, "log2_max_pic_order_cnt_lsb_minus4"

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    const-string/jumbo v15, "sps_sub_layer_ordering_info_present_flag"

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v15, 0x0

    :goto_0
    sub-int v15, v12, v15

    add-int/lit8 v6, v15, 0x1

    new-array v9, v6, [I

    new-array v11, v6, [I

    new-array v10, v6, [I

    if-eqz v14, :cond_4

    const/4 v5, 0x0

    :goto_1
    if-le v5, v12, :cond_5

    const-string/jumbo v15, "log2_min_luma_coding_block_size_minus3"

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    const-string/jumbo v15, "log2_diff_max_min_luma_coding_block_size"

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    const-string/jumbo v15, "log2_min_transform_block_size_minus2"

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    const-string/jumbo v15, "log2_diff_max_min_transform_block_size"

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    const-string/jumbo v15, "max_transform_hierarchy_depth_inter"

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    const-string/jumbo v15, "max_transform_hierarchy_depth_intra"

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    const-string/jumbo v15, "scaling_list_enabled_flag"

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v15, "sps_scaling_list_data_present_flag"

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/googlecode/mp4parser/authoring/tracks/h265/SequenceParameterSetRbsp;->scaling_list_data(Lcom/googlecode/mp4parser/h264/read/CAVLCReader;)V

    :cond_1
    const-string/jumbo v15, "amp_enabled_flag"

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    const-string/jumbo v15, "sample_adaptive_offset_enabled_flag"

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    const-string/jumbo v15, "pcm_enabled_flag"

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v15, 0x4

    const-string/jumbo v16, "pcm_sample_bit_depth_luma_minus1"

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v15, v0

    const/4 v15, 0x4

    const-string/jumbo v16, "pcm_sample_bit_depth_chroma_minus1"

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v15, v0

    const-string/jumbo v15, "log2_min_pcm_luma_coding_block_size_minus3"

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    move v15, v12

    goto/16 :goto_0

    :cond_4
    move v5, v12

    goto :goto_1

    :cond_5
    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "sps_max_dec_pic_buffering_minus1["

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v15

    aput v15, v9, v5

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "sps_max_num_reorder_pics["

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v15

    aput v15, v11, v5

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "sps_max_latency_increase_plus1["

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v15

    aput v15, v10, v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1
.end method

.method private profile_tier_level(ILcom/googlecode/mp4parser/h264/read/CAVLCReader;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v20, 0x2

    const-string/jumbo v21, "general_profile_space"

    move-object/from16 v0, p2

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    const-string/jumbo v20, "general_tier_flag"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    const/16 v20, 0x5

    const-string/jumbo v21, "general_profile_idc"

    move-object/from16 v0, p2

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    const/16 v20, 0x20

    move/from16 v0, v20

    new-array v4, v0, [Z

    const/4 v6, 0x0

    :goto_0
    const/16 v20, 0x20

    move/from16 v0, v20

    if-lt v6, v0, :cond_1

    const-string/jumbo v20, "general_progressive_source_flag"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    const-string/jumbo v20, "general_interlaced_source_flag"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    const-string/jumbo v20, "general_non_packed_constraint_flag"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    const-string/jumbo v20, "general_frame_only_constraint_flag"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    const/16 v20, 0x2c

    const-string/jumbo v21, "general_reserved_zero_44bits"

    move-object/from16 v0, p2

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    invoke-virtual/range {p2 .. p2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readByte()I

    move/from16 v0, p1

    new-array v15, v0, [Z

    move/from16 v0, p1

    new-array v11, v0, [Z

    const/4 v5, 0x0

    :goto_1
    move/from16 v0, p1

    if-lt v5, v0, :cond_2

    if-lez p1, :cond_0

    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v7, v0, [I

    move/from16 v5, p1

    :goto_2
    const/16 v20, 0x8

    move/from16 v0, v20

    if-lt v5, v0, :cond_3

    :cond_0
    move/from16 v0, p1

    new-array v0, v0, [I

    move-object/from16 v16, v0

    move/from16 v0, p1

    new-array v0, v0, [Z

    move-object/from16 v19, v0

    move/from16 v0, p1

    new-array v14, v0, [I

    const/16 v20, 0x20

    move/from16 v0, p1

    move/from16 v1, v20

    filled-new-array {v0, v1}, [I

    move-result-object v20

    sget-object v21, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[Z

    move/from16 v0, p1

    new-array v0, v0, [Z

    move-object/from16 v17, v0

    move/from16 v0, p1

    new-array v9, v0, [Z

    move/from16 v0, p1

    new-array v12, v0, [Z

    move/from16 v0, p1

    new-array v8, v0, [Z

    move/from16 v0, p1

    new-array v0, v0, [J

    move-object/from16 v18, v0

    move/from16 v0, p1

    new-array v10, v0, [I

    const/4 v5, 0x0

    :goto_3
    move/from16 v0, p1

    if-lt v5, v0, :cond_4

    return-void

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool()Z

    move-result v20

    aput-boolean v20, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_2
    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "sub_layer_profile_present_flag["

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v20

    aput-boolean v20, v15, v5

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "sub_layer_level_present_flag["

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v20

    aput-boolean v20, v11, v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_3
    const/16 v20, 0x2

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "reserved_zero_2bits["

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p2

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v20

    aput v20, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_4
    aget-boolean v20, v15, v5

    if-eqz v20, :cond_5

    const/16 v20, 0x2

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "sub_layer_profile_space["

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p2

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v20

    aput v20, v16, v5

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "sub_layer_tier_flag["

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v20

    aput-boolean v20, v19, v5

    const/16 v20, 0x5

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "sub_layer_profile_idc["

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p2

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v20

    aput v20, v14, v5

    const/4 v6, 0x0

    :goto_4
    const/16 v20, 0x20

    move/from16 v0, v20

    if-lt v6, v0, :cond_7

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "sub_layer_progressive_source_flag["

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v20

    aput-boolean v20, v17, v5

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "sub_layer_interlaced_source_flag["

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v20

    aput-boolean v20, v9, v5

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "sub_layer_non_packed_constraint_flag["

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v20

    aput-boolean v20, v12, v5

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "sub_layer_frame_only_constraint_flag["

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v20

    aput-boolean v20, v8, v5

    const/16 v20, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(I)J

    move-result-wide v20

    aput-wide v20, v18, v5

    :cond_5
    aget-boolean v20, v11, v5

    if-eqz v20, :cond_6

    const/16 v20, 0x8

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "sub_layer_level_idc["

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p2

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v20

    aput v20, v10, v5

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :cond_7
    aget-object v20, v13, v5

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "sub_layer_profile_compatibility_flag["

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "]["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v21

    aput-boolean v21, v20, v6

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4
.end method

.method private scaling_list_data(Lcom/googlecode/mp4parser/h264/read/CAVLCReader;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x4

    new-array v8, v10, [[Z

    const/4 v10, 0x4

    new-array v7, v10, [[I

    const/4 v10, 0x2

    new-array v5, v10, [[I

    const/4 v10, 0x4

    new-array v0, v10, [[[I

    const/4 v9, 0x0

    :goto_0
    const/4 v10, 0x4

    if-lt v9, v10, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    :goto_1
    const/4 v10, 0x3

    if-ne v9, v10, :cond_8

    const/4 v10, 0x2

    :goto_2
    if-lt v3, v10, :cond_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x3

    if-ne v9, v10, :cond_3

    const/4 v10, 0x2

    :goto_3
    new-array v10, v10, [Z

    aput-object v10, v8, v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_4

    const/4 v10, 0x2

    :goto_4
    new-array v10, v10, [I

    aput-object v10, v7, v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_5

    const/4 v10, 0x2

    :goto_5
    new-array v10, v10, [[I

    aput-object v10, v0, v9

    aget-object v10, v8, v9

    invoke-virtual {p1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool()Z

    move-result v11

    aput-boolean v11, v10, v3

    aget-object v10, v8, v9

    aget-boolean v10, v10, v3

    if-nez v10, :cond_6

    aget-object v10, v7, v9

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "scaling_list_pred_matrix_id_delta["

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "]["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v11

    aput v11, v10, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v10, 0x6

    goto :goto_3

    :cond_4
    const/4 v10, 0x6

    goto :goto_4

    :cond_5
    const/4 v10, 0x6

    goto :goto_5

    :cond_6
    const/16 v4, 0x8

    const/16 v10, 0x40

    const/4 v11, 0x1

    shl-int/lit8 v12, v9, 0x1

    add-int/lit8 v12, v12, 0x4

    shl-int/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v10, 0x1

    if-le v9, v10, :cond_7

    add-int/lit8 v10, v9, -0x2

    aget-object v10, v5, v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "scaling_list_dc_coef_minus8["

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "- 2]["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readSE(Ljava/lang/String;)I

    move-result v11

    aput v11, v10, v3

    add-int/lit8 v10, v9, -0x2

    aget-object v10, v5, v10

    aget v10, v10, v3

    add-int/lit8 v4, v10, 0x8

    :cond_7
    aget-object v10, v0, v9

    new-array v11, v1, [I

    aput-object v11, v10, v3

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_2

    const-string/jumbo v10, "scaling_list_delta_coef "

    invoke-virtual {p1, v10}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readSE(Ljava/lang/String;)I

    move-result v6

    add-int v10, v4, v6

    add-int/lit16 v10, v10, 0x100

    rem-int/lit16 v4, v10, 0x100

    aget-object v10, v0, v9

    aget-object v10, v10, v3

    aput v4, v10, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_8
    const/4 v10, 0x6

    goto/16 :goto_2
.end method
