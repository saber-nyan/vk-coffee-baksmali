.class public Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;
.super Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack;
.source "H264TrackImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$ByteBufferBackedInputStream;,
        Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;
    }
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field currentPictureParameterSet:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

.field currentSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

.field private determineFrameRate:Z

.field firstPictureParameterSet:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

.field firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

.field frameNrInGop:I

.field private frametick:I

.field private height:I

.field private lang:Ljava/lang/String;

.field pictureOrderCounts:[I

.field pictureParameterRangeMap:Lcom/googlecode/mp4parser/util/RangeStartMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/googlecode/mp4parser/util/RangeStartMap",
            "<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field ppsIdToPps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;",
            ">;"
        }
    .end annotation
.end field

.field ppsIdToPpsBytes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field prevPicOrderCntLsb:I

.field prevPicOrderCntMsb:I

.field sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

.field private samples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Sample;",
            ">;"
        }
    .end annotation
.end field

.field private seiMessage:Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;

.field seqParameterRangeMap:Lcom/googlecode/mp4parser/util/RangeStartMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/googlecode/mp4parser/util/RangeStartMap",
            "<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field spsIdToSps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;",
            ">;"
        }
    .end annotation
.end field

.field spsIdToSpsBytes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field private timescale:J

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/mp4parser/DataSource;)V
    .locals 1
    .param p1, "dataSource"    # Lcom/googlecode/mp4parser/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    const-string/jumbo v0, "eng"

    invoke-direct {p0, p1, v0}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;-><init>(Lcom/googlecode/mp4parser/DataSource;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/mp4parser/DataSource;Ljava/lang/String;)V
    .locals 7
    .param p1, "dataSource"    # Lcom/googlecode/mp4parser/DataSource;
    .param p2, "lang"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    const-wide/16 v4, -0x1

    const/4 v6, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;-><init>(Lcom/googlecode/mp4parser/DataSource;Ljava/lang/String;JI)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/mp4parser/DataSource;Ljava/lang/String;JI)V
    .locals 3
    .param p1, "dataSource"    # Lcom/googlecode/mp4parser/DataSource;
    .param p2, "lang"    # Ljava/lang/String;
    .param p3, "timescale"    # J
    .param p5, "frametick"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 75
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack;-><init>(Lcom/googlecode/mp4parser/DataSource;)V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->spsIdToSpsBytes:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->spsIdToSps:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->ppsIdToPpsBytes:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->ppsIdToPps:Ljava/util/Map;

    .line 37
    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    .line 38
    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->firstPictureParameterSet:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

    .line 39
    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->currentSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    .line 40
    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->currentPictureParameterSet:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

    .line 41
    new-instance v0, Lcom/googlecode/mp4parser/util/RangeStartMap;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/util/RangeStartMap;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->seqParameterRangeMap:Lcom/googlecode/mp4parser/util/RangeStartMap;

    .line 42
    new-instance v0, Lcom/googlecode/mp4parser/util/RangeStartMap;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/util/RangeStartMap;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->pictureParameterRangeMap:Lcom/googlecode/mp4parser/util/RangeStartMap;

    .line 43
    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->frameNrInGop:I

    .line 44
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->pictureOrderCounts:[I

    .line 45
    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->prevPicOrderCntLsb:I

    .line 46
    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->prevPicOrderCntMsb:I

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->determineFrameRate:Z

    .line 54
    const-string/jumbo v0, "eng"

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->lang:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->lang:Ljava/lang/String;

    .line 77
    iput-wide p3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->timescale:J

    .line 78
    iput p5, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->frametick:I

    .line 79
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    if-lez p5, :cond_0

    .line 80
    iput-boolean v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->determineFrameRate:Z

    .line 83
    :cond_0
    new-instance v0, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;

    invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;-><init>(Lcom/googlecode/mp4parser/DataSource;)V

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->parse(Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;)V

    .line 84
    return-void
.end method

.method static synthetic access$0()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->LOG:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$1(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->cleanBuffer(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private calcPOC0(Lcom/googlecode/mp4parser/authoring/tracks/h264/H264NalUnitHeader;Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;)I
    .locals 5
    .param p1, "nu"    # Lcom/googlecode/mp4parser/authoring/tracks/h264/H264NalUnitHeader;
    .param p2, "sh"    # Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;

    .prologue
    .line 533
    iget v2, p2, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->pic_order_cnt_lsb:I

    .line 534
    .local v2, "pocCntLsb":I
    const/4 v3, 0x1

    iget-object v4, p2, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->sps:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v4, v4, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->log2_max_pic_order_cnt_lsb_minus4:I

    add-int/lit8 v4, v4, 0x4

    shl-int v0, v3, v4

    .line 538
    .local v0, "maxPicOrderCntLsb":I
    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->prevPicOrderCntLsb:I

    if-ge v2, v3, :cond_1

    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->prevPicOrderCntLsb:I

    sub-int/2addr v3, v2

    div-int/lit8 v4, v0, 0x2

    if-lt v3, v4, :cond_1

    .line 539
    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->prevPicOrderCntMsb:I

    add-int v1, v3, v0

    .line 545
    .local v1, "picOrderCntMsb":I
    :goto_0
    iget v3, p1, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264NalUnitHeader;->nal_ref_idc:I

    if-eqz v3, :cond_0

    .line 546
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->prevPicOrderCntMsb:I

    .line 547
    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->prevPicOrderCntLsb:I

    .line 550
    :cond_0
    add-int v3, v1, v2

    return v3

    .line 540
    .end local v1    # "picOrderCntMsb":I
    :cond_1
    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->prevPicOrderCntLsb:I

    if-le v2, v3, :cond_2

    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->prevPicOrderCntLsb:I

    sub-int v3, v2, v3

    div-int/lit8 v4, v0, 0x2

    if-le v3, v4, :cond_2

    .line 541
    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->prevPicOrderCntMsb:I

    sub-int v1, v3, v0

    .restart local v1    # "picOrderCntMsb":I
    goto :goto_0

    .line 543
    .end local v1    # "picOrderCntMsb":I
    :cond_2
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->prevPicOrderCntMsb:I

    .restart local v1    # "picOrderCntMsb":I
    goto :goto_0
.end method

.method private calcPOC1(ILcom/googlecode/mp4parser/authoring/tracks/h264/H264NalUnitHeader;Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;)I
    .locals 7
    .param p1, "absFrameNum"    # I
    .param p2, "nu"    # Lcom/googlecode/mp4parser/authoring/tracks/h264/H264NalUnitHeader;
    .param p3, "sh"    # Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;

    .prologue
    .line 505
    iget-object v5, p3, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->sps:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v5, v5, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->num_ref_frames_in_pic_order_cnt_cycle:I

    if-nez v5, :cond_0

    .line 506
    const/4 p1, 0x0

    .line 507
    :cond_0
    iget v5, p2, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264NalUnitHeader;->nal_ref_idc:I

    if-nez v5, :cond_1

    if-lez p1, :cond_1

    .line 508
    add-int/lit8 p1, p1, -0x1

    .line 510
    :cond_1
    const/4 v0, 0x0

    .line 511
    .local v0, "expectedDeltaPerPicOrderCntCycle":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p3, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->sps:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v5, v5, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->num_ref_frames_in_pic_order_cnt_cycle:I

    if-lt v3, v5, :cond_3

    .line 515
    if-lez p1, :cond_5

    .line 516
    add-int/lit8 v5, p1, -0x1

    iget-object v6, p3, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->sps:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v6, v6, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->num_ref_frames_in_pic_order_cnt_cycle:I

    div-int v4, v5, v6

    .line 517
    .local v4, "picOrderCntCycleCnt":I
    add-int/lit8 v5, p1, -0x1

    iget-object v6, p3, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->sps:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v6, v6, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->num_ref_frames_in_pic_order_cnt_cycle:I

    rem-int v2, v5, v6

    .line 519
    .local v2, "frameNumInPicOrderCntCycle":I
    mul-int v1, v4, v0

    .line 520
    .local v1, "expectedPicOrderCnt":I
    const/4 v3, 0x0

    :goto_1
    if-le v3, v2, :cond_4

    .line 525
    .end local v2    # "frameNumInPicOrderCntCycle":I
    .end local v4    # "picOrderCntCycleCnt":I
    :goto_2
    iget v5, p2, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264NalUnitHeader;->nal_ref_idc:I

    if-nez v5, :cond_2

    .line 526
    iget-object v5, p3, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->sps:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v5, v5, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->offset_for_non_ref_pic:I

    add-int/2addr v1, v5

    .line 528
    :cond_2
    iget v5, p3, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->delta_pic_order_cnt_0:I

    add-int/2addr v5, v1

    return v5

    .line 512
    .end local v1    # "expectedPicOrderCnt":I
    :cond_3
    iget-object v5, p3, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->sps:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-object v5, v5, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->offsetForRefFrame:[I

    aget v5, v5, v3

    add-int/2addr v0, v5

    .line 511
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 521
    .restart local v1    # "expectedPicOrderCnt":I
    .restart local v2    # "frameNumInPicOrderCntCycle":I
    .restart local v4    # "picOrderCntCycleCnt":I
    :cond_4
    iget-object v5, p3, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->sps:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-object v5, v5, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->offsetForRefFrame:[I

    aget v5, v5, v3

    add-int/2addr v1, v5

    .line 520
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 523
    .end local v1    # "expectedPicOrderCnt":I
    .end local v2    # "frameNumInPicOrderCntCycle":I
    .end local v4    # "picOrderCntCycleCnt":I
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "expectedPicOrderCnt":I
    goto :goto_2
.end method

.method private calcPOC2(ILcom/googlecode/mp4parser/authoring/tracks/h264/H264NalUnitHeader;Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;)I
    .locals 1
    .param p1, "absFrameNum"    # I
    .param p2, "nu"    # Lcom/googlecode/mp4parser/authoring/tracks/h264/H264NalUnitHeader;
    .param p3, "sh"    # Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;

    .prologue
    .line 497
    iget v0, p2, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264NalUnitHeader;->nal_ref_idc:I

    if-nez v0, :cond_0

    .line 498
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, -0x1

    .line 500
    :goto_0
    return v0

    :cond_0
    mul-int/lit8 v0, p1, 0x2

    goto :goto_0
.end method

.method private calcPoc(ILcom/googlecode/mp4parser/authoring/tracks/h264/H264NalUnitHeader;Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;)I
    .locals 2
    .param p1, "absFrameNum"    # I
    .param p2, "nu"    # Lcom/googlecode/mp4parser/authoring/tracks/h264/H264NalUnitHeader;
    .param p3, "sh"    # Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;

    .prologue
    .line 486
    iget-object v0, p3, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->sps:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v0, v0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->pic_order_cnt_type:I

    if-nez v0, :cond_0

    .line 487
    invoke-direct {p0, p2, p3}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->calcPOC0(Lcom/googlecode/mp4parser/authoring/tracks/h264/H264NalUnitHeader;Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;)I

    move-result v0

    .line 491
    :goto_0
    return v0

    .line 488
    :cond_0
    iget-object v0, p3, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->sps:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v0, v0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->pic_order_cnt_type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 489
    invoke-direct {p0, p1, p2, p3}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->calcPOC1(ILcom/googlecode/mp4parser/authoring/tracks/h264/H264NalUnitHeader;Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;)I

    move-result v0

    goto :goto_0

    .line 491
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->calcPOC2(ILcom/googlecode/mp4parser/authoring/tracks/h264/H264NalUnitHeader;Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;)I

    move-result v0

    goto :goto_0
.end method

.method private configureFramerate()V
    .locals 8

    .prologue
    const-wide/32 v6, 0x15f90

    const/16 v4, 0xe10

    .line 608
    iget-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->determineFrameRate:Z

    if-eqz v0, :cond_2

    .line 609
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-object v0, v0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    if-eqz v0, :cond_3

    .line 610
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-object v0, v0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    iget v0, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->time_scale:I

    shr-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->timescale:J

    .line 611
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-object v0, v0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    iget v0, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->num_units_in_tick:I

    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->frametick:I

    .line 612
    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->timescale:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->frametick:I

    if-nez v0, :cond_1

    .line 613
    :cond_0
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "vuiParams contain invalid values: time_scale: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->timescale:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and frame_tick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->frametick:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Setting frame rate to 25fps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 614
    iput-wide v6, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->timescale:J

    .line 615
    iput v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->frametick:I

    .line 618
    :cond_1
    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->timescale:J

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->frametick:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 619
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Framerate is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->timescale:J

    iget v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->frametick:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". That is suspicious."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 627
    :cond_2
    :goto_0
    return-void

    .line 622
    :cond_3
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->LOG:Ljava/util/logging/Logger;

    const-string/jumbo v1, "Can\'t determine frame rate. Guessing 25 fps"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 623
    iput-wide v6, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->timescale:J

    .line 624
    iput v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->frametick:I

    goto :goto_0
.end method

.method private createSample(Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    .local p1, "buffered":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    new-instance v10, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;

    const/4 v12, 0x0

    invoke-direct {v10, v12}, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;-><init>(I)V

    .line 396
    .local v10, "sampleDependency":Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;
    const/4 v1, 0x0

    .line 397
    .local v1, "IdrPicFlag":Z
    const/4 v7, 0x0

    .line 398
    .local v7, "nu":Lcom/googlecode/mp4parser/authoring/tracks/h264/H264NalUnitHeader;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_1

    .line 411
    if-nez v7, :cond_2

    .line 412
    sget-object v12, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->LOG:Ljava/util/logging/Logger;

    const-string/jumbo v13, "Sample without Slice"

    invoke-virtual {v12, v13}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 483
    :cond_0
    :goto_1
    return-void

    .line 398
    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    .line 399
    .local v6, "nal":Ljava/nio/ByteBuffer;
    invoke-static {v6}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->getNalUnitHeader(Ljava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/authoring/tracks/h264/H264NalUnitHeader;

    move-result-object v2

    .line 401
    .local v2, "_nu":Lcom/googlecode/mp4parser/authoring/tracks/h264/H264NalUnitHeader;
    iget v13, v2, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264NalUnitHeader;->nal_unit_type:I

    packed-switch v13, :pswitch_data_0

    goto :goto_0

    .line 408
    :goto_2
    :pswitch_0
    move-object v7, v2

    goto :goto_0

    .line 403
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_2

    .line 416
    .end local v2    # "_nu":Lcom/googlecode/mp4parser/authoring/tracks/h264/H264NalUnitHeader;
    .end local v6    # "nal":Ljava/nio/ByteBuffer;
    :cond_2
    if-eqz v1, :cond_3

    .line 417
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->calcCtts()V

    .line 420
    :cond_3
    new-instance v13, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$ByteBufferBackedInputStream;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v12}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$ByteBufferBackedInputStream;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;Ljava/nio/ByteBuffer;)V

    invoke-static {v13}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->cleanBuffer(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v4

    .line 421
    .local v4, "bs":Ljava/io/InputStream;
    new-instance v11, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->spsIdToSps:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->ppsIdToPps:Ljava/util/Map;

    invoke-direct {v11, v4, v12, v13, v1}, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;-><init>(Ljava/io/InputStream;Ljava/util/Map;Ljava/util/Map;Z)V

    .line 423
    .local v11, "sh":Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;
    iget v12, v7, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264NalUnitHeader;->nal_ref_idc:I

    if-nez v12, :cond_8

    .line 424
    const/4 v12, 0x2

    invoke-virtual {v10, v12}, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->setSampleIsDependentOn(I)V

    .line 428
    :goto_3
    iget-object v12, v11, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->slice_type:Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader$SliceType;

    sget-object v13, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader$SliceType;->I:Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader$SliceType;

    if-eq v12, v13, :cond_4

    iget-object v12, v11, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->slice_type:Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader$SliceType;

    sget-object v13, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader$SliceType;->SI:Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader$SliceType;

    if-ne v12, v13, :cond_9

    .line 429
    :cond_4
    const/4 v12, 0x2

    invoke-virtual {v10, v12}, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->setSampleDependsOn(I)V

    .line 433
    :goto_4
    invoke-virtual/range {p0 .. p1}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->createSampleObject(Ljava/util/List;)Lcom/googlecode/mp4parser/authoring/Sample;

    move-result-object v3

    .line 435
    .local v3, "bb":Lcom/googlecode/mp4parser/authoring/Sample;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->clear()V

    .line 437
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->seiMessage:Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->seiMessage:Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;

    iget v12, v12, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;->n_frames:I

    if-nez v12, :cond_6

    .line 438
    :cond_5
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->frameNrInGop:I

    .line 441
    :cond_6
    iget-object v12, v11, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->sps:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v12, v12, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->pic_order_cnt_type:I

    if-nez v12, :cond_c

    .line 442
    const/4 v12, 0x1

    iget-object v13, v11, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->sps:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v13, v13, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->log2_max_pic_order_cnt_lsb_minus4:I

    add-int/lit8 v13, v13, 0x4

    shl-int v5, v12, v13

    .line 444
    .local v5, "max_pic_order_count_lsb":I
    iget v9, v11, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->pic_order_cnt_lsb:I

    .line 445
    .local v9, "picOrderCountLsb":I
    const/4 v8, 0x0

    .line 446
    .local v8, "picOrderCntMsb":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->prevPicOrderCntLsb:I

    if-ge v9, v12, :cond_a

    .line 447
    move-object/from16 v0, p0

    iget v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->prevPicOrderCntLsb:I

    sub-int/2addr v12, v9

    div-int/lit8 v13, v5, 0x2

    if-lt v12, v13, :cond_a

    .line 448
    move-object/from16 v0, p0

    iget v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->prevPicOrderCntMsb:I

    add-int v8, v12, v5

    .line 456
    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->pictureOrderCounts:[I

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    add-int v15, v8, v9

    aput v15, v13, v14

    invoke-static {v12, v13}, Lcom/googlecode/mp4parser/util/Mp4Arrays;->copyOfAndAppend([I[I)[I

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->pictureOrderCounts:[I

    .line 457
    move-object/from16 v0, p0

    iput v9, v0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->prevPicOrderCntLsb:I

    .line 458
    move-object/from16 v0, p0

    iput v8, v0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->prevPicOrderCntMsb:I

    .line 476
    .end local v5    # "max_pic_order_count_lsb":I
    .end local v8    # "picOrderCntMsb":I
    .end local v9    # "picOrderCountLsb":I
    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->sdtp:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    move-object/from16 v0, p0

    iget v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->frameNrInGop:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->frameNrInGop:I

    .line 479
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->samples:Ljava/util/List;

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    if-eqz v1, :cond_0

    .line 481
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->stss:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->samples:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 426
    .end local v3    # "bb":Lcom/googlecode/mp4parser/authoring/Sample;
    :cond_8
    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->setSampleIsDependentOn(I)V

    goto/16 :goto_3

    .line 431
    :cond_9
    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->setSampleDependsOn(I)V

    goto/16 :goto_4

    .line 449
    .restart local v3    # "bb":Lcom/googlecode/mp4parser/authoring/Sample;
    .restart local v5    # "max_pic_order_count_lsb":I
    .restart local v8    # "picOrderCntMsb":I
    .restart local v9    # "picOrderCountLsb":I
    :cond_a
    move-object/from16 v0, p0

    iget v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->prevPicOrderCntLsb:I

    if-le v9, v12, :cond_b

    .line 450
    move-object/from16 v0, p0

    iget v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->prevPicOrderCntLsb:I

    sub-int v12, v9, v12

    div-int/lit8 v13, v5, 0x2

    if-le v12, v13, :cond_b

    .line 451
    move-object/from16 v0, p0

    iget v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->prevPicOrderCntMsb:I

    sub-int v8, v12, v5

    .line 452
    goto :goto_5

    .line 453
    :cond_b
    move-object/from16 v0, p0

    iget v8, v0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->prevPicOrderCntMsb:I

    goto :goto_5

    .line 461
    .end local v5    # "max_pic_order_count_lsb":I
    .end local v8    # "picOrderCntMsb":I
    .end local v9    # "picOrderCountLsb":I
    :cond_c
    iget-object v12, v11, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->sps:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v12, v12, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->pic_order_cnt_type:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_d

    .line 471
    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "pic_order_cnt_type == 1 needs to be implemented"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 472
    :cond_d
    iget-object v12, v11, Lcom/googlecode/mp4parser/authoring/tracks/h264/SliceHeader;->sps:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v12, v12, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->pic_order_cnt_type:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_7

    .line 473
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->pictureOrderCounts:[I

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->samples:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    aput v15, v13, v14

    invoke-static {v12, v13}, Lcom/googlecode/mp4parser/util/Mp4Arrays;->copyOfAndAppend([I[I)[I

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->pictureOrderCounts:[I

    goto/16 :goto_6

    .line 401
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getNalUnitHeader(Ljava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/authoring/tracks/h264/H264NalUnitHeader;
    .locals 3
    .param p0, "nal"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 95
    new-instance v0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264NalUnitHeader;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264NalUnitHeader;-><init>()V

    .line 96
    .local v0, "nalUnitHeader":Lcom/googlecode/mp4parser/authoring/tracks/h264/H264NalUnitHeader;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    .line 97
    .local v1, "type":I
    shr-int/lit8 v2, v1, 0x5

    and-int/lit8 v2, v2, 0x3

    iput v2, v0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264NalUnitHeader;->nal_ref_idc:I

    .line 98
    and-int/lit8 v2, v1, 0x1f

    iput v2, v0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264NalUnitHeader;->nal_unit_type:I

    .line 100
    return-object v0
.end method

.method private handlePPS(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 554
    new-instance v1, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$ByteBufferBackedInputStream;

    invoke-direct {v1, p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$ByteBufferBackedInputStream;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;Ljava/nio/ByteBuffer;)V

    .line 555
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    .line 557
    invoke-static {v1}, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->read(Ljava/io/InputStream;)Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

    move-result-object v0

    .line 558
    .local v0, "_pictureParameterSet":Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->firstPictureParameterSet:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

    if-nez v4, :cond_0

    .line 559
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->firstPictureParameterSet:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

    .line 562
    :cond_0
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->currentPictureParameterSet:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

    .line 564
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    invoke-static {v4}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->toArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v3

    .line 565
    .local v3, "ppsBytes":[B
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->ppsIdToPpsBytes:Ljava/util/Map;

    iget v5, v0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->pic_parameter_set_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 568
    .local v2, "oldPpsSameId":[B
    if-eqz v2, :cond_1

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_1

    .line 569
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "OMG - I got two SPS with same ID but different settings! (AVC3 is the solution)"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 571
    :cond_1
    if-nez v2, :cond_2

    .line 572
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->pictureParameterRangeMap:Lcom/googlecode/mp4parser/util/RangeStartMap;

    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->samples:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/googlecode/mp4parser/util/RangeStartMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    :cond_2
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->ppsIdToPpsBytes:Ljava/util/Map;

    iget v5, v0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->pic_parameter_set_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->ppsIdToPps:Ljava/util/Map;

    iget v5, v0, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->pic_parameter_set_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    return-void
.end method

.method private handleSPS(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 582
    new-instance v4, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$ByteBufferBackedInputStream;

    invoke-direct {v4, p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$ByteBufferBackedInputStream;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;Ljava/nio/ByteBuffer;)V

    invoke-static {v4}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->cleanBuffer(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v3

    .line 583
    .local v3, "spsInputStream":Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    .line 584
    invoke-static {v3}, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->read(Ljava/io/InputStream;)Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    move-result-object v0

    .line 585
    .local v0, "_seqParameterSet":Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    if-nez v4, :cond_0

    .line 586
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    .line 587
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->configureFramerate()V

    .line 589
    :cond_0
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->currentSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    .line 591
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    invoke-static {v4}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->toArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    .line 592
    .local v2, "spsBytes":[B
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->spsIdToSpsBytes:Ljava/util/Map;

    iget v5, v0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->seq_parameter_set_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 593
    .local v1, "oldSpsSameId":[B
    if-eqz v1, :cond_1

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_1

    .line 594
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "OMG - I got two SPS with same ID but different settings!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 596
    :cond_1
    if-eqz v1, :cond_2

    .line 597
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->seqParameterRangeMap:Lcom/googlecode/mp4parser/util/RangeStartMap;

    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->samples:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/googlecode/mp4parser/util/RangeStartMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    :cond_2
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->spsIdToSpsBytes:Ljava/util/Map;

    iget v5, v0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->seq_parameter_set_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->spsIdToSps:Ljava/util/Map;

    iget v5, v0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->seq_parameter_set_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    return-void
.end method

.method private parse(Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;)V
    .locals 8
    .param p1, "la"    # Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/high16 v6, 0x4052000000000000L    # 72.0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 106
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->samples:Ljava/util/List;

    .line 107
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->readSamples(Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->readVariables()Z

    move-result v2

    if-nez v2, :cond_1

    .line 112
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 115
    :cond_1
    new-instance v2, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct {v2}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    iput-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    .line 116
    new-instance v1, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;

    const-string/jumbo v2, "avc1"

    invoke-direct {v1, v2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;-><init>(Ljava/lang/String;)V

    .line 117
    .local v1, "visualSampleEntry":Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;
    invoke-virtual {v1, v5}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setDataReferenceIndex(I)V

    .line 118
    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setDepth(I)V

    .line 119
    invoke-virtual {v1, v5}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setFrameCount(I)V

    .line 120
    invoke-virtual {v1, v6, v7}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setHorizresolution(D)V

    .line 121
    invoke-virtual {v1, v6, v7}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setVertresolution(D)V

    .line 122
    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->width:I

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setWidth(I)V

    .line 123
    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->height:I

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setHeight(I)V

    .line 124
    const-string/jumbo v2, "AVC Coding"

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setCompressorname(Ljava/lang/String;)V

    .line 126
    new-instance v0, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;

    invoke-direct {v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;-><init>()V

    .line 128
    .local v0, "avcConfigurationBox":Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->spsIdToSpsBytes:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setSequenceParameterSets(Ljava/util/List;)V

    .line 129
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->ppsIdToPpsBytes:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setPictureParameterSets(Ljava/util/List;)V

    .line 130
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v2, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->level_idc:I

    invoke-virtual {v0, v2}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    .line 131
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v2, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->profile_idc:I

    invoke-virtual {v0, v2}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcProfileIndication(I)V

    .line 132
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v2, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->bit_depth_luma_minus8:I

    invoke-virtual {v0, v2}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setBitDepthLumaMinus8(I)V

    .line 133
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v2, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->bit_depth_chroma_minus8:I

    invoke-virtual {v0, v2}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setBitDepthChromaMinus8(I)V

    .line 134
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-object v2, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->chroma_format_idc:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setChromaFormat(I)V

    .line 135
    invoke-virtual {v0, v5}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setConfigurationVersion(I)V

    .line 136
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setLengthSizeMinusOne(I)V

    .line 140
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-boolean v2, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->constraint_set_0_flag:Z

    if-eqz v2, :cond_3

    const/16 v2, 0x80

    .line 141
    :goto_0
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-boolean v4, v4, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->constraint_set_1_flag:Z

    if-eqz v4, :cond_4

    const/16 v4, 0x40

    .line 140
    :goto_1
    add-int/2addr v4, v2

    .line 142
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-boolean v2, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->constraint_set_2_flag:Z

    if-eqz v2, :cond_5

    const/16 v2, 0x20

    .line 140
    :goto_2
    add-int/2addr v4, v2

    .line 143
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-boolean v2, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->constraint_set_3_flag:Z

    if-eqz v2, :cond_6

    const/16 v2, 0x10

    .line 140
    :goto_3
    add-int/2addr v2, v4

    .line 144
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-boolean v4, v4, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->constraint_set_4_flag:Z

    if-eqz v4, :cond_2

    const/16 v3, 0x8

    .line 140
    :cond_2
    add-int/2addr v2, v3

    .line 145
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-wide v4, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->reserved_zero_2bits:J

    const-wide/16 v6, 0x3

    and-long/2addr v4, v6

    long-to-int v3, v4

    .line 140
    add-int/2addr v2, v3

    .line 139
    invoke-virtual {v0, v2}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setProfileCompatibility(I)V

    .line 148
    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 149
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual {v2, v1}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 151
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setCreationTime(Ljava/util/Date;)V

    .line 152
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setModificationTime(Ljava/util/Date;)V

    .line 153
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->lang:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setLanguage(Ljava/lang/String;)V

    .line 154
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    iget-wide v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->timescale:J

    invoke-virtual {v2, v4, v5}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setTimescale(J)V

    .line 155
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->width:I

    int-to-double v4, v3

    invoke-virtual {v2, v4, v5}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setWidth(D)V

    .line 156
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->height:I

    int-to-double v4, v3

    invoke-virtual {v2, v4, v5}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setHeight(D)V

    .line 157
    return-void

    :cond_3
    move v2, v3

    .line 140
    goto :goto_0

    :cond_4
    move v4, v3

    .line 141
    goto :goto_1

    :cond_5
    move v2, v3

    .line 142
    goto :goto_2

    :cond_6
    move v2, v3

    .line 143
    goto :goto_3
.end method

.method private readSamples(Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;)Z
    .locals 8
    .param p1, "la"    # Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v0, "buffered":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    const/4 v2, 0x0

    .line 284
    .local v2, "fvnd":Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->findNextNal(Lcom/googlecode/mp4parser/authoring/tracks/AbstractH26XTrack$LookAhead;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .local v3, "nal":Ljava/nio/ByteBuffer;
    if-nez v3, :cond_1

    .line 357
    :pswitch_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 358
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->createSample(Ljava/util/List;)V

    .line 360
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->calcCtts()V

    .line 362
    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->samples:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [J

    iput-object v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->decodingTimes:[J

    .line 363
    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->decodingTimes:[J

    iget v6, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->frametick:I

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Ljava/util/Arrays;->fill([JJ)V

    .line 366
    const/4 v5, 0x1

    return v5

    .line 285
    :cond_1
    invoke-static {v3}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->getNalUnitHeader(Ljava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/authoring/tracks/h264/H264NalUnitHeader;

    move-result-object v4

    .line 287
    .local v4, "nalUnitHeader":Lcom/googlecode/mp4parser/authoring/tracks/h264/H264NalUnitHeader;
    iget v5, v4, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264NalUnitHeader;->nal_unit_type:I

    packed-switch v5, :pswitch_data_0

    .line 351
    :pswitch_1
    sget-object v5, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Unknown NAL unit type: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v4, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264NalUnitHeader;->nal_unit_type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :pswitch_2
    new-instance v1, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;

    .line 294
    iget v5, v4, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264NalUnitHeader;->nal_ref_idc:I

    iget v6, v4, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264NalUnitHeader;->nal_unit_type:I

    .line 293
    invoke-direct {v1, p0, v3, v5, v6}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;Ljava/nio/ByteBuffer;II)V

    .line 295
    .local v1, "current":Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;
    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;->isFirstInNew(Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 296
    sget-object v5, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->LOG:Ljava/util/logging/Logger;

    const-string/jumbo v6, "Wrapping up cause of first vcl nal is found"

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 297
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->createSample(Ljava/util/List;)V

    .line 299
    :cond_2
    move-object v2, v1

    .line 301
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 306
    .end local v1    # "current":Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$1FirstVclNalDetector;
    :pswitch_3
    if-eqz v2, :cond_3

    .line 307
    sget-object v5, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->LOG:Ljava/util/logging/Logger;

    const-string/jumbo v6, "Wrapping up cause of SEI after vcl marks new sample"

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 308
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->createSample(Ljava/util/List;)V

    .line 309
    const/4 v2, 0x0

    .line 311
    :cond_3
    new-instance v5, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;

    new-instance v6, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$ByteBufferBackedInputStream;

    invoke-direct {v6, p0, v3}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$ByteBufferBackedInputStream;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;Ljava/nio/ByteBuffer;)V

    invoke-static {v6}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->cleanBuffer(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v6

    iget-object v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->currentSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    invoke-direct {v5, p0, v6, v7}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;Ljava/io/InputStream;Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;)V

    iput-object v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->seiMessage:Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl$SEIMessage;

    .line 313
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 317
    :pswitch_4
    if-eqz v2, :cond_4

    .line 318
    sget-object v5, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->LOG:Ljava/util/logging/Logger;

    const-string/jumbo v6, "Wrapping up cause of AU after vcl marks new sample"

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 319
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->createSample(Ljava/util/List;)V

    .line 320
    const/4 v2, 0x0

    .line 323
    :cond_4
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 326
    :pswitch_5
    if-eqz v2, :cond_5

    .line 327
    sget-object v5, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->LOG:Ljava/util/logging/Logger;

    const-string/jumbo v6, "Wrapping up cause of SPS after vcl marks new sample"

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 328
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->createSample(Ljava/util/List;)V

    .line 329
    const/4 v2, 0x0

    .line 331
    :cond_5
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v5}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->handleSPS(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_0

    .line 334
    :pswitch_6
    if-eqz v2, :cond_6

    .line 335
    sget-object v5, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->LOG:Ljava/util/logging/Logger;

    const-string/jumbo v6, "Wrapping up cause of PPS after vcl marks new sample"

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 336
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->createSample(Ljava/util/List;)V

    .line 337
    const/4 v2, 0x0

    .line 339
    :cond_6
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v5}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->handlePPS(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_0

    .line 347
    :pswitch_7
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Sequence parameter set extension is not yet handled. Needs TLC."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_7
    .end packed-switch
.end method

.method private readVariables()Z
    .locals 7

    .prologue
    .line 172
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v4, v4, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->pic_width_in_mbs_minus1:I

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->width:I

    .line 173
    const/4 v3, 0x2

    .line 174
    .local v3, "mult":I
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-boolean v4, v4, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_mbs_only_flag:Z

    if-eqz v4, :cond_0

    .line 175
    const/4 v3, 0x1

    .line 177
    :cond_0
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v4, v4, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->pic_height_in_map_units_minus1:I

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v4, v4, 0x10

    mul-int/2addr v4, v3

    iput v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->height:I

    .line 178
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-boolean v4, v4, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_cropping_flag:Z

    if-eqz v4, :cond_3

    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, "chromaArrayType":I
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-boolean v4, v4, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->residual_color_transform_flag:Z

    if-nez v4, :cond_1

    .line 181
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-object v4, v4, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->chroma_format_idc:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->getId()I

    move-result v0

    .line 183
    :cond_1
    const/4 v1, 0x1

    .line 184
    .local v1, "cropUnitX":I
    move v2, v3

    .line 185
    .local v2, "cropUnitY":I
    if-eqz v0, :cond_2

    .line 186
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-object v4, v4, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->chroma_format_idc:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->getSubWidth()I

    move-result v1

    .line 187
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-object v4, v4, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->chroma_format_idc:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->getSubHeight()I

    move-result v4

    mul-int v2, v4, v3

    .line 190
    :cond_2
    iget v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->width:I

    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v5, v5, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_crop_left_offset:I

    iget-object v6, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v6, v6, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_crop_right_offset:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v1

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->width:I

    .line 191
    iget v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->height:I

    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v5, v5, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_crop_top_offset:I

    iget-object v6, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->firstSeqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v6, v6, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_crop_bottom_offset:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v2

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->height:I

    .line 193
    .end local v0    # "chromaArrayType":I
    .end local v1    # "cropUnitX":I
    .end local v2    # "cropUnitY":I
    :cond_3
    const/4 v4, 0x1

    return v4
.end method


# virtual methods
.method public calcCtts()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 371
    const/4 v5, 0x0

    .line 372
    .local v5, "pTime":I
    const/4 v2, -0x1

    .line 373
    .local v2, "lastPoc":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget-object v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->pictureOrderCounts:[I

    array-length v7, v7

    if-lt v1, v7, :cond_0

    .line 385
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->pictureOrderCounts:[I

    array-length v7, v7

    if-lt v0, v7, :cond_3

    .line 389
    new-array v7, v11, [I

    iput-object v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->pictureOrderCounts:[I

    .line 390
    return-void

    .line 374
    .end local v0    # "i":I
    :cond_0
    const/4 v3, 0x0

    .line 375
    .local v3, "minIndex":I
    const v4, 0x7fffffff

    .line 376
    .local v4, "minValue":I
    add-int/lit8 v7, v1, -0x80

    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .restart local v0    # "i":I
    :goto_2
    iget-object v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->pictureOrderCounts:[I

    array-length v7, v7

    add-int/lit16 v8, v1, 0x80

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-lt v0, v7, :cond_1

    .line 382
    iget-object v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->pictureOrderCounts:[I

    aget v2, v7, v3

    .line 383
    iget-object v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->pictureOrderCounts:[I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "pTime":I
    .local v6, "pTime":I
    aput v5, v7, v3

    .line 373
    add-int/lit8 v1, v1, 0x1

    move v5, v6

    .end local v6    # "pTime":I
    .restart local v5    # "pTime":I
    goto :goto_0

    .line 377
    :cond_1
    iget-object v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->pictureOrderCounts:[I

    aget v7, v7, v0

    if-le v7, v2, :cond_2

    iget-object v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->pictureOrderCounts:[I

    aget v7, v7, v0

    if-ge v7, v4, :cond_2

    .line 378
    move v3, v0

    .line 379
    iget-object v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->pictureOrderCounts:[I

    aget v4, v7, v0

    .line 376
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 386
    .end local v3    # "minIndex":I
    .end local v4    # "minValue":I
    :cond_3
    iget-object v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->ctts:Ljava/util/List;

    new-instance v8, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->pictureOrderCounts:[I

    aget v10, v10, v0

    sub-int/2addr v10, v0

    invoke-direct {v8, v9, v10}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;-><init>(II)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    const-string/jumbo v0, "vide"

    return-object v0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    return-object v0
.end method

.method public getSamples()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Sample;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->samples:Ljava/util/List;

    return-object v0
.end method
