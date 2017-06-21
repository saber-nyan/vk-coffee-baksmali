.class Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;
.super Ljava/lang/Object;
.source "H264TrackImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->readSamples(Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FirstVclNalDetector"
.end annotation


# instance fields
.field bottom_field_flag:Z

.field delta_pic_order_cnt_0:I

.field delta_pic_order_cnt_1:I

.field delta_pic_order_cnt_bottom:I

.field field_pic_flag:Z

.field frame_num:I

.field idrPicFlag:Z

.field idr_pic_id:I

.field nal_ref_idc:I

.field pic_order_cnt_lsb:I

.field pic_order_cnt_type:I

.field pic_parameter_set_id:I

.field final synthetic this$0:Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;Ljava/nio/ByteBuffer;II)V
    .locals 5
    .param p2, "nal"    # Ljava/nio/ByteBuffer;
    .param p3, "nal_ref_idc"    # I
    .param p4, "nal_unit_type"    # I

    .prologue
    .line 219
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;->this$0:Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    new-instance v2, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$ByteBufferBackedInputStream;

    invoke-direct {v2, p1, p2}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$ByteBufferBackedInputStream;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;Ljava/nio/ByteBuffer;)V

    invoke-static {v2}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->access$1(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    .line 221
    .local v0, "bs":Ljava/io/InputStream;
    new-instance v1, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;

    iget-object v3, p1, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->spsIdToSps:Ljava/util/Map;

    iget-object v4, p1, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->ppsIdToPps:Ljava/util/Map;

    const/4 v2, 0x5

    if-ne p4, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-direct {v1, v0, v3, v4, v2}, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;-><init>(Ljava/io/InputStream;Ljava/util/Map;Ljava/util/Map;Z)V

    .line 222
    .local v1, "sh":Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;
    iget v2, v1, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->frame_num:I

    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;->frame_num:I

    .line 223
    iget v2, v1, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->pic_parameter_set_id:I

    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;->pic_parameter_set_id:I

    .line 224
    iget-boolean v2, v1, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->field_pic_flag:Z

    iput-boolean v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;->field_pic_flag:Z

    .line 225
    iget-boolean v2, v1, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->bottom_field_flag:Z

    iput-boolean v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;->bottom_field_flag:Z

    .line 226
    iput p3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;->nal_ref_idc:I

    .line 227
    iget-object v3, p1, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->spsIdToSps:Ljava/util/Map;

    iget-object v2, p1, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->ppsIdToPps:Ljava/util/Map;

    iget v4, v1, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->pic_parameter_set_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

    iget v2, v2, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->seq_parameter_set_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v2, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->pic_order_cnt_type:I

    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;->pic_order_cnt_type:I

    .line 228
    iget v2, v1, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->delta_pic_order_cnt_bottom:I

    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;->delta_pic_order_cnt_bottom:I

    .line 229
    iget v2, v1, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->pic_order_cnt_lsb:I

    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;->pic_order_cnt_lsb:I

    .line 230
    iget v2, v1, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->delta_pic_order_cnt_0:I

    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;->delta_pic_order_cnt_0:I

    .line 231
    iget v2, v1, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->delta_pic_order_cnt_1:I

    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;->delta_pic_order_cnt_1:I

    .line 232
    iget v2, v1, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->idr_pic_id:I

    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;->idr_pic_id:I

    .line 233
    return-void

    .line 221
    .end local v1    # "sh":Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method isFirstInNew(Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;)Z
    .locals 3
    .param p1, "nu"    # Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;

    .prologue
    const/4 v0, 0x1

    .line 236
    iget v1, p1, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;->frame_num:I

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;->frame_num:I

    if-eq v1, v2, :cond_1

    .line 277
    :cond_0
    :goto_0
    return v0

    .line 239
    :cond_1
    iget v1, p1, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;->pic_parameter_set_id:I

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;->pic_parameter_set_id:I

    if-ne v1, v2, :cond_0

    .line 242
    iget-boolean v1, p1, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;->field_pic_flag:Z

    iget-boolean v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;->field_pic_flag:Z

    if-ne v1, v2, :cond_0

    .line 245
    iget-boolean v1, p1, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;->field_pic_flag:Z

    if-eqz v1, :cond_2

    .line 246
    iget-boolean v1, p1, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;->bottom_field_flag:Z

    iget-boolean v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;->bottom_field_flag:Z

    if-ne v1, v2, :cond_0

    .line 250
    :cond_2
    iget v1, p1, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;->nal_ref_idc:I

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;->nal_ref_idc:I

    if-ne v1, v2, :cond_0

    .line 253
    iget v1, p1, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;->pic_order_cnt_type:I

    if-nez v1, :cond_3

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;->pic_order_cnt_type:I

    if-nez v1, :cond_3

    .line 254
    iget v1, p1, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;->pic_order_cnt_lsb:I

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;->pic_order_cnt_lsb:I

    if-ne v1, v2, :cond_0

    .line 257
    iget v1, p1, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;->delta_pic_order_cnt_bottom:I

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;->delta_pic_order_cnt_bottom:I

    if-ne v1, v2, :cond_0

    .line 261
    :cond_3
    iget v1, p1, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;->pic_order_cnt_type:I

    if-ne v1, v0, :cond_4

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;->pic_order_cnt_type:I

    if-ne v1, v0, :cond_4

    .line 262
    iget v1, p1, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;->delta_pic_order_cnt_0:I

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;->delta_pic_order_cnt_0:I

    if-ne v1, v2, :cond_0

    .line 265
    iget v1, p1, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;->delta_pic_order_cnt_1:I

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;->delta_pic_order_cnt_1:I

    if-ne v1, v2, :cond_0

    .line 269
    :cond_4
    iget-boolean v1, p1, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;->idrPicFlag:Z

    iget-boolean v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;->idrPicFlag:Z

    if-ne v1, v2, :cond_0

    .line 272
    iget-boolean v1, p1, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;->idrPicFlag:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;->idrPicFlag:Z

    if-eqz v1, :cond_5

    .line 273
    iget v1, p1, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;->idr_pic_id:I

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;->idr_pic_id:I

    if-ne v1, v2, :cond_0

    .line 277
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method
