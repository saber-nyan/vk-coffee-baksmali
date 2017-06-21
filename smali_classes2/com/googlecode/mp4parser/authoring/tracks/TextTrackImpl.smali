.class public Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl;
.super Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.source "TextTrackImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl$Line;
    }
.end annotation


# instance fields
.field sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

.field samples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Sample;",
            ">;"
        }
    .end annotation
.end field

.field subs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl$Line;",
            ">;"
        }
    .end annotation
.end field

.field trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 45
    const-string/jumbo v2, "subtitles"

    invoke-direct {p0, v2}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>(Ljava/lang/String;)V

    .line 39
    new-instance v2, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-direct {v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;-><init>()V

    iput-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    .line 41
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl;->subs:Ljava/util/List;

    .line 46
    new-instance v2, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct {v2}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    iput-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    .line 47
    new-instance v1, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;

    const-string/jumbo v2, "tx3g"

    invoke-direct {v1, v2}, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;-><init>(Ljava/lang/String;)V

    .line 48
    .local v1, "tx3g":Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;
    invoke-virtual {v1, v4}, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->setDataReferenceIndex(I)V

    .line 49
    new-instance v2, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;

    invoke-direct {v2}, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;-><init>()V

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->setStyleRecord(Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$StyleRecord;)V

    .line 50
    new-instance v2, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;

    invoke-direct {v2}, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;-><init>()V

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->setBoxRecord(Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry$BoxRecord;)V

    .line 51
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual {v2, v1}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 53
    new-instance v0, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox;-><init>()V

    .line 54
    .local v0, "ftab":Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox;
    new-instance v2, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox$FontRecord;

    const-string/jumbo v3, "Serif"

    invoke-direct {v2, v4, v3}, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox$FontRecord;-><init>(ILjava/lang/String;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/boxes/threegpp26245/FontTableBox;->setEntries(Ljava/util/List;)V

    .line 56
    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/sampleentry/TextSampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 59
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setCreationTime(Ljava/util/Date;)V

    .line 60
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setModificationTime(Ljava/util/Date;)V

    .line 61
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setTimescale(J)V

    .line 64
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    return-void
.end method

.method public getCompositionTimeEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    const-string/jumbo v0, "sbtl"

    return-object v0
.end method

.method public getSampleDependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    return-object v0
.end method

.method public getSampleDurations()[J
    .locals 18

    .prologue
    .line 106
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v3, "decTimes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-wide/16 v8, 0x0

    .line 109
    .local v8, "lastEnd":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl;->subs:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_0

    .line 120
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    new-array v4, v12, [J

    .line 121
    .local v4, "decTimesArray":[J
    const/4 v5, 0x0

    .line 122
    .local v5, "index":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_3

    .line 125
    return-object v4

    .line 109
    .end local v4    # "decTimesArray":[J
    .end local v5    # "index":I
    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl$Line;

    .line 110
    .local v7, "sub":Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl$Line;
    iget-wide v14, v7, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl$Line;->from:J

    sub-long v10, v14, v8

    .line 111
    .local v10, "silentTime":J
    const-wide/16 v14, 0x0

    cmp-long v13, v10, v14

    if-lez v13, :cond_2

    .line 113
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_1
    iget-wide v14, v7, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl$Line;->to:J

    iget-wide v0, v7, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl$Line;->from:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-wide v8, v7, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl$Line;->to:J

    goto :goto_0

    .line 114
    :cond_2
    const-wide/16 v14, 0x0

    cmp-long v13, v10, v14

    if-gez v13, :cond_1

    .line 115
    new-instance v12, Ljava/lang/Error;

    const-string/jumbo v13, "Subtitle display times may not intersect"

    invoke-direct {v12, v13}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v12

    .line 122
    .end local v7    # "sub":Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl$Line;
    .end local v10    # "silentTime":J
    .restart local v4    # "decTimesArray":[J
    .restart local v5    # "index":I
    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 123
    .local v2, "decTime":Ljava/lang/Long;
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .local v6, "index":I
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    aput-wide v14, v4, v5

    move v5, v6

    .end local v6    # "index":I
    .restart local v5    # "index":I
    goto :goto_1
.end method

.method public declared-synchronized getSamples()Ljava/util/List;
    .locals 14
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
    const-wide/16 v12, 0x0

    .line 75
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl;->samples:Ljava/util/List;

    if-nez v7, :cond_0

    .line 76
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl;->samples:Ljava/util/List;

    .line 77
    const-wide/16 v2, 0x0

    .line 78
    .local v2, "lastEnd":J
    iget-object v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl;->subs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 98
    .end local v2    # "lastEnd":J
    :cond_0
    iget-object v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl;->samples:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v7

    .line 78
    .restart local v2    # "lastEnd":J
    :cond_1
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl$Line;

    .line 79
    .local v6, "sub":Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl$Line;
    iget-wide v8, v6, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl$Line;->from:J

    sub-long v4, v8, v2

    .line 80
    .local v4, "silentTime":J
    cmp-long v8, v4, v12

    if-lez v8, :cond_3

    .line 81
    iget-object v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl;->samples:Ljava/util/List;

    new-instance v9, Lcom/googlecode/mp4parser/authoring/SampleImpl;

    const/4 v10, 0x2

    new-array v10, v10, [B

    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/googlecode/mp4parser/authoring/SampleImpl;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 86
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    .local v1, "dos":Ljava/io/DataOutputStream;
    :try_start_2
    iget-object v8, v6, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl$Line;->text:Ljava/lang/String;

    const-string/jumbo v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    array-length v8, v8

    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 89
    iget-object v8, v6, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl$Line;->text:Ljava/lang/String;

    const-string/jumbo v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->write([B)V

    .line 90
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    :try_start_3
    iget-object v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl;->samples:Ljava/util/List;

    new-instance v9, Lcom/googlecode/mp4parser/authoring/SampleImpl;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/googlecode/mp4parser/authoring/SampleImpl;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-wide v2, v6, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl$Line;->to:J

    goto :goto_0

    .line 82
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    :cond_3
    cmp-long v8, v4, v12

    if-gez v8, :cond_2

    .line 83
    new-instance v7, Ljava/lang/Error;

    const-string/jumbo v8, "Subtitle display times may not intersect"

    invoke-direct {v7, v8}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    .end local v2    # "lastEnd":J
    .end local v4    # "silentTime":J
    .end local v6    # "sub":Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl$Line;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 92
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "dos":Ljava/io/DataOutputStream;
    .restart local v2    # "lastEnd":J
    .restart local v4    # "silentTime":J
    .restart local v6    # "sub":Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl$Line;
    :catch_0
    move-exception v7

    :try_start_4
    new-instance v7, Ljava/lang/Error;

    const-string/jumbo v8, "VM is broken. Does not support UTF-8"

    invoke-direct {v7, v8}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public getSubs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl$Line;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl;->subs:Ljava/util/List;

    return-object v0
.end method

.method public getSubsampleInformationBox()Lcom/coremedia/iso/boxes/SubSampleInformationBox;
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSyncSamples()[J
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    return-object v0
.end method
