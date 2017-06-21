.class public Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;
.super Ljava/lang/Object;
.source "SliceHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader$SliceType;
    }
.end annotation


# instance fields
.field public bottom_field_flag:Z

.field public colour_plane_id:I

.field public delta_pic_order_cnt_0:I

.field public delta_pic_order_cnt_1:I

.field public delta_pic_order_cnt_bottom:I

.field public field_pic_flag:Z

.field public first_mb_in_slice:I

.field public frame_num:I

.field public idr_pic_id:I

.field public pic_order_cnt_lsb:I

.field public pic_parameter_set_id:I

.field pps:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

.field public slice_type:Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader$SliceType;

.field sps:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .param p4, "IdrPicFlag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p2, "spss":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;>;"
    .local p3, "ppss":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;>;"
    const/4 v3, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->field_pic_flag:Z

    .line 26
    iput-boolean v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->bottom_field_flag:Z

    .line 38
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 39
    new-instance v1, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;

    invoke-direct {v1, p1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;-><init>(Ljava/io/InputStream;)V

    .line 40
    .local v1, "reader":Lcom/googlecode/mp4parser/h264/read/CAVLCReader;
    const-string/jumbo v3, "SliceHeader: first_mb_in_slice"

    invoke-virtual {v1, v3}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->first_mb_in_slice:I

    .line 41
    const-string/jumbo v3, "SliceHeader: slice_type"

    invoke-virtual {v1, v3}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v2

    .line 42
    .local v2, "sliceTypeInt":I
    packed-switch v2, :pswitch_data_0

    .line 70
    :goto_0
    const-string/jumbo v3, "SliceHeader: pic_parameter_set_id"

    invoke-virtual {v1, v3}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->pic_parameter_set_id:I

    .line 71
    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->pic_parameter_set_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

    iput-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->pps:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

    .line 72
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->pps:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

    iget v3, v3, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->seq_parameter_set_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iput-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->sps:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    .line 73
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->sps:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-boolean v3, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->residual_color_transform_flag:Z

    if-eqz v3, :cond_0

    .line 74
    const/4 v3, 0x2

    const-string/jumbo v4, "SliceHeader: colour_plane_id"

    invoke-virtual {v1, v3, v4}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->colour_plane_id:I

    .line 76
    :cond_0
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->sps:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v3, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->log2_max_frame_num_minus4:I

    add-int/lit8 v3, v3, 0x4

    const-string/jumbo v4, "SliceHeader: frame_num"

    invoke-virtual {v1, v3, v4}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->frame_num:I

    .line 77
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->sps:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-boolean v3, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_mbs_only_flag:Z

    if-nez v3, :cond_1

    .line 78
    const-string/jumbo v3, "SliceHeader: field_pic_flag"

    invoke-virtual {v1, v3}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->field_pic_flag:Z

    .line 79
    iget-boolean v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->field_pic_flag:Z

    if-eqz v3, :cond_1

    .line 80
    const-string/jumbo v3, "SliceHeader: bottom_field_flag"

    invoke-virtual {v1, v3}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->bottom_field_flag:Z

    .line 83
    :cond_1
    if-eqz p4, :cond_2

    .line 85
    const-string/jumbo v3, "SliceHeader: idr_pic_id"

    invoke-virtual {v1, v3}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->idr_pic_id:I

    .line 87
    :cond_2
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->sps:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v3, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->pic_order_cnt_type:I

    if-nez v3, :cond_3

    .line 88
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->sps:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v3, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->log2_max_pic_order_cnt_lsb_minus4:I

    add-int/lit8 v3, v3, 0x4

    const-string/jumbo v4, "SliceHeader: pic_order_cnt_lsb"

    invoke-virtual {v1, v3, v4}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->pic_order_cnt_lsb:I

    .line 89
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->pps:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

    iget-boolean v3, v3, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->bottom_field_pic_order_in_frame_present_flag:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->field_pic_flag:Z

    if-nez v3, :cond_3

    .line 90
    const-string/jumbo v3, "SliceHeader: delta_pic_order_cnt_bottom"

    invoke-virtual {v1, v3}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readSE(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->delta_pic_order_cnt_bottom:I

    .line 94
    :cond_3
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->sps:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v3, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->pic_order_cnt_type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->sps:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-boolean v3, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->delta_pic_order_always_zero_flag:Z

    if-nez v3, :cond_4

    .line 96
    const-string/jumbo v3, "delta_pic_order_cnt_0"

    invoke-virtual {v1, v3}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readSE(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->delta_pic_order_cnt_0:I

    .line 97
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->pps:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

    iget-boolean v3, v3, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->bottom_field_pic_order_in_frame_present_flag:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->field_pic_flag:Z

    if-nez v3, :cond_4

    .line 98
    const-string/jumbo v3, "delta_pic_order_cnt_1"

    invoke-virtual {v1, v3}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readSE(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->delta_pic_order_cnt_1:I

    .line 105
    :cond_4
    return-void

    .line 45
    :pswitch_0
    sget-object v3, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader$SliceType;->P:Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader$SliceType;

    iput-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->slice_type:Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader$SliceType;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 101
    .end local v1    # "reader":Lcom/googlecode/mp4parser/h264/read/CAVLCReader;
    .end local v2    # "sliceTypeInt":I
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 50
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "reader":Lcom/googlecode/mp4parser/h264/read/CAVLCReader;
    .restart local v2    # "sliceTypeInt":I
    :pswitch_1
    :try_start_1
    sget-object v3, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader$SliceType;->B:Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader$SliceType;

    iput-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->slice_type:Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader$SliceType;

    goto/16 :goto_0

    .line 55
    :pswitch_2
    sget-object v3, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader$SliceType;->I:Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader$SliceType;

    iput-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->slice_type:Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader$SliceType;

    goto/16 :goto_0

    .line 60
    :pswitch_3
    sget-object v3, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader$SliceType;->SP:Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader$SliceType;

    iput-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->slice_type:Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader$SliceType;

    goto/16 :goto_0

    .line 65
    :pswitch_4
    sget-object v3, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader$SliceType;->SI:Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader$SliceType;

    iput-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->slice_type:Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader$SliceType;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SliceHeader{first_mb_in_slice="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->first_mb_in_slice:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 111
    const-string/jumbo v1, ", slice_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->slice_type:Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader$SliceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 112
    const-string/jumbo v1, ", pic_parameter_set_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->pic_parameter_set_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 113
    const-string/jumbo v1, ", colour_plane_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->colour_plane_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 114
    const-string/jumbo v1, ", frame_num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->frame_num:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 115
    const-string/jumbo v1, ", field_pic_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->field_pic_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 116
    const-string/jumbo v1, ", bottom_field_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->bottom_field_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 117
    const-string/jumbo v1, ", idr_pic_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->idr_pic_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    const-string/jumbo v1, ", pic_order_cnt_lsb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->pic_order_cnt_lsb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 119
    const-string/jumbo v1, ", delta_pic_order_cnt_bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->delta_pic_order_cnt_bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 120
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
