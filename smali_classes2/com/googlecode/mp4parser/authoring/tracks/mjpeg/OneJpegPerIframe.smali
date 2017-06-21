.class public Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/OneJpegPerIframe;
.super Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.source "OneJpegPerIframe.java"


# instance fields
.field jpegs:[Ljava/io/File;

.field sampleDurations:[J

.field stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

.field syncSamples:[J

.field trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/io/File;Lcom/googlecode/mp4parser/authoring/Track;)V
    .locals 36
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "jpegs"    # [Ljava/io/File;
    .param p3, "alignTo"    # Lcom/googlecode/mp4parser/authoring/Track;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct/range {p0 .. p1}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>(Ljava/lang/String;)V

    .line 29
    new-instance v3, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-direct {v3}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/OneJpegPerIframe;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    .line 37
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/OneJpegPerIframe;->jpegs:[Ljava/io/File;

    .line 38
    invoke-interface/range {p3 .. p3}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v3

    array-length v3, v3

    move-object/from16 v0, p2

    array-length v4, v0

    if-eq v3, v4, :cond_0

    .line 39
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Number of sync samples doesn\'t match the number of stills ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p3 .. p3}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " vs. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 41
    :cond_0
    const/4 v3, 0x0

    aget-object v3, p2, v3

    invoke-static {v3}, Ljavax/imageio/ImageIO;->read(Ljava/io/File;)Ljava/awt/image/BufferedImage;

    move-result-object v2

    .line 42
    .local v2, "a":Ljava/awt/image/BufferedImage;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/OneJpegPerIframe;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setWidth(D)V

    .line 43
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/OneJpegPerIframe;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setHeight(D)V

    .line 44
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/OneJpegPerIframe;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-interface/range {p3 .. p3}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setTimescale(J)V

    .line 47
    invoke-interface/range {p3 .. p3}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDurations()[J

    move-result-object v34

    .line 48
    .local v34, "sampleDurationsToiAlignTo":[J
    invoke-interface/range {p3 .. p3}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v35

    .line 49
    .local v35, "syncSamples":[J
    const/16 v23, 0x1

    .line 50
    .local v23, "currentSyncSample":I
    const-wide/16 v26, 0x0

    .line 51
    .local v26, "duration":J
    move-object/from16 v0, v35

    array-length v3, v0

    new-array v3, v3, [J

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/OneJpegPerIframe;->sampleDurations:[J

    .line 53
    const/16 v30, 0x1

    .local v30, "i":I
    :goto_0
    move-object/from16 v0, v34

    array-length v3, v0

    move/from16 v0, v30

    if-lt v0, v3, :cond_4

    .line 61
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/OneJpegPerIframe;->sampleDurations:[J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/OneJpegPerIframe;->sampleDurations:[J

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aput-wide v26, v3, v4

    .line 63
    new-instance v3, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct {v3}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/OneJpegPerIframe;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    .line 64
    new-instance v32, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;

    const-string/jumbo v3, "mp4v"

    move-object/from16 v0, v32

    invoke-direct {v0, v3}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;-><init>(Ljava/lang/String;)V

    .line 65
    .local v32, "mp4v":Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/OneJpegPerIframe;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 66
    new-instance v29, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;

    invoke-direct/range {v29 .. v29}, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;-><init>()V

    .line 67
    .local v29, "esds":Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;
    const-string/jumbo v3, "038080801B000100048080800D6C11000000000A1CB4000A1CB4068080800102"

    invoke-static {v3}, Lcom/coremedia/iso/Hex;->decodeHex(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;->setData(Ljava/nio/ByteBuffer;)V

    .line 68
    const/4 v3, -0x1

    const-string/jumbo v4, "038080801B000100048080800D6C11000000000A1CB4000A1CB4068080800102"

    invoke-static {v4}, Lcom/coremedia/iso/Hex;->decodeHex(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ObjectDescriptorFactory;->createFrom(ILjava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;

    move-result-object v3

    check-cast v3, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;->setEsDescriptor(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;)V

    .line 69
    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 70
    move-object/from16 v0, p2

    array-length v3, v0

    new-array v3, v3, [J

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/OneJpegPerIframe;->syncSamples:[J

    .line 71
    const/16 v30, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/OneJpegPerIframe;->syncSamples:[J

    array-length v3, v3

    move/from16 v0, v30

    if-lt v0, v3, :cond_6

    .line 76
    const-wide/16 v10, 0x0

    .line 77
    .local v10, "earliestTrackPresentationTime":D
    const/4 v12, 0x1

    .line 78
    .local v12, "acceptDwell":Z
    const/16 v22, 0x1

    .line 79
    .local v22, "acceptEdit":Z
    invoke-interface/range {p3 .. p3}, Lcom/googlecode/mp4parser/authoring/Track;->getEdits()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_7

    .line 94
    invoke-interface/range {p3 .. p3}, Lcom/googlecode/mp4parser/authoring/Track;->getCompositionTimeEntries()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface/range {p3 .. p3}, Lcom/googlecode/mp4parser/authoring/Track;->getCompositionTimeEntries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 95
    const-wide/16 v24, 0x0

    .line 96
    .local v24, "currentTime":J
    invoke-interface/range {p3 .. p3}, Lcom/googlecode/mp4parser/authoring/Track;->getCompositionTimeEntries()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/coremedia/iso/boxes/CompositionTimeToSample;->blowupCompositionTimes(Ljava/util/List;)[I

    move-result-object v33

    .line 97
    .local v33, "ptss":[I
    const/16 v31, 0x0

    .local v31, "j":I
    :goto_3
    move-object/from16 v0, v33

    array-length v3, v0

    move/from16 v0, v31

    if-ge v0, v3, :cond_1

    const/16 v3, 0x32

    move/from16 v0, v31

    if-lt v0, v3, :cond_b

    .line 101
    :cond_1
    invoke-static/range {v33 .. v33}, Ljava/util/Arrays;->sort([I)V

    .line 102
    const/4 v3, 0x0

    aget v3, v33, v3

    int-to-double v4, v3

    invoke-interface/range {p3 .. p3}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v6

    long-to-double v6, v6

    div-double/2addr v4, v6

    add-double/2addr v10, v4

    .line 106
    .end local v24    # "currentTime":J
    .end local v31    # "j":I
    .end local v33    # "ptss":[I
    :cond_2
    const-wide/16 v4, 0x0

    cmpg-double v3, v10, v4

    if-gez v3, :cond_c

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/OneJpegPerIframe;->getEdits()Ljava/util/List;

    move-result-object v13

    new-instance v3, Lcom/googlecode/mp4parser/authoring/Edit;

    neg-double v4, v10

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/OneJpegPerIframe;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v6

    long-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-long v4, v4

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/OneJpegPerIframe;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/OneJpegPerIframe;->getDuration()J

    move-result-wide v14

    long-to-double v14, v14

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/OneJpegPerIframe;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v10, v14, v16

    invoke-direct/range {v3 .. v11}, Lcom/googlecode/mp4parser/authoring/Edit;-><init>(JJDD)V

    .end local v10    # "earliestTrackPresentationTime":D
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_3
    :goto_4
    return-void

    .line 54
    .end local v12    # "acceptDwell":Z
    .end local v22    # "acceptEdit":Z
    .end local v29    # "esds":Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;
    .end local v32    # "mp4v":Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;
    :cond_4
    move-object/from16 v0, v35

    array-length v3, v0

    move/from16 v0, v23

    if-ge v0, v3, :cond_5

    move/from16 v0, v30

    int-to-long v4, v0

    aget-wide v6, v35, v23

    cmp-long v3, v4, v6

    if-nez v3, :cond_5

    .line 55
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/OneJpegPerIframe;->sampleDurations:[J

    add-int/lit8 v4, v23, -0x1

    aput-wide v26, v3, v4

    .line 56
    const-wide/16 v26, 0x0

    .line 57
    add-int/lit8 v23, v23, 0x1

    .line 59
    :cond_5
    aget-wide v4, v34, v30

    add-long v26, v26, v4

    .line 53
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_0

    .line 72
    .restart local v29    # "esds":Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;
    .restart local v32    # "mp4v":Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/OneJpegPerIframe;->syncSamples:[J

    add-int/lit8 v4, v30, 0x1

    int-to-long v4, v4

    aput-wide v4, v3, v30

    .line 71
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_1

    .line 79
    .restart local v10    # "earliestTrackPresentationTime":D
    .restart local v12    # "acceptDwell":Z
    .restart local v22    # "acceptEdit":Z
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/googlecode/mp4parser/authoring/Edit;

    .line 80
    .local v28, "edit":Lcom/googlecode/mp4parser/authoring/Edit;
    invoke-virtual/range {v28 .. v28}, Lcom/googlecode/mp4parser/authoring/Edit;->getMediaTime()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_8

    if-nez v12, :cond_8

    .line 81
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Cannot accept edit list for processing (1)"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 83
    :cond_8
    invoke-virtual/range {v28 .. v28}, Lcom/googlecode/mp4parser/authoring/Edit;->getMediaTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_9

    if-nez v22, :cond_9

    .line 84
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Cannot accept edit list for processing (2)"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 86
    :cond_9
    invoke-virtual/range {v28 .. v28}, Lcom/googlecode/mp4parser/authoring/Edit;->getMediaTime()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_a

    .line 87
    invoke-virtual/range {v28 .. v28}, Lcom/googlecode/mp4parser/authoring/Edit;->getSegmentDuration()D

    move-result-wide v4

    add-double/2addr v10, v4

    .line 88
    goto/16 :goto_2

    .line 89
    :cond_a
    invoke-virtual/range {v28 .. v28}, Lcom/googlecode/mp4parser/authoring/Edit;->getMediaTime()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-virtual/range {v28 .. v28}, Lcom/googlecode/mp4parser/authoring/Edit;->getTimeScale()J

    move-result-wide v6

    long-to-double v6, v6

    div-double/2addr v4, v6

    sub-double/2addr v10, v4

    .line 90
    const/16 v22, 0x0

    .line 91
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 98
    .end local v28    # "edit":Lcom/googlecode/mp4parser/authoring/Edit;
    .restart local v24    # "currentTime":J
    .restart local v31    # "j":I
    .restart local v33    # "ptss":[I
    :cond_b
    aget v3, v33, v31

    int-to-long v4, v3

    add-long v4, v4, v24

    long-to-int v3, v4

    aput v3, v33, v31

    .line 99
    invoke-interface/range {p3 .. p3}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDurations()[J

    move-result-object v3

    aget-wide v4, v3, v31

    add-long v24, v24, v4

    .line 97
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_3

    .line 108
    .end local v24    # "currentTime":J
    .end local v31    # "j":I
    .end local v33    # "ptss":[I
    :cond_c
    const-wide/16 v4, 0x0

    cmpl-double v3, v10, v4

    if-lez v3, :cond_3

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/OneJpegPerIframe;->getEdits()Ljava/util/List;

    move-result-object v13

    new-instance v3, Lcom/googlecode/mp4parser/authoring/Edit;

    const-wide/16 v4, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/OneJpegPerIframe;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v3 .. v11}, Lcom/googlecode/mp4parser/authoring/Edit;-><init>(JJDD)V

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/OneJpegPerIframe;->getEdits()Ljava/util/List;

    move-result-object v3

    new-instance v13, Lcom/googlecode/mp4parser/authoring/Edit;

    const-wide/16 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/OneJpegPerIframe;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v16

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/OneJpegPerIframe;->getDuration()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/OneJpegPerIframe;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v6

    long-to-double v6, v6

    div-double v20, v4, v6

    invoke-direct/range {v13 .. v21}, Lcom/googlecode/mp4parser/authoring/Edit;-><init>(JJDD)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4
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
    .line 178
    return-void
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    const-string/jumbo v0, "vide"

    return-object v0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/OneJpegPerIframe;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    return-object v0
.end method

.method public getSampleDurations()[J
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/OneJpegPerIframe;->sampleDurations:[J

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
    .line 138
    new-instance v0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/OneJpegPerIframe$1;

    invoke-direct {v0, p0}, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/OneJpegPerIframe$1;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/OneJpegPerIframe;)V

    return-object v0
.end method

.method public getSyncSamples()[J
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/OneJpegPerIframe;->syncSamples:[J

    return-object v0
.end method

.method public getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/OneJpegPerIframe;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    return-object v0
.end method
