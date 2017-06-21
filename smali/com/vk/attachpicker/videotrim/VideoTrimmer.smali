.class public Lcom/vk/attachpicker/videotrim/VideoTrimmer;
.super Ljava/lang/Object;
.source "VideoTrimmer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static correctTimeToSyncSample(Lcom/googlecode/mp4parser/authoring/Track;DZ)D
    .locals 17
    .param p0, "track"    # Lcom/googlecode/mp4parser/authoring/Track;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "cutHere"    # D
    .param p3, "next"    # Z

    .prologue
    .line 109
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v12

    array-length v12, v12

    new-array v7, v12, [D

    .line 110
    .local v7, "timeOfSyncSamples":[D
    const-wide/16 v0, 0x0

    .line 111
    .local v0, "currentSample":J
    const-wide/16 v2, 0x0

    .line 112
    .local v2, "currentTime":D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDurations()[J

    move-result-object v12

    array-length v12, v12

    if-ge v6, v12, :cond_1

    .line 113
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDurations()[J

    move-result-object v12

    aget-wide v4, v12, v6

    .line 115
    .local v4, "delta":J
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v12

    const-wide/16 v14, 0x1

    add-long/2addr v14, v0

    invoke-static {v12, v14, v15}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v12

    if-ltz v12, :cond_0

    .line 117
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v12

    const-wide/16 v14, 0x1

    add-long/2addr v14, v0

    invoke-static {v12, v14, v15}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v12

    aput-wide v2, v7, v12

    .line 119
    :cond_0
    long-to-double v12, v4

    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v14

    invoke-virtual {v14}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v14

    long-to-double v14, v14

    div-double/2addr v12, v14

    add-double/2addr v2, v12

    .line 120
    const-wide/16 v12, 0x1

    add-long/2addr v0, v12

    .line 112
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 123
    .end local v4    # "delta":J
    :cond_1
    const-wide/16 v8, 0x0

    .line 124
    .local v8, "previous":D
    array-length v13, v7

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v13, :cond_4

    aget-wide v10, v7, v12

    .line 125
    .local v10, "timeOfSyncSample":D
    cmpl-double v14, v10, p1

    if-lez v14, :cond_3

    .line 126
    if-eqz p3, :cond_2

    .line 134
    .end local v10    # "timeOfSyncSample":D
    :goto_2
    return-wide v10

    .restart local v10    # "timeOfSyncSample":D
    :cond_2
    move-wide v10, v8

    .line 129
    goto :goto_2

    .line 132
    :cond_3
    move-wide v8, v10

    .line 124
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 134
    .end local v10    # "timeOfSyncSample":D
    :cond_4
    array-length v12, v7

    add-int/lit8 v12, v12, -0x1

    aget-wide v10, v7, v12

    goto :goto_2
.end method

.method public static genVideoUsingMp4Parser(Ljava/io/File;Ljava/io/File;JJ)Ljava/io/File;
    .locals 34
    .param p0, "src"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "dst"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "startMs"    # J
    .param p4, "endMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    new-instance v4, Lcom/googlecode/mp4parser/FileDataSourceViaHeapImpl;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v4, v0}, Lcom/googlecode/mp4parser/FileDataSourceViaHeapImpl;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/googlecode/mp4parser/authoring/container/mp4/MovieCreator;->build(Lcom/googlecode/mp4parser/DataSource;)Lcom/googlecode/mp4parser/authoring/Movie;

    move-result-object v21

    .line 36
    .local v21, "movie":Lcom/googlecode/mp4parser/authoring/Movie;
    invoke-virtual/range {v21 .. v21}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v28

    .line 37
    .local v28, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/googlecode/mp4parser/authoring/Track;>;"
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/googlecode/mp4parser/authoring/Movie;->setTracks(Ljava/util/List;)V

    .line 40
    const-wide/16 v30, 0x3e8

    div-long v30, p2, v30

    move-wide/from16 v0, v30

    long-to-double v0, v0

    move-wide/from16 v26, v0

    .line 41
    .local v26, "startTime1":D
    const-wide/16 v30, 0x3e8

    div-long v30, p4, v30

    move-wide/from16 v0, v30

    long-to-double v0, v0

    move-wide/from16 v16, v0

    .line 43
    .local v16, "endTime1":D
    const/16 v25, 0x0

    .line 48
    .local v25, "timeCorrected":Z
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/googlecode/mp4parser/authoring/Track;

    .line 49
    .local v5, "track":Lcom/googlecode/mp4parser/authoring/Track;
    invoke-interface {v5}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v29

    if-eqz v29, :cond_0

    invoke-interface {v5}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v29

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    if-lez v29, :cond_0

    .line 50
    if-eqz v25, :cond_1

    .line 55
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v29, "The startTime has already been corrected by another track with SyncSample. Not Supported."

    move-object/from16 v0, v29

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 57
    :cond_1
    const/16 v29, 0x0

    move-wide/from16 v0, v26

    move/from16 v2, v29

    invoke-static {v5, v0, v1, v2}, Lcom/vk/attachpicker/videotrim/VideoTrimmer;->correctTimeToSyncSample(Lcom/googlecode/mp4parser/authoring/Track;DZ)D

    move-result-wide v26

    .line 58
    const/16 v29, 0x1

    move-wide/from16 v0, v16

    move/from16 v2, v29

    invoke-static {v5, v0, v1, v2}, Lcom/vk/attachpicker/videotrim/VideoTrimmer;->correctTimeToSyncSample(Lcom/googlecode/mp4parser/authoring/Track;DZ)D

    move-result-wide v16

    .line 59
    const/16 v25, 0x1

    goto :goto_0

    .line 63
    .end local v5    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    :cond_2
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_1
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/googlecode/mp4parser/authoring/Track;

    .line 64
    .restart local v5    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    const-wide/16 v10, 0x0

    .line 65
    .local v10, "currentSample":J
    const-wide/16 v12, 0x0

    .line 66
    .local v12, "currentTime":D
    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    .line 67
    .local v22, "lastTime":D
    const-wide/16 v6, -0x1

    .line 68
    .local v6, "startSample1":J
    const-wide/16 v8, -0x1

    .line 70
    .local v8, "endSample1":J
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_2
    invoke-interface {v5}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDurations()[J

    move-result-object v4

    array-length v4, v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_5

    .line 71
    invoke-interface {v5}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDurations()[J

    move-result-object v4

    aget-wide v14, v4, v20

    .line 74
    .local v14, "delta":J
    cmpl-double v4, v12, v22

    if-lez v4, :cond_3

    cmpg-double v4, v12, v26

    if-gtz v4, :cond_3

    .line 76
    move-wide v6, v10

    .line 78
    :cond_3
    cmpl-double v4, v12, v22

    if-lez v4, :cond_4

    cmpg-double v4, v12, v16

    if-gtz v4, :cond_4

    .line 80
    move-wide v8, v10

    .line 82
    :cond_4
    move-wide/from16 v22, v12

    .line 83
    long-to-double v0, v14

    move-wide/from16 v30, v0

    invoke-interface {v5}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v32

    move-wide/from16 v0, v32

    long-to-double v0, v0

    move-wide/from16 v32, v0

    div-double v30, v30, v32

    add-double v12, v12, v30

    .line 84
    const-wide/16 v30, 0x1

    add-long v10, v10, v30

    .line 70
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 86
    .end local v14    # "delta":J
    :cond_5
    new-instance v30, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;

    const/4 v4, 0x1

    new-array v0, v4, [Lcom/googlecode/mp4parser/authoring/Track;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    new-instance v4, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;

    invoke-direct/range {v4 .. v9}, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;-><init>(Lcom/googlecode/mp4parser/authoring/Track;JJ)V

    aput-object v4, v31, v32

    invoke-direct/range {v30 .. v31}, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;-><init>([Lcom/googlecode/mp4parser/authoring/Track;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/authoring/Movie;->addTrack(Lcom/googlecode/mp4parser/authoring/Track;)V

    goto :goto_1

    .line 89
    .end local v5    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    .end local v6    # "startSample1":J
    .end local v8    # "endSample1":J
    .end local v10    # "currentSample":J
    .end local v12    # "currentTime":D
    .end local v20    # "i":I
    .end local v22    # "lastTime":D
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 91
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_7

    .line 92
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->createNewFile()Z

    .line 95
    :cond_7
    new-instance v4, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;

    invoke-direct {v4}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->build(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Container;

    move-result-object v24

    .line 97
    .local v24, "out":Lcom/coremedia/iso/boxes/Container;
    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 98
    .local v19, "fos":Ljava/io/FileOutputStream;
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v18

    .line 99
    .local v18, "fc":Ljava/nio/channels/FileChannel;
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/coremedia/iso/boxes/Container;->writeContainer(Ljava/nio/channels/WritableByteChannel;)V

    .line 101
    invoke-virtual/range {v18 .. v18}, Ljava/nio/channels/FileChannel;->close()V

    .line 102
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V

    .line 105
    return-object p1
.end method
