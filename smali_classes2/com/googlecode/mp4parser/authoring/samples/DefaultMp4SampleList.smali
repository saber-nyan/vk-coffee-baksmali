.class public Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;
.super Ljava/util/AbstractList;
.source "DefaultMp4SampleList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList$SampleImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Lcom/googlecode/mp4parser/authoring/Sample;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG:Lcom/googlecode/mp4parser/util/Logger;


# instance fields
.field cache:[Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field chunkNumsStartSampleNum:[I

.field chunkOffsets:[J

.field chunkSizes:[J

.field lastChunk:I

.field sampleOffsetsWithinChunks:[[J

.field ssb:Lcom/coremedia/iso/boxes/SampleSizeBox;

.field topLevel:Lcom/coremedia/iso/boxes/Container;

.field trackBox:Lcom/coremedia/iso/boxes/TrackBox;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;

    invoke-static {v0}, Lcom/googlecode/mp4parser/util/Logger;->getLogger(Ljava/lang/Class;)Lcom/googlecode/mp4parser/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    return-void
.end method

.method public constructor <init>(JLcom/coremedia/iso/boxes/Container;)V
    .locals 33
    .param p1, "track"    # J
    .param p3, "topLevel"    # Lcom/coremedia/iso/boxes/Container;

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/util/AbstractList;-><init>()V

    .line 24
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->trackBox:Lcom/coremedia/iso/boxes/TrackBox;

    .line 25
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->cache:[Ljava/lang/ref/SoftReference;

    .line 31
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->lastChunk:I

    .line 35
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->topLevel:Lcom/coremedia/iso/boxes/Container;

    .line 36
    const-class v25, Lcom/coremedia/iso/boxes/MovieBox;

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lcom/coremedia/iso/boxes/Container;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v25

    const/16 v26, 0x0

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/coremedia/iso/boxes/MovieBox;

    .line 37
    .local v12, "movieBox":Lcom/coremedia/iso/boxes/MovieBox;
    const-class v25, Lcom/coremedia/iso/boxes/TrackBox;

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Lcom/coremedia/iso/boxes/MovieBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v24

    .line 39
    .local v24, "trackBoxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/TrackBox;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_0
    :goto_0
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-nez v26, :cond_1

    .line 44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->trackBox:Lcom/coremedia/iso/boxes/TrackBox;

    move-object/from16 v25, v0

    if-nez v25, :cond_2

    .line 45
    new-instance v25, Ljava/lang/RuntimeException;

    new-instance v26, Ljava/lang/StringBuilder;

    const-string/jumbo v27, "This MP4 does not contain track "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 39
    :cond_1
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/coremedia/iso/boxes/TrackBox;

    .line 40
    .local v21, "tb":Lcom/coremedia/iso/boxes/TrackBox;
    invoke-virtual/range {v21 .. v21}, Lcom/coremedia/iso/boxes/TrackBox;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getTrackId()J

    move-result-wide v26

    cmp-long v26, v26, p1

    if-nez v26, :cond_0

    .line 41
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->trackBox:Lcom/coremedia/iso/boxes/TrackBox;

    goto :goto_0

    .line 47
    .end local v21    # "tb":Lcom/coremedia/iso/boxes/TrackBox;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->trackBox:Lcom/coremedia/iso/boxes/TrackBox;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/TrackBox;->getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/SampleTableBox;->getChunkOffsetBox()Lcom/coremedia/iso/boxes/ChunkOffsetBox;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/ChunkOffsetBox;->getChunkOffsets()[J

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->chunkOffsets:[J

    .line 48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->chunkOffsets:[J

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v0, v0, [J

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->chunkSizes:[J

    .line 50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->chunkOffsets:[J

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/ref/SoftReference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->cache:[Ljava/lang/ref/SoftReference;

    .line 51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->cache:[Ljava/lang/ref/SoftReference;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/ref/SoftReference;

    const/16 v27, 0x0

    invoke-direct/range {v26 .. v27}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-static/range {v25 .. v26}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->chunkOffsets:[J

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v0, v0, [[J

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->sampleOffsetsWithinChunks:[[J

    .line 54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->trackBox:Lcom/coremedia/iso/boxes/TrackBox;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/TrackBox;->getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSampleSizeBox()Lcom/coremedia/iso/boxes/SampleSizeBox;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->ssb:Lcom/coremedia/iso/boxes/SampleSizeBox;

    .line 55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->trackBox:Lcom/coremedia/iso/boxes/TrackBox;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/TrackBox;->getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSampleToChunkBox()Lcom/coremedia/iso/boxes/SampleToChunkBox;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/SampleToChunkBox;->getEntries()Ljava/util/List;

    move-result-object v19

    .line 56
    .local v19, "s2chunkEntries":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    new-array v0, v0, [Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;

    .line 59
    .local v9, "entries":[Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;
    const/16 v17, 0x0

    .line 60
    .local v17, "s2cIndex":I
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "s2cIndex":I
    .local v18, "s2cIndex":I
    aget-object v13, v9, v17

    .line 61
    .local v13, "next":Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;
    const/4 v5, 0x0

    .line 62
    .local v5, "currentChunkNo":I
    const/4 v8, 0x0

    .line 64
    .local v8, "currentSamplePerChunk":I
    invoke-virtual {v13}, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;->getFirstChunk()J

    move-result-wide v14

    .line 65
    .local v14, "nextFirstChunk":J
    invoke-virtual {v13}, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;->getSamplesPerChunk()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v16

    .line 67
    .local v16, "nextSamplePerChunk":I
    const/4 v7, 0x1

    .line 68
    .local v7, "currentSampleNo":I
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->size()I

    move-result v11

    .line 73
    .local v11, "lastSampleNo":I
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 74
    int-to-long v0, v5

    move-wide/from16 v26, v0

    cmp-long v25, v26, v14

    if-nez v25, :cond_a

    .line 75
    move/from16 v8, v16

    .line 76
    array-length v0, v9

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    .line 77
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "s2cIndex":I
    .restart local v17    # "s2cIndex":I
    aget-object v13, v9, v18

    .line 78
    invoke-virtual {v13}, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;->getSamplesPerChunk()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v16

    .line 79
    invoke-virtual {v13}, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;->getFirstChunk()J

    move-result-wide v14

    .line 85
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->sampleOffsetsWithinChunks:[[J

    move-object/from16 v25, v0

    add-int/lit8 v26, v5, -0x1

    new-array v0, v8, [J

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    .line 87
    add-int/2addr v7, v8

    .line 71
    if-le v7, v11, :cond_9

    .line 88
    add-int/lit8 v25, v5, 0x1

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->chunkNumsStartSampleNum:[I

    .line 90
    const/16 v17, 0x0

    .line 91
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "s2cIndex":I
    .restart local v18    # "s2cIndex":I
    aget-object v13, v9, v17

    .line 92
    const/4 v5, 0x0

    .line 93
    const/4 v8, 0x0

    .line 95
    invoke-virtual {v13}, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;->getFirstChunk()J

    move-result-wide v14

    .line 96
    invoke-virtual {v13}, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;->getSamplesPerChunk()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v16

    .line 98
    const/4 v7, 0x1

    move/from16 v17, v18

    .line 100
    .end local v18    # "s2cIndex":I
    .restart local v17    # "s2cIndex":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->chunkNumsStartSampleNum:[I

    move-object/from16 v25, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "currentChunkNo":I
    .local v6, "currentChunkNo":I
    aput v7, v25, v5

    .line 101
    int-to-long v0, v6

    move-wide/from16 v26, v0

    cmp-long v25, v26, v14

    if-nez v25, :cond_3

    .line 102
    move/from16 v8, v16

    .line 103
    array-length v0, v9

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, v17

    if-le v0, v1, :cond_5

    .line 104
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "s2cIndex":I
    .restart local v18    # "s2cIndex":I
    aget-object v13, v9, v17

    .line 105
    invoke-virtual {v13}, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;->getSamplesPerChunk()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v16

    .line 106
    invoke-virtual {v13}, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;->getFirstChunk()J

    move-result-wide v14

    move/from16 v17, v18

    .line 113
    .end local v18    # "s2cIndex":I
    .restart local v17    # "s2cIndex":I
    :cond_3
    :goto_4
    add-int/2addr v7, v8

    .line 99
    if-le v7, v11, :cond_8

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->chunkNumsStartSampleNum:[I

    move-object/from16 v25, v0

    const v26, 0x7fffffff

    aput v26, v25, v6

    .line 116
    const/4 v5, 0x0

    .line 117
    .end local v6    # "currentChunkNo":I
    .restart local v5    # "currentChunkNo":I
    const-wide/16 v22, 0x0

    .line 118
    .local v22, "sampleSum":J
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_5
    int-to-long v0, v10

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->ssb:Lcom/coremedia/iso/boxes/SampleSizeBox;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleCount()J

    move-result-wide v28

    cmp-long v25, v26, v28

    if-lez v25, :cond_7

    .line 131
    return-void

    .line 81
    .end local v10    # "i":I
    .end local v17    # "s2cIndex":I
    .end local v22    # "sampleSum":J
    .restart local v18    # "s2cIndex":I
    :cond_4
    const/16 v16, -0x1

    .line 82
    const-wide v14, 0x7fffffffffffffffL

    move/from16 v17, v18

    .end local v18    # "s2cIndex":I
    .restart local v17    # "s2cIndex":I
    goto/16 :goto_2

    .line 108
    .end local v5    # "currentChunkNo":I
    .restart local v6    # "currentChunkNo":I
    :cond_5
    const/16 v16, -0x1

    .line 109
    const-wide v14, 0x7fffffffffffffffL

    goto :goto_4

    .line 121
    .end local v6    # "currentChunkNo":I
    .restart local v5    # "currentChunkNo":I
    .restart local v10    # "i":I
    .restart local v22    # "sampleSum":J
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 122
    const-wide/16 v22, 0x0

    .line 119
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->chunkNumsStartSampleNum:[I

    move-object/from16 v25, v0

    aget v25, v25, v5

    move/from16 v0, v25

    if-eq v10, v0, :cond_6

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->chunkSizes:[J

    move-object/from16 v25, v0

    add-int/lit8 v26, v5, -0x1

    aget-wide v28, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->ssb:Lcom/coremedia/iso/boxes/SampleSizeBox;

    move-object/from16 v27, v0

    add-int/lit8 v30, v10, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleSizeAtIndex(I)J

    move-result-wide v30

    add-long v28, v28, v30

    aput-wide v28, v25, v26

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->sampleOffsetsWithinChunks:[[J

    move-object/from16 v25, v0

    add-int/lit8 v26, v5, -0x1

    aget-object v20, v25, v26

    .line 126
    .local v20, "sampleOffsetsWithinChunkscurrentChunkNo":[J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->chunkNumsStartSampleNum:[I

    move-object/from16 v25, v0

    add-int/lit8 v26, v5, -0x1

    aget v4, v25, v26

    .line 127
    .local v4, "chunkNumsStartSampleNumcurrentChunkNo":I
    sub-int v25, v10, v4

    aput-wide v22, v20, v25

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->ssb:Lcom/coremedia/iso/boxes/SampleSizeBox;

    move-object/from16 v25, v0

    add-int/lit8 v26, v10, -0x1

    invoke-virtual/range {v25 .. v26}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleSizeAtIndex(I)J

    move-result-wide v26

    add-long v22, v22, v26

    .line 118
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .end local v4    # "chunkNumsStartSampleNumcurrentChunkNo":I
    .end local v5    # "currentChunkNo":I
    .end local v10    # "i":I
    .end local v20    # "sampleOffsetsWithinChunkscurrentChunkNo":[J
    .end local v22    # "sampleSum":J
    .restart local v6    # "currentChunkNo":I
    :cond_8
    move v5, v6

    .end local v6    # "currentChunkNo":I
    .restart local v5    # "currentChunkNo":I
    goto/16 :goto_3

    :cond_9
    move/from16 v18, v17

    .end local v17    # "s2cIndex":I
    .restart local v18    # "s2cIndex":I
    goto/16 :goto_1

    :cond_a
    move/from16 v17, v18

    .end local v18    # "s2cIndex":I
    .restart local v17    # "s2cIndex":I
    goto/16 :goto_2
.end method

.method static synthetic access$1()Lcom/googlecode/mp4parser/util/Logger;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    return-object v0
.end method


# virtual methods
.method public get(I)Lcom/googlecode/mp4parser/authoring/Sample;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 161
    int-to-long v0, p1

    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->ssb:Lcom/coremedia/iso/boxes/SampleSizeBox;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleCount()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 164
    :cond_0
    new-instance v0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList$SampleImpl;

    invoke-direct {v0, p0, p1}, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList$SampleImpl;-><init>(Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;I)V

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->get(I)Lcom/googlecode/mp4parser/authoring/Sample;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized getChunkForSample(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 134
    monitor-enter p0

    add-int/lit8 v0, p1, 0x1

    .line 136
    .local v0, "sampleNum":I
    :try_start_0
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->chunkNumsStartSampleNum:[I

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->lastChunk:I

    aget v1, v1, v2

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->chunkNumsStartSampleNum:[I

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->lastChunk:I

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    if-ge v0, v1, :cond_0

    .line 137
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->lastChunk:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :goto_0
    monitor-exit p0

    return v1

    .line 138
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->chunkNumsStartSampleNum:[I

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->lastChunk:I

    aget v1, v1, v2

    if-ge v0, v1, :cond_2

    .line 141
    const/4 v1, 0x0

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->lastChunk:I

    .line 143
    :goto_1
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->chunkNumsStartSampleNum:[I

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->lastChunk:I

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    if-le v1, v0, :cond_1

    .line 146
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->lastChunk:I

    goto :goto_0

    .line 144
    :cond_1
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->lastChunk:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->lastChunk:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 134
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 149
    :cond_2
    :try_start_2
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->lastChunk:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->lastChunk:I

    .line 151
    :goto_2
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->chunkNumsStartSampleNum:[I

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->lastChunk:I

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    if-le v1, v0, :cond_3

    .line 154
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->lastChunk:I

    goto :goto_0

    .line 152
    :cond_3
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->lastChunk:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->lastChunk:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public size()I
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/samples/DefaultMp4SampleList;->trackBox:Lcom/coremedia/iso/boxes/TrackBox;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/TrackBox;->getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSampleSizeBox()Lcom/coremedia/iso/boxes/SampleSizeBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleCount()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v0

    return v0
.end method
