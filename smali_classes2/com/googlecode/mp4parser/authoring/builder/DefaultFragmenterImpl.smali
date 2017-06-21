.class public Lcom/googlecode/mp4parser/authoring/builder/DefaultFragmenterImpl;
.super Ljava/lang/Object;
.source "DefaultFragmenterImpl.java"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/builder/Fragmenter;


# instance fields
.field private fragmentLength:D


# direct methods
.method public constructor <init>(D)V
    .locals 3
    .param p1, "fragmentLength"    # D

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iput-wide v0, p0, Lcom/googlecode/mp4parser/authoring/builder/DefaultFragmenterImpl;->fragmentLength:D

    .line 34
    iput-wide p1, p0, Lcom/googlecode/mp4parser/authoring/builder/DefaultFragmenterImpl;->fragmentLength:D

    .line 35
    return-void
.end method


# virtual methods
.method public sampleNumbers(Lcom/googlecode/mp4parser/authoring/Track;)[J
    .locals 14
    .param p1, "track"    # Lcom/googlecode/mp4parser/authoring/Track;

    .prologue
    .line 38
    const/4 v5, 0x1

    new-array v3, v5, [J

    const/4 v5, 0x0

    const-wide/16 v10, 0x1

    aput-wide v10, v3, v5

    .line 39
    .local v3, "segmentStartSamples":[J
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDurations()[J

    move-result-object v2

    .line 40
    .local v2, "sampleDurations":[J
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v4

    .line 41
    .local v4, "syncSamples":[J
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v8

    .line 42
    .local v8, "timescale":J
    const-wide/16 v6, 0x0

    .line 44
    .local v6, "time":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v2

    if-lt v0, v5, :cond_1

    .line 55
    iget-wide v10, p0, Lcom/googlecode/mp4parser/authoring/builder/DefaultFragmenterImpl;->fragmentLength:D

    cmpg-double v5, v6, v10

    if-gez v5, :cond_0

    array-length v5, v3

    const/4 v10, 0x1

    if-le v5, v10, :cond_0

    .line 56
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    new-array v1, v5, [J

    .line 57
    .local v1, "nuSegmentStartSamples":[J
    const/4 v5, 0x0

    const/4 v10, 0x0

    array-length v11, v3

    add-int/lit8 v11, v11, -0x1

    invoke-static {v3, v5, v1, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    move-object v3, v1

    .line 61
    .end local v1    # "nuSegmentStartSamples":[J
    :cond_0
    return-object v3

    .line 45
    :cond_1
    aget-wide v10, v2, v0

    long-to-double v10, v10

    long-to-double v12, v8

    div-double/2addr v10, v12

    add-double/2addr v6, v10

    .line 46
    iget-wide v10, p0, Lcom/googlecode/mp4parser/authoring/builder/DefaultFragmenterImpl;->fragmentLength:D

    cmpl-double v5, v6, v10

    if-ltz v5, :cond_4

    if-eqz v4, :cond_2

    add-int/lit8 v5, v0, 0x1

    int-to-long v10, v5

    invoke-static {v4, v10, v11}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v5

    if-ltz v5, :cond_4

    .line 47
    :cond_2
    if-lez v0, :cond_3

    .line 48
    const/4 v5, 0x1

    new-array v5, v5, [J

    const/4 v10, 0x0

    add-int/lit8 v11, v0, 0x1

    int-to-long v12, v11

    aput-wide v12, v5, v10

    invoke-static {v3, v5}, Lcom/googlecode/mp4parser/util/Mp4Arrays;->copyOfAndAppend([J[J)[J

    move-result-object v3

    .line 51
    :cond_3
    const-wide/16 v6, 0x0

    .line 44
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
