.class public Lcom/googlecode/mp4parser/authoring/builder/BetterFragmenter;
.super Ljava/lang/Object;
.source "BetterFragmenter.java"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/builder/Fragmenter;


# instance fields
.field private targetDuration:D


# direct methods
.method public constructor <init>(D)V
    .locals 1
    .param p1, "targetDuration"    # D

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p1, p0, Lcom/googlecode/mp4parser/authoring/builder/BetterFragmenter;->targetDuration:D

    .line 16
    return-void
.end method


# virtual methods
.method public sampleNumbers(Lcom/googlecode/mp4parser/authoring/Track;)[J
    .locals 32
    .param p1, "track"    # Lcom/googlecode/mp4parser/authoring/Track;

    .prologue
    .line 19
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v26

    .line 20
    .local v26, "ts":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/googlecode/mp4parser/authoring/builder/BetterFragmenter;->targetDuration:D

    move-wide/from16 v28, v0

    move-wide/from16 v0, v26

    long-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-long v0, v0

    move-wide/from16 v16, v0

    .line 21
    .local v16, "targetTicks":J
    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v8, v0, [J

    .line 22
    .local v8, "fragments":[J
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v15

    .line 23
    .local v15, "syncSamples":[J
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDurations()[J

    move-result-object v5

    .line 24
    .local v5, "durations":[J
    if-eqz v15, :cond_5

    .line 25
    array-length v0, v15

    move/from16 v28, v0

    move/from16 v0, v28

    new-array v14, v0, [J

    .line 26
    .local v14, "syncSampleTicks":[J
    const-wide/16 v22, 0x0

    .line 27
    .local v22, "ticks":J
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getDuration()J

    move-result-wide v6

    .line 29
    .local v6, "duration":J
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v5

    move/from16 v28, v0

    move/from16 v0, v28

    if-lt v9, v0, :cond_1

    .line 36
    const-wide/16 v10, 0x0

    .line 38
    .local v10, "nextTargetTick":J
    const/4 v4, 0x0

    .local v4, "currentSyncSampleIndex":I
    :goto_1
    array-length v0, v14

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v28

    if-lt v4, v0, :cond_3

    .line 48
    array-length v0, v14

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    aget-wide v28, v14, v28

    sub-long v28, v6, v28

    const-wide/16 v30, 0x2

    div-long v30, v16, v30

    cmp-long v28, v28, v30

    if-lez v28, :cond_0

    .line 49
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [J

    move-object/from16 v28, v0

    const/16 v29, 0x0

    array-length v0, v14

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x1

    aget-wide v30, v15, v30

    aput-wide v30, v28, v29

    move-object/from16 v0, v28

    invoke-static {v8, v0}, Lcom/googlecode/mp4parser/util/Mp4Arrays;->copyOfAndAppend([J[J)[J

    move-result-object v8

    .line 74
    .end local v4    # "currentSyncSampleIndex":I
    .end local v6    # "duration":J
    .end local v10    # "nextTargetTick":J
    .end local v14    # "syncSampleTicks":[J
    .end local v22    # "ticks":J
    :cond_0
    :goto_2
    return-object v8

    .line 30
    .restart local v6    # "duration":J
    .restart local v14    # "syncSampleTicks":[J
    .restart local v22    # "ticks":J
    :cond_1
    int-to-long v0, v9

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x1

    add-long v28, v28, v30

    move-wide/from16 v0, v28

    invoke-static {v15, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v13

    .line 31
    .local v13, "pos":I
    if-ltz v13, :cond_2

    .line 32
    aput-wide v22, v14, v13

    .line 34
    :cond_2
    aget-wide v28, v5, v9

    add-long v22, v22, v28

    .line 29
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 39
    .end local v13    # "pos":I
    .restart local v4    # "currentSyncSampleIndex":I
    .restart local v10    # "nextTargetTick":J
    :cond_3
    aget-wide v18, v14, v4

    .line 40
    .local v18, "tickN1":J
    add-int/lit8 v28, v4, 0x1

    aget-wide v20, v14, v28

    .line 41
    .local v20, "tickN2":J
    cmp-long v28, v10, v20

    if-gtz v28, :cond_4

    .line 42
    sub-long v28, v18, v10

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->abs(J)J

    move-result-wide v28

    sub-long v30, v20, v10

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->abs(J)J

    move-result-wide v30

    cmp-long v28, v28, v30

    if-gez v28, :cond_4

    .line 43
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [J

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget-wide v30, v15, v4

    aput-wide v30, v28, v29

    move-object/from16 v0, v28

    invoke-static {v8, v0}, Lcom/googlecode/mp4parser/util/Mp4Arrays;->copyOfAndAppend([J[J)[J

    move-result-object v8

    .line 44
    aget-wide v28, v14, v4

    add-long v10, v28, v16

    .line 38
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 54
    .end local v4    # "currentSyncSampleIndex":I
    .end local v6    # "duration":J
    .end local v9    # "i":I
    .end local v10    # "nextTargetTick":J
    .end local v14    # "syncSampleTicks":[J
    .end local v18    # "tickN1":J
    .end local v20    # "tickN2":J
    .end local v22    # "ticks":J
    :cond_5
    const-wide/16 v24, 0x0

    .line 55
    .local v24, "time":D
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v8, v0, [J

    .end local v8    # "fragments":[J
    const/16 v28, 0x0

    const-wide/16 v30, 0x1

    aput-wide v30, v8, v28

    .line 56
    .restart local v8    # "fragments":[J
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_3
    array-length v0, v5

    move/from16 v28, v0

    move/from16 v0, v28

    if-lt v9, v0, :cond_6

    .line 67
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/googlecode/mp4parser/authoring/builder/BetterFragmenter;->targetDuration:D

    move-wide/from16 v28, v0

    cmpg-double v28, v24, v28

    if-gez v28, :cond_0

    array-length v0, v8

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_0

    .line 68
    array-length v0, v8

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v28

    new-array v12, v0, [J

    .line 69
    .local v12, "nuSegmentStartSamples":[J
    const/16 v28, 0x0

    const/16 v29, 0x0

    array-length v0, v8

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v8, v0, v12, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    move-object v8, v12

    goto/16 :goto_2

    .line 57
    .end local v12    # "nuSegmentStartSamples":[J
    :cond_6
    aget-wide v28, v5, v9

    move-wide/from16 v0, v28

    long-to-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v0, v26

    long-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v28, v28, v30

    add-double v24, v24, v28

    .line 58
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/googlecode/mp4parser/authoring/builder/BetterFragmenter;->targetDuration:D

    move-wide/from16 v28, v0

    cmpl-double v28, v24, v28

    if-ltz v28, :cond_8

    .line 59
    if-lez v9, :cond_7

    .line 60
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [J

    move-object/from16 v28, v0

    const/16 v29, 0x0

    add-int/lit8 v30, v9, 0x1

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    aput-wide v30, v28, v29

    move-object/from16 v0, v28

    invoke-static {v8, v0}, Lcom/googlecode/mp4parser/util/Mp4Arrays;->copyOfAndAppend([J[J)[J

    move-result-object v8

    .line 63
    :cond_7
    const-wide/16 v24, 0x0

    .line 56
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_3
.end method
