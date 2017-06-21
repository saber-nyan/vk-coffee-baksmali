.class public Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;
.super Ljava/lang/Object;
.source "H264TrackImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SEIMessage"
.end annotation


# instance fields
.field clock_timestamp_flag:Z

.field cnt_dropped_flag:I

.field counting_type:I

.field cpb_removal_delay:I

.field ct_type:I

.field discontinuity_flag:I

.field dpb_removal_delay:I

.field full_timestamp_flag:I

.field hours_value:I

.field minutes_value:I

.field n_frames:I

.field nuit_field_based_flag:I

.field payloadSize:I

.field payloadType:I

.field pic_struct:I

.field removal_delay_flag:Z

.field seconds_value:I

.field sps:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

.field final synthetic this$0:Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;

.field time_offset:I

.field time_offset_length:I


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;Ljava/io/InputStream;Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;)V
    .locals 10
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "sps"    # Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 683
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->this$0:Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    const/4 v8, 0x0

    iput v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->payloadType:I

    .line 660
    const/4 v8, 0x0

    iput v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->payloadSize:I

    .line 684
    iput-object p3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->sps:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    .line 685
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    .line 686
    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 687
    .local v1, "datasize":I
    const/4 v6, 0x0

    .line 688
    .local v6, "read":I
    :goto_0
    if-lt v6, v1, :cond_0

    .line 801
    return-void

    .line 689
    :cond_0
    const/4 v8, 0x0

    iput v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->payloadType:I

    .line 690
    const/4 v8, 0x0

    iput v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->payloadSize:I

    .line 691
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 692
    .local v4, "last_payload_type_bytes":I
    add-int/lit8 v6, v6, 0x1

    .line 693
    :goto_1
    const/16 v8, 0xff

    if-eq v4, v8, :cond_4

    .line 698
    iget v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->payloadType:I

    add-int/2addr v8, v4

    iput v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->payloadType:I

    .line 699
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 700
    .local v3, "last_payload_size_bytes":I
    add-int/lit8 v6, v6, 0x1

    .line 702
    :goto_2
    const/16 v8, 0xff

    if-eq v3, v8, :cond_5

    .line 707
    iget v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->payloadSize:I

    add-int/2addr v8, v3

    iput v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->payloadSize:I

    .line 708
    sub-int v8, v1, v6

    iget v9, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->payloadSize:I

    if-lt v8, v9, :cond_f

    .line 709
    iget v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->payloadType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_e

    .line 710
    iget-object v8, p3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    if-eqz v8, :cond_d

    iget-object v8, p3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    iget-object v8, v8, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->nalHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    if-nez v8, :cond_1

    iget-object v8, p3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    iget-object v8, v8, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->vclHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    if-nez v8, :cond_1

    iget-object v8, p3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    iget-boolean v8, v8, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->pic_struct_present_flag:Z

    if-eqz v8, :cond_d

    .line 711
    :cond_1
    iget v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->payloadSize:I

    new-array v0, v8, [B

    .line 712
    .local v0, "data":[B
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    .line 713
    iget v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->payloadSize:I

    add-int/2addr v6, v8

    .line 714
    new-instance v7, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v7, v8}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;-><init>(Ljava/io/InputStream;)V

    .line 715
    .local v7, "reader":Lcom/googlecode/mp4parser/h264/read/CAVLCReader;
    iget-object v8, p3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    iget-object v8, v8, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->nalHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    if-nez v8, :cond_2

    iget-object v8, p3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    iget-object v8, v8, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->vclHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    if-eqz v8, :cond_6

    .line 716
    :cond_2
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->removal_delay_flag:Z

    .line 717
    iget-object v8, p3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    iget-object v8, v8, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->nalHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    iget v8, v8, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->cpb_removal_delay_length_minus1:I

    add-int/lit8 v8, v8, 0x1

    const-string/jumbo v9, "SEI: cpb_removal_delay"

    invoke-virtual {v7, v8, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->cpb_removal_delay:I

    .line 718
    iget-object v8, p3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    iget-object v8, v8, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->nalHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    iget v8, v8, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->dpb_output_delay_length_minus1:I

    add-int/lit8 v8, v8, 0x1

    const-string/jumbo v9, "SEI: dpb_removal_delay"

    invoke-virtual {v7, v8, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->dpb_removal_delay:I

    .line 722
    :goto_3
    iget-object v8, p3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    iget-boolean v8, v8, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->pic_struct_present_flag:Z

    if-eqz v8, :cond_3

    .line 723
    const/4 v8, 0x4

    const-string/jumbo v9, "SEI: pic_struct"

    invoke-virtual {v7, v8, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->pic_struct:I

    .line 725
    iget v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->pic_struct:I

    packed-switch v8, :pswitch_data_0

    .line 730
    const/4 v5, 0x1

    .line 745
    .local v5, "numClockTS":I
    :goto_4
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-lt v2, v5, :cond_7

    .line 799
    .end local v0    # "data":[B
    .end local v2    # "i":I
    .end local v5    # "numClockTS":I
    .end local v7    # "reader":Lcom/googlecode/mp4parser/h264/read/CAVLCReader;
    :cond_3
    :goto_6
    invoke-static {}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->access$0()Ljava/util/logging/Logger;

    move-result-object v8

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 694
    .end local v3    # "last_payload_size_bytes":I
    :cond_4
    iget v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->payloadType:I

    add-int/2addr v8, v4

    iput v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->payloadType:I

    .line 695
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 696
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 703
    .restart local v3    # "last_payload_size_bytes":I
    :cond_5
    iget v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->payloadSize:I

    add-int/2addr v8, v3

    iput v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->payloadSize:I

    .line 704
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 705
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 720
    .restart local v0    # "data":[B
    .restart local v7    # "reader":Lcom/googlecode/mp4parser/h264/read/CAVLCReader;
    :cond_6
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->removal_delay_flag:Z

    goto :goto_3

    .line 736
    :pswitch_0
    const/4 v5, 0x2

    .line 737
    .restart local v5    # "numClockTS":I
    goto :goto_4

    .line 742
    .end local v5    # "numClockTS":I
    :pswitch_1
    const/4 v5, 0x3

    .restart local v5    # "numClockTS":I
    goto :goto_4

    .line 746
    .restart local v2    # "i":I
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "pic_timing SEI: clock_timestamp_flag["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->clock_timestamp_flag:Z

    .line 747
    iget-boolean v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->clock_timestamp_flag:Z

    if-eqz v8, :cond_9

    .line 748
    const/4 v8, 0x2

    const-string/jumbo v9, "pic_timing SEI: ct_type"

    invoke-virtual {v7, v8, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->ct_type:I

    .line 749
    const/4 v8, 0x1

    const-string/jumbo v9, "pic_timing SEI: nuit_field_based_flag"

    invoke-virtual {v7, v8, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->nuit_field_based_flag:I

    .line 750
    const/4 v8, 0x5

    const-string/jumbo v9, "pic_timing SEI: counting_type"

    invoke-virtual {v7, v8, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->counting_type:I

    .line 751
    const/4 v8, 0x1

    const-string/jumbo v9, "pic_timing SEI: full_timestamp_flag"

    invoke-virtual {v7, v8, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->full_timestamp_flag:I

    .line 752
    const/4 v8, 0x1

    const-string/jumbo v9, "pic_timing SEI: discontinuity_flag"

    invoke-virtual {v7, v8, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->discontinuity_flag:I

    .line 753
    const/4 v8, 0x1

    const-string/jumbo v9, "pic_timing SEI: cnt_dropped_flag"

    invoke-virtual {v7, v8, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->cnt_dropped_flag:I

    .line 754
    const/16 v8, 0x8

    const-string/jumbo v9, "pic_timing SEI: n_frames"

    invoke-virtual {v7, v8, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->n_frames:I

    .line 755
    iget v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->full_timestamp_flag:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_a

    .line 756
    const/4 v8, 0x6

    const-string/jumbo v9, "pic_timing SEI: seconds_value"

    invoke-virtual {v7, v8, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->seconds_value:I

    .line 757
    const/4 v8, 0x6

    const-string/jumbo v9, "pic_timing SEI: minutes_value"

    invoke-virtual {v7, v8, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->minutes_value:I

    .line 758
    const/4 v8, 0x5

    const-string/jumbo v9, "pic_timing SEI: hours_value"

    invoke-virtual {v7, v8, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->hours_value:I

    .line 771
    :cond_8
    :goto_7
    iget-object v8, p3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    iget-object v8, v8, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->nalHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    if-eqz v8, :cond_b

    .line 772
    iget-object v8, p3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    iget-object v8, v8, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->nalHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    iget v8, v8, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->time_offset_length:I

    iput v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->time_offset_length:I

    .line 778
    :goto_8
    const/16 v8, 0x18

    const-string/jumbo v9, "pic_timing SEI: time_offset"

    invoke-virtual {v7, v8, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->time_offset:I

    .line 745
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    .line 760
    :cond_a
    const-string/jumbo v8, "pic_timing SEI: seconds_flag"

    invoke-virtual {v7, v8}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 761
    const/4 v8, 0x6

    const-string/jumbo v9, "pic_timing SEI: seconds_value"

    invoke-virtual {v7, v8, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->seconds_value:I

    .line 762
    const-string/jumbo v8, "pic_timing SEI: minutes_flag"

    invoke-virtual {v7, v8}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 763
    const/4 v8, 0x6

    const-string/jumbo v9, "pic_timing SEI: minutes_value"

    invoke-virtual {v7, v8, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->minutes_value:I

    .line 764
    const-string/jumbo v8, "pic_timing SEI: hours_flag"

    invoke-virtual {v7, v8}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readBool(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 765
    const/4 v8, 0x5

    const-string/jumbo v9, "pic_timing SEI: hours_value"

    invoke-virtual {v7, v8, v9}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readU(ILjava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->hours_value:I

    goto :goto_7

    .line 773
    :cond_b
    iget-object v8, p3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    iget-object v8, v8, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->vclHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    if-eqz v8, :cond_c

    .line 774
    iget-object v8, p3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    iget-object v8, v8, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->vclHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    iget v8, v8, Lcom/googlecode/mp4parser/h264/model/HRDParameters;->time_offset_length:I

    iput v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->time_offset_length:I

    goto :goto_8

    .line 776
    :cond_c
    const/16 v8, 0x18

    iput v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->time_offset_length:I

    goto :goto_8

    .line 785
    .end local v0    # "data":[B
    .end local v2    # "i":I
    .end local v5    # "numClockTS":I
    .end local v7    # "reader":Lcom/googlecode/mp4parser/h264/read/CAVLCReader;
    :cond_d
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_9
    iget v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->payloadSize:I

    if-ge v2, v8, :cond_3

    .line 786
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    .line 787
    add-int/lit8 v6, v6, 0x1

    .line 785
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 791
    .end local v2    # "i":I
    :cond_e
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_a
    iget v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->payloadSize:I

    if-ge v2, v8, :cond_3

    .line 792
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    .line 793
    add-int/lit8 v6, v6, 0x1

    .line 791
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 797
    .end local v2    # "i":I
    :cond_f
    move v6, v1

    goto/16 :goto_6

    .line 725
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 805
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "SEIMessage{payloadType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 806
    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->payloadType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 807
    const-string/jumbo v2, ", payloadSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->payloadSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 805
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 808
    .local v0, "out":Ljava/lang/String;
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->payloadType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 809
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->sps:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-object v1, v1, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    iget-object v1, v1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->nalHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->sps:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-object v1, v1, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    iget-object v1, v1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->vclHRDParams:Lcom/googlecode/mp4parser/h264/model/HRDParameters;

    if-eqz v1, :cond_1

    .line 811
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ", cpb_removal_delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->cpb_removal_delay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 812
    const-string/jumbo v2, ", dpb_removal_delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->dpb_removal_delay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 811
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 814
    :cond_1
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->sps:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-object v1, v1, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    iget-boolean v1, v1, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->pic_struct_present_flag:Z

    if-eqz v1, :cond_2

    .line 815
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ", pic_struct="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->pic_struct:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 816
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->clock_timestamp_flag:Z

    if-eqz v1, :cond_2

    .line 817
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ", ct_type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->ct_type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 818
    const-string/jumbo v2, ", nuit_field_based_flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->nuit_field_based_flag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 819
    const-string/jumbo v2, ", counting_type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->counting_type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 820
    const-string/jumbo v2, ", full_timestamp_flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->full_timestamp_flag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 821
    const-string/jumbo v2, ", discontinuity_flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->discontinuity_flag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 822
    const-string/jumbo v2, ", cnt_dropped_flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->cnt_dropped_flag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 823
    const-string/jumbo v2, ", n_frames="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->n_frames:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 824
    const-string/jumbo v2, ", seconds_value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->seconds_value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 825
    const-string/jumbo v2, ", minutes_value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->minutes_value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 826
    const-string/jumbo v2, ", hours_value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->hours_value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 827
    const-string/jumbo v2, ", time_offset_length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->time_offset_length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 828
    const-string/jumbo v2, ", time_offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->time_offset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 817
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 832
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 833
    return-object v0
.end method
