.class public Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;
.super Lcom/googlecode/mp4parser/h264/model/BitstreamElement;
.source "SeqParameterSet.java"


# instance fields
.field public bit_depth_chroma_minus8:I

.field public bit_depth_luma_minus8:I

.field public chroma_format_idc:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

.field public constraint_set_0_flag:Z

.field public constraint_set_1_flag:Z

.field public constraint_set_2_flag:Z

.field public constraint_set_3_flag:Z

.field public constraint_set_4_flag:Z

.field public constraint_set_5_flag:Z

.field public delta_pic_order_always_zero_flag:Z

.field public direct_8x8_inference_flag:Z

.field public entropy_coding_mode_flag:Z

.field public field_pic_flag:Z

.field public frame_crop_bottom_offset:I

.field public frame_crop_left_offset:I

.field public frame_crop_right_offset:I

.field public frame_crop_top_offset:I

.field public frame_cropping_flag:Z

.field public frame_mbs_only_flag:Z

.field public gaps_in_frame_num_value_allowed_flag:Z

.field public level_idc:I

.field public log2_max_frame_num_minus4:I

.field public log2_max_pic_order_cnt_lsb_minus4:I

.field public mb_adaptive_frame_field_flag:Z

.field public num_ref_frames:I

.field public num_ref_frames_in_pic_order_cnt_cycle:I

.field public offsetForRefFrame:[I

.field public offset_for_non_ref_pic:I

.field public offset_for_top_to_bottom_field:I

.field public pic_height_in_map_units_minus1:I

.field public pic_order_cnt_type:I

.field public pic_width_in_mbs_minus1:I

.field public profile_idc:I

.field public qpprime_y_zero_transform_bypass_flag:Z

.field public reserved_zero_2bits:J

.field public residual_color_transform_flag:Z

.field public scalingMatrix:Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;

.field public seq_parameter_set_id:I

.field public vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

.field public weighted_bipred_idc:I

.field public weighted_pred_flag:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/googlecode/mp4parser/h264/model/BitstreamElement;-><init>()V

    return-void
.end method

.method private static ReadVUIParameters(Lcom/googlecode/mp4parser/h264/read/CAVLCReader;)Lcom/googlecode/mp4parser/h264/model/VUIParameters;
    .locals 9
    .param p0, "reader"    # Lcom/googlecode/mp4parser/h264/read/CAVLCReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x20

    const/16 v7, 0x10

    const/16 v6, 0x8

    .line 208
    new-instance v3, Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    invoke-direct {v3}, Lcom/googlecode/mp4parser/h264/model/VUIParameters;-><init>()V

    .line 210
    .local v3, "vuip":Lcom/googlecode/mp4parser/h264/model/VUIParameters;
    const-string/jumbo v4, "VUI: aspect_ratio_info_present_flag"

    invoke-virtual {p0, v4}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v4

    .line 209
    iput-boolean v4, v3, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->aspect_ratio_info_present_flag:Z

    .line 211
    iget-boolean v4, v3, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->aspect_ratio_info_present_flag:Z

    if-eqz v4, :cond_0

    .line 213
    const-string/jumbo v4, "VUI: aspect_ratio"

    .line 212
    invoke-virtual {p0, v6, v4}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Lcom/googlecode/mp4parser/h264/model/AspectRatio;->fromValue(I)Lcom/googlecode/mp4parser/h264/model/AspectRatio;

    move-result-object v4

    iput-object v4, v3, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->aspect_ratio:Lcom/googlecode/mp4parser/h264/model/AspectRatio;

    .line 214
    iget-object v4, v3, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->aspect_ratio:Lcom/googlecode/mp4parser/h264/model/AspectRatio;

    sget-object v5, Lcom/googlecode/mp4parser/h264/model/AspectRatio;->Extended_SAR:Lcom/googlecode/mp4parser/h264/model/AspectRatio;

    if-ne v4, v5, :cond_0

    .line 215
    const-string/jumbo v4, "VUI: sar_width"

    invoke-virtual {p0, v7, v4}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, v3, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->sar_width:I

    .line 216
    const-string/jumbo v4, "VUI: sar_height"

    invoke-virtual {p0, v7, v4}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, v3, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->sar_height:I

    .line 220
    :cond_0
    const-string/jumbo v4, "VUI: overscan_info_present_flag"

    invoke-virtual {p0, v4}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v4

    .line 219
    iput-boolean v4, v3, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->overscan_info_present_flag:Z

    .line 221
    iget-boolean v4, v3, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->overscan_info_present_flag:Z

    if-eqz v4, :cond_1

    .line 223
    const-string/jumbo v4, "VUI: overscan_appropriate_flag"

    invoke-virtual {p0, v4}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v4

    .line 222
    iput-boolean v4, v3, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->overscan_appropriate_flag:Z

    .line 226
    :cond_1
    const-string/jumbo v4, "VUI: video_signal_type_present_flag"

    invoke-virtual {p0, v4}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v4

    .line 225
    iput-boolean v4, v3, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->video_signal_type_present_flag:Z

    .line 227
    iget-boolean v4, v3, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->video_signal_type_present_flag:Z

    if-eqz v4, :cond_2

    .line 228
    const/4 v4, 0x3

    const-string/jumbo v5, "VUI: video_format"

    invoke-virtual {p0, v4, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, v3, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->video_format:I

    .line 230
    const-string/jumbo v4, "VUI: video_full_range_flag"

    invoke-virtual {p0, v4}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v4

    .line 229
    iput-boolean v4, v3, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->video_full_range_flag:Z

    .line 232
    const-string/jumbo v4, "VUI: colour_description_present_flag"

    invoke-virtual {p0, v4}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v4

    .line 231
    iput-boolean v4, v3, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->colour_description_present_flag:Z

    .line 233
    iget-boolean v4, v3, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->colour_description_present_flag:Z

    if-eqz v4, :cond_2

    .line 235
    const-string/jumbo v4, "VUI: colour_primaries"

    .line 234
    invoke-virtual {p0, v6, v4}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, v3, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->colour_primaries:I

    .line 237
    const-string/jumbo v4, "VUI: transfer_characteristics"

    .line 236
    invoke-virtual {p0, v6, v4}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, v3, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->transfer_characteristics:I

    .line 239
    const-string/jumbo v4, "VUI: matrix_coefficients"

    .line 238
    invoke-virtual {p0, v6, v4}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, v3, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->matrix_coefficients:I

    .line 243
    :cond_2
    const-string/jumbo v4, "VUI: chroma_loc_info_present_flag"

    invoke-virtual {p0, v4}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v4

    .line 242
    iput-boolean v4, v3, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->chroma_loc_info_present_flag:Z

    .line 244
    iget-boolean v4, v3, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->chroma_loc_info_present_flag:Z

    if-eqz v4, :cond_3

    .line 246
    const-string/jumbo v4, "VUI chroma_sample_loc_type_top_field"

    invoke-virtual {p0, v4}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v4

    .line 245
    iput v4, v3, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->chroma_sample_loc_type_top_field:I

    .line 248
    const-string/jumbo v4, "VUI chroma_sample_loc_type_bottom_field"

    invoke-virtual {p0, v4}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v4

    .line 247
    iput v4, v3, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->chroma_sample_loc_type_bottom_field:I

    .line 251
    :cond_3
    const-string/jumbo v4, "VUI: timing_info_present_flag"

    invoke-virtual {p0, v4}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v4

    .line 250
    iput-boolean v4, v3, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->timing_info_present_flag:Z

    .line 252
    iget-boolean v4, v3, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->timing_info_present_flag:Z

    if-eqz v4, :cond_4

    .line 254
    const-string/jumbo v4, "VUI: num_units_in_tick"

    .line 253
    invoke-virtual {p0, v8, v4}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, v3, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->num_units_in_tick:I

    .line 255
    const-string/jumbo v4, "VUI: time_scale"

    invoke-virtual {p0, v8, v4}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, v3, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->time_scale:I

    .line 257
    const-string/jumbo v4, "VUI: fixed_frame_rate_flag"

    invoke-virtual {p0, v4}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v4

    .line 256
    iput-boolean v4, v3, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->fixed_frame_rate_flag:Z

    .line 260
    :cond_4
    const-string/jumbo v4, "VUI: nal_hrd_parameters_present_flag"

    invoke-virtual {p0, v4}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v1

    .line 261
    .local v1, "nal_hrd_parameters_present_flag":Z
    if-eqz v1, :cond_5

    .line 262
    invoke-static {p0}, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->readHRDParameters(Lcom/googlecode/mp4parser/h264/read/CAVLCReader;)Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    move-result-object v4

    iput-object v4, v3, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->nalHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    .line 264
    :cond_5
    const-string/jumbo v4, "VUI: vcl_hrd_parameters_present_flag"

    invoke-virtual {p0, v4}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v2

    .line 265
    .local v2, "vcl_hrd_parameters_present_flag":Z
    if-eqz v2, :cond_6

    .line 266
    invoke-static {p0}, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->readHRDParameters(Lcom/googlecode/mp4parser/h264/read/CAVLCReader;)Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    move-result-object v4

    iput-object v4, v3, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->vclHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    .line 267
    :cond_6
    if-nez v1, :cond_7

    if-eqz v2, :cond_8

    .line 269
    :cond_7
    const-string/jumbo v4, "VUI: low_delay_hrd_flag"

    invoke-virtual {p0, v4}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v4

    .line 268
    iput-boolean v4, v3, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->low_delay_hrd_flag:Z

    .line 272
    :cond_8
    const-string/jumbo v4, "VUI: pic_struct_present_flag"

    invoke-virtual {p0, v4}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v4

    .line 271
    iput-boolean v4, v3, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->pic_struct_present_flag:Z

    .line 274
    const-string/jumbo v4, "VUI: bitstream_restriction_flag"

    invoke-virtual {p0, v4}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v0

    .line 275
    .local v0, "bitstream_restriction_flag":Z
    if-eqz v0, :cond_9

    .line 276
    new-instance v4, Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;

    invoke-direct {v4}, Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;-><init>()V

    iput-object v4, v3, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->bitstreamRestriction:Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;

    .line 277
    iget-object v4, v3, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->bitstreamRestriction:Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;

    .line 278
    const-string/jumbo v5, "VUI: motion_vectors_over_pic_boundaries_flag"

    invoke-virtual {p0, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v5

    .line 277
    iput-boolean v5, v4, Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;->motion_vectors_over_pic_boundaries_flag:Z

    .line 279
    iget-object v4, v3, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->bitstreamRestriction:Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;

    .line 280
    const-string/jumbo v5, "VUI max_bytes_per_pic_denom"

    invoke-virtual {p0, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v5

    .line 279
    iput v5, v4, Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;->max_bytes_per_pic_denom:I

    .line 281
    iget-object v4, v3, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->bitstreamRestriction:Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;

    .line 282
    const-string/jumbo v5, "VUI max_bits_per_mb_denom"

    invoke-virtual {p0, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v5

    .line 281
    iput v5, v4, Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;->max_bits_per_mb_denom:I

    .line 283
    iget-object v4, v3, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->bitstreamRestriction:Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;

    .line 284
    const-string/jumbo v5, "VUI log2_max_mv_length_horizontal"

    invoke-virtual {p0, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v5

    .line 283
    iput v5, v4, Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;->log2_max_mv_length_horizontal:I

    .line 285
    iget-object v4, v3, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->bitstreamRestriction:Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;

    .line 286
    const-string/jumbo v5, "VUI log2_max_mv_length_vertical"

    invoke-virtual {p0, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v5

    .line 285
    iput v5, v4, Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;->log2_max_mv_length_vertical:I

    .line 287
    iget-object v4, v3, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->bitstreamRestriction:Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;

    .line 288
    const-string/jumbo v5, "VUI num_reorder_frames"

    invoke-virtual {p0, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v5

    .line 287
    iput v5, v4, Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;->num_reorder_frames:I

    .line 289
    iget-object v4, v3, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->bitstreamRestriction:Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;

    .line 290
    const-string/jumbo v5, "VUI max_dec_frame_buffering"

    invoke-virtual {p0, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v5

    .line 289
    iput v5, v4, Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;->max_dec_frame_buffering:I

    .line 293
    :cond_9
    return-object v3
.end method

.method public static read(Ljava/io/InputStream;)Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;
    .locals 9
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x8

    .line 87
    new-instance v1, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;

    invoke-direct {v1, p0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;-><init>(Ljava/io/InputStream;)V

    .line 88
    .local v1, "reader":Lcom/googlecode/mp4parser/h264/read/CAVLCReader;
    new-instance v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    invoke-direct {v3}, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;-><init>()V

    .line 90
    .local v3, "sps":Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;
    const-string/jumbo v5, "SPS: profile_idc"

    invoke-virtual {v1, v8, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v6

    long-to-int v5, v6

    iput v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->profile_idc:I

    .line 92
    const-string/jumbo v5, "SPS: constraint_set_0_flag"

    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v5

    .line 91
    iput-boolean v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->constraint_set_0_flag:Z

    .line 94
    const-string/jumbo v5, "SPS: constraint_set_1_flag"

    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v5

    .line 93
    iput-boolean v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->constraint_set_1_flag:Z

    .line 96
    const-string/jumbo v5, "SPS: constraint_set_2_flag"

    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v5

    .line 95
    iput-boolean v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->constraint_set_2_flag:Z

    .line 98
    const-string/jumbo v5, "SPS: constraint_set_3_flag"

    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v5

    .line 97
    iput-boolean v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->constraint_set_3_flag:Z

    .line 100
    const-string/jumbo v5, "SPS: constraint_set_4_flag"

    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v5

    .line 99
    iput-boolean v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->constraint_set_4_flag:Z

    .line 102
    const-string/jumbo v5, "SPS: constraint_set_5_flag"

    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v5

    .line 101
    iput-boolean v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->constraint_set_5_flag:Z

    .line 104
    const/4 v5, 0x2

    const-string/jumbo v6, "SPS: reserved_zero_2bits"

    invoke-virtual {v1, v5, v6}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->reserved_zero_2bits:J

    .line 105
    const-string/jumbo v5, "SPS: level_idc"

    invoke-virtual {v1, v8, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v6

    long-to-int v5, v6

    iput v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->level_idc:I

    .line 106
    const-string/jumbo v5, "SPS: seq_parameter_set_id"

    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->seq_parameter_set_id:I

    .line 108
    iget v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->profile_idc:I

    const/16 v6, 0x64

    if-eq v5, v6, :cond_0

    iget v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->profile_idc:I

    const/16 v6, 0x6e

    if-eq v5, v6, :cond_0

    .line 109
    iget v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->profile_idc:I

    const/16 v6, 0x7a

    if-eq v5, v6, :cond_0

    iget v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->profile_idc:I

    const/16 v6, 0x90

    if-ne v5, v6, :cond_7

    .line 111
    :cond_0
    const-string/jumbo v5, "SPS: chroma_format_idc"

    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v5

    .line 110
    invoke-static {v5}, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->fromId(I)Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    move-result-object v5

    iput-object v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->chroma_format_idc:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    .line 112
    iget-object v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->chroma_format_idc:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    sget-object v6, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->YUV_444:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    if-ne v5, v6, :cond_1

    .line 114
    const-string/jumbo v5, "SPS: residual_color_transform_flag"

    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v5

    .line 113
    iput-boolean v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->residual_color_transform_flag:Z

    .line 117
    :cond_1
    const-string/jumbo v5, "SPS: bit_depth_luma_minus8"

    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v5

    .line 116
    iput v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->bit_depth_luma_minus8:I

    .line 119
    const-string/jumbo v5, "SPS: bit_depth_chroma_minus8"

    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v5

    .line 118
    iput v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->bit_depth_chroma_minus8:I

    .line 121
    const-string/jumbo v5, "SPS: qpprime_y_zero_transform_bypass_flag"

    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v5

    .line 120
    iput-boolean v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->qpprime_y_zero_transform_bypass_flag:Z

    .line 123
    const-string/jumbo v5, "SPS: seq_scaling_matrix_present_lag"

    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v2

    .line 124
    .local v2, "seqScalingMatrixPresent":Z
    if-eqz v2, :cond_2

    .line 125
    invoke-static {v1, v3}, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->readScalingListMatrix(Lcom/googlecode/mp4parser/h264/read/CAVLCReader;Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;)V

    .line 131
    .end local v2    # "seqScalingMatrixPresent":Z
    :cond_2
    :goto_0
    const-string/jumbo v5, "SPS: log2_max_frame_num_minus4"

    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v5

    .line 130
    iput v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->log2_max_frame_num_minus4:I

    .line 132
    const-string/jumbo v5, "SPS: pic_order_cnt_type"

    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->pic_order_cnt_type:I

    .line 133
    iget v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->pic_order_cnt_type:I

    if-nez v5, :cond_8

    .line 135
    const-string/jumbo v5, "SPS: log2_max_pic_order_cnt_lsb_minus4"

    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v5

    .line 134
    iput v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->log2_max_pic_order_cnt_lsb_minus4:I

    .line 151
    :cond_3
    const-string/jumbo v5, "SPS: num_ref_frames"

    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->num_ref_frames:I

    .line 153
    const-string/jumbo v5, "SPS: gaps_in_frame_num_value_allowed_flag"

    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v5

    .line 152
    iput-boolean v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->gaps_in_frame_num_value_allowed_flag:Z

    .line 155
    const-string/jumbo v5, "SPS: pic_width_in_mbs_minus1"

    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v5

    .line 154
    iput v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->pic_width_in_mbs_minus1:I

    .line 157
    const-string/jumbo v5, "SPS: pic_height_in_map_units_minus1"

    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v5

    .line 156
    iput v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->pic_height_in_map_units_minus1:I

    .line 158
    const-string/jumbo v5, "SPS: frame_mbs_only_flag"

    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_mbs_only_flag:Z

    .line 159
    iget-boolean v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_mbs_only_flag:Z

    if-nez v5, :cond_4

    .line 161
    const-string/jumbo v5, "SPS: mb_adaptive_frame_field_flag"

    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v5

    .line 160
    iput-boolean v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->mb_adaptive_frame_field_flag:Z

    .line 164
    :cond_4
    const-string/jumbo v5, "SPS: direct_8x8_inference_flag"

    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v5

    .line 163
    iput-boolean v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->direct_8x8_inference_flag:Z

    .line 165
    const-string/jumbo v5, "SPS: frame_cropping_flag"

    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_cropping_flag:Z

    .line 166
    iget-boolean v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_cropping_flag:Z

    if-eqz v5, :cond_5

    .line 168
    const-string/jumbo v5, "SPS: frame_crop_left_offset"

    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v5

    .line 167
    iput v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_crop_left_offset:I

    .line 170
    const-string/jumbo v5, "SPS: frame_crop_right_offset"

    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v5

    .line 169
    iput v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_crop_right_offset:I

    .line 172
    const-string/jumbo v5, "SPS: frame_crop_top_offset"

    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v5

    .line 171
    iput v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_crop_top_offset:I

    .line 174
    const-string/jumbo v5, "SPS: frame_crop_bottom_offset"

    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v5

    .line 173
    iput v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_crop_bottom_offset:I

    .line 177
    :cond_5
    const-string/jumbo v5, "SPS: vui_parameters_present_flag"

    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v4

    .line 178
    .local v4, "vui_parameters_present_flag":Z
    if-eqz v4, :cond_6

    .line 179
    invoke-static {v1}, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->ReadVUIParameters(Lcom/googlecode/mp4parser/h264/read/CAVLCReader;)Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    move-result-object v5

    iput-object v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    .line 181
    :cond_6
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readTrailingBits()V

    .line 183
    return-object v3

    .line 128
    .end local v4    # "vui_parameters_present_flag":Z
    :cond_7
    sget-object v5, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->YUV_420:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    iput-object v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->chroma_format_idc:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    goto/16 :goto_0

    .line 136
    :cond_8
    iget v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->pic_order_cnt_type:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 138
    const-string/jumbo v5, "SPS: delta_pic_order_always_zero_flag"

    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v5

    .line 137
    iput-boolean v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->delta_pic_order_always_zero_flag:Z

    .line 140
    const-string/jumbo v5, "SPS: offset_for_non_ref_pic"

    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readSE(Ljava/lang/String;)I

    move-result v5

    .line 139
    iput v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->offset_for_non_ref_pic:I

    .line 142
    const-string/jumbo v5, "SPS: offset_for_top_to_bottom_field"

    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readSE(Ljava/lang/String;)I

    move-result v5

    .line 141
    iput v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->offset_for_top_to_bottom_field:I

    .line 144
    const-string/jumbo v5, "SPS: num_ref_frames_in_pic_order_cnt_cycle"

    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v5

    .line 143
    iput v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->num_ref_frames_in_pic_order_cnt_cycle:I

    .line 145
    iget v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->num_ref_frames_in_pic_order_cnt_cycle:I

    new-array v5, v5, [I

    iput-object v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->offsetForRefFrame:[I

    .line 146
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->num_ref_frames_in_pic_order_cnt_cycle:I

    if-ge v0, v5, :cond_3

    .line 147
    iget-object v5, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->offsetForRefFrame:[I

    .line 148
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "SPS: offsetForRefFrame ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readSE(Ljava/lang/String;)I

    move-result v6

    .line 147
    aput v6, v5, v0

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static read([B)Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;
    .locals 1
    .param p0, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->read(Ljava/io/InputStream;)Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    move-result-object v0

    return-object v0
.end method

.method private static readHRDParameters(Lcom/googlecode/mp4parser/h264/read/CAVLCReader;)Lcom/googlecode/mp4parser/h264/model/HRDParameters;
    .locals 6
    .param p0, "reader"    # Lcom/googlecode/mp4parser/h264/read/CAVLCReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x5

    .line 298
    new-instance v1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/h264/model/HRDParameters;-><init>()V

    .line 299
    .local v1, "hrd":Lcom/googlecode/mp4parser/h264/model/HRDParameters;
    const-string/jumbo v2, "SPS: cpb_cnt_minus1"

    invoke-virtual {p0, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->cpb_cnt_minus1:I

    .line 300
    const-string/jumbo v2, "HRD: bit_rate_scale"

    invoke-virtual {p0, v5, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->bit_rate_scale:I

    .line 301
    const-string/jumbo v2, "HRD: cpb_size_scale"

    invoke-virtual {p0, v5, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->cpb_size_scale:I

    .line 302
    iget v2, v1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->cpb_cnt_minus1:I

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->bit_rate_value_minus1:[I

    .line 303
    iget v2, v1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->cpb_cnt_minus1:I

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->cpb_size_value_minus1:[I

    .line 304
    iget v2, v1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->cpb_cnt_minus1:I

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Z

    iput-object v2, v1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->cbr_flag:[Z

    .line 306
    const/4 v0, 0x0

    .local v0, "SchedSelIdx":I
    :goto_0
    iget v2, v1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->cpb_cnt_minus1:I

    if-le v0, v2, :cond_0

    .line 314
    const-string/jumbo v2, "HRD: initial_cpb_removal_delay_length_minus1"

    .line 313
    invoke-virtual {p0, v4, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->initial_cpb_removal_delay_length_minus1:I

    .line 316
    const-string/jumbo v2, "HRD: cpb_removal_delay_length_minus1"

    .line 315
    invoke-virtual {p0, v4, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->cpb_removal_delay_length_minus1:I

    .line 318
    const-string/jumbo v2, "HRD: dpb_output_delay_length_minus1"

    .line 317
    invoke-virtual {p0, v4, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->dpb_output_delay_length_minus1:I

    .line 320
    const-string/jumbo v2, "HRD: time_offset_length"

    .line 319
    invoke-virtual {p0, v4, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->time_offset_length:I

    .line 321
    return-object v1

    .line 307
    :cond_0
    iget-object v2, v1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->bit_rate_value_minus1:[I

    .line 308
    const-string/jumbo v3, "HRD: bit_rate_value_minus1"

    invoke-virtual {p0, v3}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v3

    .line 307
    aput v3, v2, v0

    .line 309
    iget-object v2, v1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->cpb_size_value_minus1:[I

    .line 310
    const-string/jumbo v3, "HRD: cpb_size_value_minus1"

    invoke-virtual {p0, v3}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v3

    .line 309
    aput v3, v2, v0

    .line 311
    iget-object v2, v1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->cbr_flag:[Z

    const-string/jumbo v3, "HRD: cbr_flag"

    invoke-virtual {p0, v3}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v3

    aput-boolean v3, v2, v0

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static readScalingListMatrix(Lcom/googlecode/mp4parser/h264/read/CAVLCReader;Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;)V
    .locals 6
    .param p0, "reader"    # Lcom/googlecode/mp4parser/h264/read/CAVLCReader;
    .param p1, "sps"    # Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    .line 188
    new-instance v2, Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;

    invoke-direct {v2}, Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;-><init>()V

    iput-object v2, p1, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->scalingMatrix:Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;

    .line 189
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v5, :cond_0

    .line 204
    return-void

    .line 191
    :cond_0
    const-string/jumbo v2, "SPS: seqScalingListPresentFlag"

    invoke-virtual {p0, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v1

    .line 192
    .local v1, "seqScalingListPresentFlag":Z
    if-eqz v1, :cond_1

    .line 193
    iget-object v2, p1, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->scalingMatrix:Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;

    new-array v3, v5, [Lcom/googlecode/mp4parser/h264/model/ScalingList;

    iput-object v3, v2, Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;->ScalingList4x4:[Lcom/googlecode/mp4parser/h264/model/ScalingList;

    .line 194
    iget-object v2, p1, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->scalingMatrix:Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;

    new-array v3, v5, [Lcom/googlecode/mp4parser/h264/model/ScalingList;

    iput-object v3, v2, Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;->ScalingList8x8:[Lcom/googlecode/mp4parser/h264/model/ScalingList;

    .line 195
    const/4 v2, 0x6

    if-ge v0, v2, :cond_2

    .line 196
    iget-object v2, p1, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->scalingMatrix:Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;

    iget-object v2, v2, Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;->ScalingList4x4:[Lcom/googlecode/mp4parser/h264/model/ScalingList;

    .line 197
    const/16 v3, 0x10

    .line 196
    invoke-static {p0, v3}, Lcom/googlecode/mp4parser/h264/model/ScalingList;->read(Lcom/googlecode/mp4parser/h264/read/CAVLCReader;I)Lcom/googlecode/mp4parser/h264/model/ScalingList;

    move-result-object v3

    aput-object v3, v2, v0

    .line 189
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_2
    iget-object v2, p1, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->scalingMatrix:Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;

    iget-object v2, v2, Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;->ScalingList8x8:[Lcom/googlecode/mp4parser/h264/model/ScalingList;

    add-int/lit8 v3, v0, -0x6

    .line 200
    const/16 v4, 0x40

    .line 199
    invoke-static {p0, v4}, Lcom/googlecode/mp4parser/h264/model/ScalingList;->read(Lcom/googlecode/mp4parser/h264/read/CAVLCReader;I)Lcom/googlecode/mp4parser/h264/model/ScalingList;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_1
.end method

.method private writeHRDParameters(Lcom/googlecode/mp4parser/h264/model/HRDParameters;Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;)V
    .locals 6
    .param p1, "hrd"    # Lcom/googlecode/mp4parser/h264/model/HRDParameters;
    .param p2, "writer"    # Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x5

    .line 509
    iget v1, p1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->cpb_cnt_minus1:I

    const-string/jumbo v2, "HRD: cpb_cnt_minus1"

    invoke-virtual {p2, v1, v2}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 510
    iget v1, p1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->bit_rate_scale:I

    int-to-long v2, v1

    const-string/jumbo v1, "HRD: bit_rate_scale"

    invoke-virtual {p2, v2, v3, v5, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JILjava/lang/String;)V

    .line 511
    iget v1, p1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->cpb_size_scale:I

    int-to-long v2, v1

    const-string/jumbo v1, "HRD: cpb_size_scale"

    invoke-virtual {p2, v2, v3, v5, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JILjava/lang/String;)V

    .line 513
    const/4 v0, 0x0

    .local v0, "SchedSelIdx":I
    :goto_0
    iget v1, p1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->cpb_cnt_minus1:I

    if-le v0, v1, :cond_0

    .line 518
    iget v1, p1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->initial_cpb_removal_delay_length_minus1:I

    int-to-long v2, v1

    .line 519
    const-string/jumbo v1, "HRD: initial_cpb_removal_delay_length_minus1"

    .line 518
    invoke-virtual {p2, v2, v3, v4, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JILjava/lang/String;)V

    .line 520
    iget v1, p1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->cpb_removal_delay_length_minus1:I

    int-to-long v2, v1

    .line 521
    const-string/jumbo v1, "HRD: cpb_removal_delay_length_minus1"

    .line 520
    invoke-virtual {p2, v2, v3, v4, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JILjava/lang/String;)V

    .line 522
    iget v1, p1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->dpb_output_delay_length_minus1:I

    int-to-long v2, v1

    .line 523
    const-string/jumbo v1, "HRD: dpb_output_delay_length_minus1"

    .line 522
    invoke-virtual {p2, v2, v3, v4, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JILjava/lang/String;)V

    .line 524
    iget v1, p1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->time_offset_length:I

    int-to-long v2, v1

    const-string/jumbo v1, "HRD: time_offset_length"

    invoke-virtual {p2, v2, v3, v4, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JILjava/lang/String;)V

    .line 525
    return-void

    .line 514
    :cond_0
    iget-object v1, p1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->bit_rate_value_minus1:[I

    aget v1, v1, v0

    const-string/jumbo v2, "HRD: "

    invoke-virtual {p2, v1, v2}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 515
    iget-object v1, p1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->cpb_size_value_minus1:[I

    aget v1, v1, v0

    const-string/jumbo v2, "HRD: "

    invoke-virtual {p2, v1, v2}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 516
    iget-object v1, p1, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->cbr_flag:[Z

    aget-boolean v1, v1, v0

    const-string/jumbo v2, "HRD: "

    invoke-virtual {p2, v1, v2}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 513
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private writeVUIParameters(Lcom/googlecode/mp4parser/h264/model/VUIParameters;Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;)V
    .locals 9
    .param p1, "vuip"    # Lcom/googlecode/mp4parser/h264/model/VUIParameters;
    .param p2, "writer"    # Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x20

    const/16 v7, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v6, 0x8

    .line 417
    iget-boolean v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->aspect_ratio_info_present_flag:Z

    .line 418
    const-string/jumbo v3, "VUI: aspect_ratio_info_present_flag"

    .line 417
    invoke-virtual {p2, v0, v3}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 419
    iget-boolean v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->aspect_ratio_info_present_flag:Z

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->aspect_ratio:Lcom/googlecode/mp4parser/h264/model/AspectRatio;

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/h264/model/AspectRatio;->getValue()I

    move-result v0

    int-to-long v4, v0

    .line 421
    const-string/jumbo v0, "VUI: aspect_ratio"

    .line 420
    invoke-virtual {p2, v4, v5, v6, v0}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JILjava/lang/String;)V

    .line 422
    iget-object v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->aspect_ratio:Lcom/googlecode/mp4parser/h264/model/AspectRatio;

    sget-object v3, Lcom/googlecode/mp4parser/h264/model/AspectRatio;->Extended_SAR:Lcom/googlecode/mp4parser/h264/model/AspectRatio;

    if-ne v0, v3, :cond_0

    .line 423
    iget v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->sar_width:I

    int-to-long v4, v0

    const-string/jumbo v0, "VUI: sar_width"

    invoke-virtual {p2, v4, v5, v7, v0}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JILjava/lang/String;)V

    .line 424
    iget v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->sar_height:I

    int-to-long v4, v0

    const-string/jumbo v0, "VUI: sar_height"

    invoke-virtual {p2, v4, v5, v7, v0}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JILjava/lang/String;)V

    .line 427
    :cond_0
    iget-boolean v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->overscan_info_present_flag:Z

    .line 428
    const-string/jumbo v3, "VUI: overscan_info_present_flag"

    .line 427
    invoke-virtual {p2, v0, v3}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 429
    iget-boolean v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->overscan_info_present_flag:Z

    if-eqz v0, :cond_1

    .line 430
    iget-boolean v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->overscan_appropriate_flag:Z

    .line 431
    const-string/jumbo v3, "VUI: overscan_appropriate_flag"

    .line 430
    invoke-virtual {p2, v0, v3}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 433
    :cond_1
    iget-boolean v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->video_signal_type_present_flag:Z

    .line 434
    const-string/jumbo v3, "VUI: video_signal_type_present_flag"

    .line 433
    invoke-virtual {p2, v0, v3}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 435
    iget-boolean v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->video_signal_type_present_flag:Z

    if-eqz v0, :cond_2

    .line 436
    iget v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->video_format:I

    int-to-long v4, v0

    const/4 v0, 0x3

    const-string/jumbo v3, "VUI: video_format"

    invoke-virtual {p2, v4, v5, v0, v3}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JILjava/lang/String;)V

    .line 437
    iget-boolean v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->video_full_range_flag:Z

    .line 438
    const-string/jumbo v3, "VUI: video_full_range_flag"

    .line 437
    invoke-virtual {p2, v0, v3}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 439
    iget-boolean v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->colour_description_present_flag:Z

    .line 440
    const-string/jumbo v3, "VUI: colour_description_present_flag"

    .line 439
    invoke-virtual {p2, v0, v3}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 441
    iget-boolean v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->colour_description_present_flag:Z

    if-eqz v0, :cond_2

    .line 442
    iget v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->colour_primaries:I

    int-to-long v4, v0

    .line 443
    const-string/jumbo v0, "VUI: colour_primaries"

    .line 442
    invoke-virtual {p2, v4, v5, v6, v0}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JILjava/lang/String;)V

    .line 444
    iget v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->transfer_characteristics:I

    int-to-long v4, v0

    .line 445
    const-string/jumbo v0, "VUI: transfer_characteristics"

    .line 444
    invoke-virtual {p2, v4, v5, v6, v0}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JILjava/lang/String;)V

    .line 446
    iget v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->matrix_coefficients:I

    int-to-long v4, v0

    .line 447
    const-string/jumbo v0, "VUI: matrix_coefficients"

    .line 446
    invoke-virtual {p2, v4, v5, v6, v0}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JILjava/lang/String;)V

    .line 450
    :cond_2
    iget-boolean v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->chroma_loc_info_present_flag:Z

    .line 451
    const-string/jumbo v3, "VUI: chroma_loc_info_present_flag"

    .line 450
    invoke-virtual {p2, v0, v3}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 452
    iget-boolean v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->chroma_loc_info_present_flag:Z

    if-eqz v0, :cond_3

    .line 453
    iget v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->chroma_sample_loc_type_top_field:I

    .line 454
    const-string/jumbo v3, "VUI: chroma_sample_loc_type_top_field"

    .line 453
    invoke-virtual {p2, v0, v3}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 455
    iget v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->chroma_sample_loc_type_bottom_field:I

    .line 456
    const-string/jumbo v3, "VUI: chroma_sample_loc_type_bottom_field"

    .line 455
    invoke-virtual {p2, v0, v3}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 458
    :cond_3
    iget-boolean v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->timing_info_present_flag:Z

    .line 459
    const-string/jumbo v3, "VUI: timing_info_present_flag"

    .line 458
    invoke-virtual {p2, v0, v3}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 460
    iget-boolean v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->timing_info_present_flag:Z

    if-eqz v0, :cond_4

    .line 461
    iget v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->num_units_in_tick:I

    int-to-long v4, v0

    .line 462
    const-string/jumbo v0, "VUI: num_units_in_tick"

    .line 461
    invoke-virtual {p2, v4, v5, v8, v0}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JILjava/lang/String;)V

    .line 463
    iget v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->time_scale:I

    int-to-long v4, v0

    const-string/jumbo v0, "VUI: time_scale"

    invoke-virtual {p2, v4, v5, v8, v0}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JILjava/lang/String;)V

    .line 464
    iget-boolean v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->fixed_frame_rate_flag:Z

    .line 465
    const-string/jumbo v3, "VUI: fixed_frame_rate_flag"

    .line 464
    invoke-virtual {p2, v0, v3}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 467
    :cond_4
    iget-object v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->nalHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    if-eqz v0, :cond_a

    move v0, v1

    :goto_0
    const-string/jumbo v3, "VUI: "

    invoke-virtual {p2, v0, v3}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 468
    iget-object v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->nalHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    if-eqz v0, :cond_5

    .line 469
    iget-object v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->nalHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    invoke-direct {p0, v0, p2}, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->writeHRDParameters(Lcom/googlecode/mp4parser/h264/model/HRDParameters;Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;)V

    .line 471
    :cond_5
    iget-object v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->vclHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    if-eqz v0, :cond_b

    move v0, v1

    :goto_1
    const-string/jumbo v3, "VUI: "

    invoke-virtual {p2, v0, v3}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 472
    iget-object v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->vclHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    if-eqz v0, :cond_6

    .line 473
    iget-object v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->vclHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    invoke-direct {p0, v0, p2}, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->writeHRDParameters(Lcom/googlecode/mp4parser/h264/model/HRDParameters;Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;)V

    .line 476
    :cond_6
    iget-object v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->nalHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    if-nez v0, :cond_7

    iget-object v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->vclHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    if-eqz v0, :cond_8

    .line 478
    :cond_7
    iget-boolean v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->low_delay_hrd_flag:Z

    .line 479
    const-string/jumbo v3, "VUI: low_delay_hrd_flag"

    .line 478
    invoke-virtual {p2, v0, v3}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 481
    :cond_8
    iget-boolean v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->pic_struct_present_flag:Z

    .line 482
    const-string/jumbo v3, "VUI: pic_struct_present_flag"

    .line 481
    invoke-virtual {p2, v0, v3}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 483
    iget-object v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->bitstreamRestriction:Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;

    if-eqz v0, :cond_c

    :goto_2
    const-string/jumbo v0, "VUI: "

    invoke-virtual {p2, v1, v0}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 484
    iget-object v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->bitstreamRestriction:Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;

    if-eqz v0, :cond_9

    .line 487
    iget-object v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->bitstreamRestriction:Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;

    iget-boolean v0, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;->motion_vectors_over_pic_boundaries_flag:Z

    .line 488
    const-string/jumbo v1, "VUI: motion_vectors_over_pic_boundaries_flag"

    .line 486
    invoke-virtual {p2, v0, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 489
    iget-object v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->bitstreamRestriction:Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;

    iget v0, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;->max_bytes_per_pic_denom:I

    .line 490
    const-string/jumbo v1, "VUI: max_bytes_per_pic_denom"

    .line 489
    invoke-virtual {p2, v0, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 491
    iget-object v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->bitstreamRestriction:Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;

    iget v0, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;->max_bits_per_mb_denom:I

    .line 492
    const-string/jumbo v1, "VUI: max_bits_per_mb_denom"

    .line 491
    invoke-virtual {p2, v0, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 494
    iget-object v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->bitstreamRestriction:Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;

    iget v0, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;->log2_max_mv_length_horizontal:I

    .line 495
    const-string/jumbo v1, "VUI: log2_max_mv_length_horizontal"

    .line 493
    invoke-virtual {p2, v0, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 497
    iget-object v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->bitstreamRestriction:Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;

    iget v0, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;->log2_max_mv_length_vertical:I

    .line 498
    const-string/jumbo v1, "VUI: log2_max_mv_length_vertical"

    .line 496
    invoke-virtual {p2, v0, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 499
    iget-object v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->bitstreamRestriction:Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;

    iget v0, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;->num_reorder_frames:I

    .line 500
    const-string/jumbo v1, "VUI: num_reorder_frames"

    .line 499
    invoke-virtual {p2, v0, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 501
    iget-object v0, p1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->bitstreamRestriction:Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;

    iget v0, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters$BitstreamRestriction;->max_dec_frame_buffering:I

    .line 502
    const-string/jumbo v1, "VUI: max_dec_frame_buffering"

    .line 501
    invoke-virtual {p2, v0, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 505
    :cond_9
    return-void

    :cond_a
    move v0, v2

    .line 467
    goto/16 :goto_0

    :cond_b
    move v0, v2

    .line 471
    goto :goto_1

    :cond_c
    move v1, v2

    .line 483
    goto :goto_2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SeqParameterSet{ \n        pic_order_cnt_type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 530
    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->pic_order_cnt_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 531
    const-string/jumbo v1, ", \n        field_pic_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->field_pic_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 532
    const-string/jumbo v1, ", \n        delta_pic_order_always_zero_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->delta_pic_order_always_zero_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 533
    const-string/jumbo v1, ", \n        weighted_pred_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->weighted_pred_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 534
    const-string/jumbo v1, ", \n        weighted_bipred_idc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->weighted_bipred_idc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 535
    const-string/jumbo v1, ", \n        entropy_coding_mode_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->entropy_coding_mode_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 536
    const-string/jumbo v1, ", \n        mb_adaptive_frame_field_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->mb_adaptive_frame_field_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 537
    const-string/jumbo v1, ", \n        direct_8x8_inference_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->direct_8x8_inference_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 538
    const-string/jumbo v1, ", \n        chroma_format_idc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->chroma_format_idc:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 539
    const-string/jumbo v1, ", \n        log2_max_frame_num_minus4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->log2_max_frame_num_minus4:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 540
    const-string/jumbo v1, ", \n        log2_max_pic_order_cnt_lsb_minus4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->log2_max_pic_order_cnt_lsb_minus4:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 541
    const-string/jumbo v1, ", \n        pic_height_in_map_units_minus1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->pic_height_in_map_units_minus1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 542
    const-string/jumbo v1, ", \n        pic_width_in_mbs_minus1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->pic_width_in_mbs_minus1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 543
    const-string/jumbo v1, ", \n        bit_depth_luma_minus8="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->bit_depth_luma_minus8:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 544
    const-string/jumbo v1, ", \n        bit_depth_chroma_minus8="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->bit_depth_chroma_minus8:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 545
    const-string/jumbo v1, ", \n        qpprime_y_zero_transform_bypass_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->qpprime_y_zero_transform_bypass_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 546
    const-string/jumbo v1, ", \n        profile_idc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->profile_idc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 547
    const-string/jumbo v1, ", \n        constraint_set_0_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->constraint_set_0_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 548
    const-string/jumbo v1, ", \n        constraint_set_1_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->constraint_set_1_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 549
    const-string/jumbo v1, ", \n        constraint_set_2_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->constraint_set_2_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 550
    const-string/jumbo v1, ", \n        constraint_set_3_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->constraint_set_3_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 551
    const-string/jumbo v1, ", \n        constraint_set_4_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->constraint_set_4_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 552
    const-string/jumbo v1, ", \n        constraint_set_5_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->constraint_set_5_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 553
    const-string/jumbo v1, ", \n        level_idc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->level_idc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 554
    const-string/jumbo v1, ", \n        seq_parameter_set_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->seq_parameter_set_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 555
    const-string/jumbo v1, ", \n        residual_color_transform_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->residual_color_transform_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 556
    const-string/jumbo v1, ", \n        offset_for_non_ref_pic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->offset_for_non_ref_pic:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 557
    const-string/jumbo v1, ", \n        offset_for_top_to_bottom_field="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->offset_for_top_to_bottom_field:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 558
    const-string/jumbo v1, ", \n        num_ref_frames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->num_ref_frames:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 559
    const-string/jumbo v1, ", \n        gaps_in_frame_num_value_allowed_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->gaps_in_frame_num_value_allowed_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 560
    const-string/jumbo v1, ", \n        frame_mbs_only_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_mbs_only_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 561
    const-string/jumbo v1, ", \n        frame_cropping_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_cropping_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 562
    const-string/jumbo v1, ", \n        frame_crop_left_offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_crop_left_offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 563
    const-string/jumbo v1, ", \n        frame_crop_right_offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_crop_right_offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 564
    const-string/jumbo v1, ", \n        frame_crop_top_offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_crop_top_offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 565
    const-string/jumbo v1, ", \n        frame_crop_bottom_offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_crop_bottom_offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 566
    const-string/jumbo v1, ", \n        offsetForRefFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->offsetForRefFrame:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 567
    const-string/jumbo v1, ", \n        vuiParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 568
    const-string/jumbo v1, ", \n        scalingMatrix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->scalingMatrix:Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 569
    const-string/jumbo v1, ", \n        num_ref_frames_in_pic_order_cnt_cycle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->num_ref_frames_in_pic_order_cnt_cycle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 570
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 529
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 9
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 325
    new-instance v1, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;

    invoke-direct {v1, p1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;-><init>(Ljava/io/OutputStream;)V

    .line 327
    .local v1, "writer":Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;
    iget v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->profile_idc:I

    int-to-long v6, v2

    const-string/jumbo v2, "SPS: profile_idc"

    invoke-virtual {v1, v6, v7, v8, v2}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JILjava/lang/String;)V

    .line 328
    iget-boolean v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->constraint_set_0_flag:Z

    const-string/jumbo v5, "SPS: constraint_set_0_flag"

    invoke-virtual {v1, v2, v5}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 329
    iget-boolean v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->constraint_set_1_flag:Z

    const-string/jumbo v5, "SPS: constraint_set_1_flag"

    invoke-virtual {v1, v2, v5}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 330
    iget-boolean v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->constraint_set_2_flag:Z

    const-string/jumbo v5, "SPS: constraint_set_2_flag"

    invoke-virtual {v1, v2, v5}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 331
    iget-boolean v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->constraint_set_3_flag:Z

    const-string/jumbo v5, "SPS: constraint_set_3_flag"

    invoke-virtual {v1, v2, v5}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 332
    const-wide/16 v6, 0x0

    const/4 v2, 0x4

    const-string/jumbo v5, "SPS: reserved"

    invoke-virtual {v1, v6, v7, v2, v5}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JILjava/lang/String;)V

    .line 333
    iget v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->level_idc:I

    int-to-long v6, v2

    const-string/jumbo v2, "SPS: level_idc"

    invoke-virtual {v1, v6, v7, v8, v2}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JILjava/lang/String;)V

    .line 334
    iget v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->seq_parameter_set_id:I

    const-string/jumbo v5, "SPS: seq_parameter_set_id"

    invoke-virtual {v1, v2, v5}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 336
    iget v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->profile_idc:I

    const/16 v5, 0x64

    if-eq v2, v5, :cond_0

    iget v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->profile_idc:I

    const/16 v5, 0x6e

    if-eq v2, v5, :cond_0

    iget v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->profile_idc:I

    const/16 v5, 0x7a

    if-eq v2, v5, :cond_0

    .line 337
    iget v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->profile_idc:I

    const/16 v5, 0x90

    if-ne v2, v5, :cond_2

    .line 338
    :cond_0
    iget-object v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->chroma_format_idc:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->getId()I

    move-result v2

    const-string/jumbo v5, "SPS: chroma_format_idc"

    invoke-virtual {v1, v2, v5}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 339
    iget-object v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->chroma_format_idc:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    sget-object v5, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->YUV_444:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    if-ne v2, v5, :cond_1

    .line 340
    iget-boolean v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->residual_color_transform_flag:Z

    .line 341
    const-string/jumbo v5, "SPS: residual_color_transform_flag"

    .line 340
    invoke-virtual {v1, v2, v5}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 343
    :cond_1
    iget v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->bit_depth_luma_minus8:I

    const-string/jumbo v5, "SPS: "

    invoke-virtual {v1, v2, v5}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 344
    iget v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->bit_depth_chroma_minus8:I

    const-string/jumbo v5, "SPS: "

    invoke-virtual {v1, v2, v5}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 345
    iget-boolean v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->qpprime_y_zero_transform_bypass_flag:Z

    .line 346
    const-string/jumbo v5, "SPS: qpprime_y_zero_transform_bypass_flag"

    .line 345
    invoke-virtual {v1, v2, v5}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 347
    iget-object v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->scalingMatrix:Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;

    if-eqz v2, :cond_7

    move v2, v3

    :goto_0
    const-string/jumbo v5, "SPS: "

    invoke-virtual {v1, v2, v5}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 348
    iget-object v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->scalingMatrix:Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;

    if-eqz v2, :cond_2

    .line 349
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v8, :cond_8

    .line 368
    .end local v0    # "i":I
    :cond_2
    iget v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->log2_max_frame_num_minus4:I

    .line 369
    const-string/jumbo v5, "SPS: log2_max_frame_num_minus4"

    .line 368
    invoke-virtual {v1, v2, v5}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 370
    iget v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->pic_order_cnt_type:I

    const-string/jumbo v5, "SPS: pic_order_cnt_type"

    invoke-virtual {v1, v2, v5}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 371
    iget v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->pic_order_cnt_type:I

    if-nez v2, :cond_d

    .line 372
    iget v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->log2_max_pic_order_cnt_lsb_minus4:I

    .line 373
    const-string/jumbo v5, "SPS: log2_max_pic_order_cnt_lsb_minus4"

    .line 372
    invoke-virtual {v1, v2, v5}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 385
    :cond_3
    iget v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->num_ref_frames:I

    const-string/jumbo v5, "SPS: num_ref_frames"

    invoke-virtual {v1, v2, v5}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 386
    iget-boolean v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->gaps_in_frame_num_value_allowed_flag:Z

    .line 387
    const-string/jumbo v5, "SPS: gaps_in_frame_num_value_allowed_flag"

    .line 386
    invoke-virtual {v1, v2, v5}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 388
    iget v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->pic_width_in_mbs_minus1:I

    const-string/jumbo v5, "SPS: pic_width_in_mbs_minus1"

    invoke-virtual {v1, v2, v5}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 389
    iget v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->pic_height_in_map_units_minus1:I

    .line 390
    const-string/jumbo v5, "SPS: pic_height_in_map_units_minus1"

    .line 389
    invoke-virtual {v1, v2, v5}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 391
    iget-boolean v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_mbs_only_flag:Z

    const-string/jumbo v5, "SPS: frame_mbs_only_flag"

    invoke-virtual {v1, v2, v5}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 392
    iget-boolean v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_mbs_only_flag:Z

    if-nez v2, :cond_4

    .line 393
    iget-boolean v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->mb_adaptive_frame_field_flag:Z

    .line 394
    const-string/jumbo v5, "SPS: mb_adaptive_frame_field_flag"

    .line 393
    invoke-virtual {v1, v2, v5}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 396
    :cond_4
    iget-boolean v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->direct_8x8_inference_flag:Z

    .line 397
    const-string/jumbo v5, "SPS: direct_8x8_inference_flag"

    .line 396
    invoke-virtual {v1, v2, v5}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 398
    iget-boolean v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_cropping_flag:Z

    const-string/jumbo v5, "SPS: frame_cropping_flag"

    invoke-virtual {v1, v2, v5}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 399
    iget-boolean v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_cropping_flag:Z

    if-eqz v2, :cond_5

    .line 400
    iget v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_crop_left_offset:I

    .line 401
    const-string/jumbo v5, "SPS: frame_crop_left_offset"

    .line 400
    invoke-virtual {v1, v2, v5}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 402
    iget v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_crop_right_offset:I

    .line 403
    const-string/jumbo v5, "SPS: frame_crop_right_offset"

    .line 402
    invoke-virtual {v1, v2, v5}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 404
    iget v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_crop_top_offset:I

    const-string/jumbo v5, "SPS: frame_crop_top_offset"

    invoke-virtual {v1, v2, v5}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 405
    iget v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_crop_bottom_offset:I

    .line 406
    const-string/jumbo v5, "SPS: frame_crop_bottom_offset"

    .line 405
    invoke-virtual {v1, v2, v5}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 408
    :cond_5
    iget-object v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    if-eqz v2, :cond_e

    :goto_2
    const-string/jumbo v2, "SPS: "

    invoke-virtual {v1, v3, v2}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 409
    iget-object v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    if-eqz v2, :cond_6

    .line 410
    iget-object v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    invoke-direct {p0, v2, v1}, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->writeVUIParameters(Lcom/googlecode/mp4parser/h264/model/VUIParameters;Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;)V

    .line 412
    :cond_6
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeTrailingBits()V

    .line 413
    return-void

    :cond_7
    move v2, v4

    .line 347
    goto/16 :goto_0

    .line 350
    .restart local v0    # "i":I
    :cond_8
    const/4 v2, 0x6

    if-ge v0, v2, :cond_b

    .line 352
    iget-object v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->scalingMatrix:Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;

    iget-object v2, v2, Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;->ScalingList4x4:[Lcom/googlecode/mp4parser/h264/model/ScalingList;

    aget-object v2, v2, v0

    if-eqz v2, :cond_a

    move v2, v3

    .line 353
    :goto_3
    const-string/jumbo v5, "SPS: "

    .line 351
    invoke-virtual {v1, v2, v5}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 354
    iget-object v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->scalingMatrix:Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;

    iget-object v2, v2, Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;->ScalingList4x4:[Lcom/googlecode/mp4parser/h264/model/ScalingList;

    aget-object v2, v2, v0

    if-eqz v2, :cond_9

    .line 355
    iget-object v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->scalingMatrix:Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;

    iget-object v2, v2, Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;->ScalingList4x4:[Lcom/googlecode/mp4parser/h264/model/ScalingList;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/googlecode/mp4parser/h264/model/ScalingList;->write(Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;)V

    .line 349
    :cond_9
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_a
    move v2, v4

    .line 352
    goto :goto_3

    .line 359
    :cond_b
    iget-object v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->scalingMatrix:Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;

    iget-object v2, v2, Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;->ScalingList8x8:[Lcom/googlecode/mp4parser/h264/model/ScalingList;

    add-int/lit8 v5, v0, -0x6

    aget-object v2, v2, v5

    if-eqz v2, :cond_c

    move v2, v3

    .line 360
    :goto_5
    const-string/jumbo v5, "SPS: "

    .line 358
    invoke-virtual {v1, v2, v5}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 361
    iget-object v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->scalingMatrix:Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;

    iget-object v2, v2, Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;->ScalingList8x8:[Lcom/googlecode/mp4parser/h264/model/ScalingList;

    add-int/lit8 v5, v0, -0x6

    aget-object v2, v2, v5

    if-eqz v2, :cond_9

    .line 362
    iget-object v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->scalingMatrix:Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;

    iget-object v2, v2, Lcom/googlecode/mp4parser/h264/model/ScalingMatrix;->ScalingList8x8:[Lcom/googlecode/mp4parser/h264/model/ScalingList;

    add-int/lit8 v5, v0, -0x6

    aget-object v2, v2, v5

    invoke-virtual {v2, v1}, Lcom/googlecode/mp4parser/h264/model/ScalingList;->write(Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;)V

    goto :goto_4

    :cond_c
    move v2, v4

    .line 359
    goto :goto_5

    .line 374
    .end local v0    # "i":I
    :cond_d
    iget v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->pic_order_cnt_type:I

    if-ne v2, v3, :cond_3

    .line 375
    iget-boolean v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->delta_pic_order_always_zero_flag:Z

    .line 376
    const-string/jumbo v5, "SPS: delta_pic_order_always_zero_flag"

    .line 375
    invoke-virtual {v1, v2, v5}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeBool(ZLjava/lang/String;)V

    .line 377
    iget v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->offset_for_non_ref_pic:I

    .line 378
    const-string/jumbo v5, "SPS: offset_for_non_ref_pic"

    .line 377
    invoke-virtual {v1, v2, v5}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeSE(ILjava/lang/String;)V

    .line 379
    iget v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->offset_for_top_to_bottom_field:I

    .line 380
    const-string/jumbo v5, "SPS: offset_for_top_to_bottom_field"

    .line 379
    invoke-virtual {v1, v2, v5}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeSE(ILjava/lang/String;)V

    .line 381
    iget-object v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->offsetForRefFrame:[I

    array-length v2, v2

    const-string/jumbo v5, "SPS: "

    invoke-virtual {v1, v2, v5}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(ILjava/lang/String;)V

    .line 382
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    iget-object v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->offsetForRefFrame:[I

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 383
    iget-object v2, p0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->offsetForRefFrame:[I

    aget v2, v2, v0

    const-string/jumbo v5, "SPS: "

    invoke-virtual {v1, v2, v5}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeSE(ILjava/lang/String;)V

    .line 382
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .end local v0    # "i":I
    :cond_e
    move v3, v4

    .line 408
    goto/16 :goto_2
.end method
