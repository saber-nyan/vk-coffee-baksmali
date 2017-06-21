.class Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;
.super Ljava/lang/Object;
.source "DefaultMp4Builder.java"

# interfaces
.implements Lcom/coremedia/iso/boxes/Box;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterleaveChunkMdat"
.end annotation


# instance fields
.field chunkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Sample;",
            ">;>;"
        }
    .end annotation
.end field

.field contentSize:J

.field parent:Lcom/coremedia/iso/boxes/Container;

.field final synthetic this$0:Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;

.field tracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Track;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;Lcom/googlecode/mp4parser/authoring/Movie;Ljava/util/Map;J)V
    .locals 22
    .param p2, "movie"    # Lcom/googlecode/mp4parser/authoring/Movie;
    .param p4, "contentSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/mp4parser/authoring/Movie;",
            "Ljava/util/Map",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Track;",
            "[I>;J)V"
        }
    .end annotation

    .prologue
    .line 646
    .local p3, "chunks":Ljava/util/Map;, "Ljava/util/Map<Lcom/googlecode/mp4parser/authoring/Track;[I>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->this$0:Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 641
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->chunkList:Ljava/util/List;

    .line 647
    move-wide/from16 v0, p4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->contentSize:J

    .line 648
    invoke-virtual/range {p2 .. p2}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->tracks:Ljava/util/List;

    .line 649
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 650
    .local v15, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/googlecode/mp4parser/authoring/Track;>;"
    new-instance v16, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat$1;-><init>(Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;)V

    invoke-static/range {v15 .. v16}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 655
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 656
    .local v12, "trackToChunk":Ljava/util/Map;, "Ljava/util/Map<Lcom/googlecode/mp4parser/authoring/Track;Ljava/lang/Integer;>;"
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 657
    .local v13, "trackToSample":Ljava/util/Map;, "Ljava/util/Map<Lcom/googlecode/mp4parser/authoring/Track;Ljava/lang/Integer;>;"
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 658
    .local v14, "trackToTime":Ljava/util/Map;, "Ljava/util/Map<Lcom/googlecode/mp4parser/authoring/Track;Ljava/lang/Double;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_1

    .line 665
    :goto_1
    const/4 v6, 0x0

    .line 666
    .local v6, "nextChunksTrack":Lcom/googlecode/mp4parser/authoring/Track;
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_0
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_2

    .line 674
    if-nez v6, :cond_4

    .line 694
    return-void

    .line 658
    .end local v6    # "nextChunksTrack":Lcom/googlecode/mp4parser/authoring/Track;
    :cond_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/googlecode/mp4parser/authoring/Track;

    .line 659
    .local v9, "track":Lcom/googlecode/mp4parser/authoring/Track;
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v12, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v13, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    const-wide/16 v18, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v14, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 666
    .end local v9    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    .restart local v6    # "nextChunksTrack":Lcom/googlecode/mp4parser/authoring/Track;
    :cond_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/googlecode/mp4parser/authoring/Track;

    .line 667
    .restart local v9    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    if-eqz v6, :cond_3

    invoke-interface {v14, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Double;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    invoke-interface {v14, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Double;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    cmpg-double v16, v18, v20

    if-gez v16, :cond_0

    .line 670
    :cond_3
    invoke-interface {v12, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [I

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v18

    move/from16 v1, v16

    if-ge v0, v1, :cond_0

    .line 671
    move-object v6, v9

    goto :goto_2

    .line 679
    .end local v9    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    :cond_4
    invoke-interface {v12, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 680
    .local v5, "nextChunksIndex":I
    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [I

    aget v7, v16, v5

    .line 681
    .local v7, "numberOfSampleInNextChunk":I
    invoke-interface {v13, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 682
    .local v8, "startSample":I
    invoke-interface {v14, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Double;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 683
    .local v10, "time":D
    move v4, v8

    .local v4, "j":I
    :goto_3
    add-int v16, v8, v7

    move/from16 v0, v16

    if-lt v4, v0, :cond_5

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->chunkList:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface {v6}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v17

    add-int v18, v8, v7

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v0, v8, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 688
    add-int/lit8 v16, v5, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v12, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    add-int v16, v8, v7

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v13, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 684
    :cond_5
    invoke-interface {v6}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDurations()[J

    move-result-object v16

    aget-wide v16, v16, v4

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-interface {v6}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    add-double v10, v10, v16

    .line 683
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method synthetic constructor <init>(Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;Lcom/googlecode/mp4parser/authoring/Movie;Ljava/util/Map;JLcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;)V
    .locals 0

    .prologue
    .line 646
    invoke-direct/range {p0 .. p5}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;-><init>(Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;Lcom/googlecode/mp4parser/authoring/Movie;Ljava/util/Map;J)V

    return-void
.end method

.method private isSmallBox(J)Z
    .locals 5
    .param p1, "contentSize"    # J

    .prologue
    .line 736
    const-wide/16 v0, 0x8

    add-long/2addr v0, p1

    const-wide v2, 0x100000000L

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBox(Ljava/nio/channels/WritableByteChannel;)V
    .locals 14
    .param p1, "writableByteChannel"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 741
    const/16 v3, 0x10

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 742
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->getSize()J

    move-result-wide v4

    .line 743
    .local v4, "size":J
    invoke-direct {p0, v4, v5}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->isSmallBox(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 744
    invoke-static {v0, v4, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 748
    :goto_0
    const-string/jumbo v3, "mdat"

    invoke-static {v3}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 749
    invoke-direct {p0, v4, v5}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->isSmallBox(J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 750
    const/16 v3, 0x8

    new-array v3, v3, [B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 754
    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 755
    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 756
    const-wide/16 v6, 0x0

    .line 757
    .local v6, "writtenBytes":J
    const-wide/16 v8, 0x0

    .line 759
    .local v8, "writtenMegaBytes":J
    invoke-static {}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->access$0()Lcom/googlecode/mp4parser/util/Logger;

    move-result-object v3

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "About to write "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v12, p0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->contentSize:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/googlecode/mp4parser/util/Logger;->logDebug(Ljava/lang/String;)V

    .line 760
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->chunkList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_3

    .line 772
    return-void

    .line 746
    .end local v6    # "writtenBytes":J
    .end local v8    # "writtenMegaBytes":J
    :cond_1
    const-wide/16 v10, 0x1

    invoke-static {v0, v10, v11}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    goto :goto_0

    .line 752
    :cond_2
    invoke-static {v0, v4, v5}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt64(Ljava/nio/ByteBuffer;J)V

    goto :goto_1

    .line 760
    .restart local v6    # "writtenBytes":J
    .restart local v8    # "writtenMegaBytes":J
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 761
    .local v2, "samples":Ljava/util/List;, "Ljava/util/List<Lcom/googlecode/mp4parser/authoring/Sample;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/googlecode/mp4parser/authoring/Sample;

    .line 762
    .local v1, "sample":Lcom/googlecode/mp4parser/authoring/Sample;
    invoke-interface {v1, p1}, Lcom/googlecode/mp4parser/authoring/Sample;->writeTo(Ljava/nio/channels/WritableByteChannel;)V

    .line 763
    invoke-interface {v1}, Lcom/googlecode/mp4parser/authoring/Sample;->getSize()J

    move-result-wide v12

    add-long/2addr v6, v12

    .line 764
    const-wide/32 v12, 0x100000

    cmp-long v11, v6, v12

    if-lez v11, :cond_4

    .line 765
    const-wide/32 v12, 0x100000

    sub-long/2addr v6, v12

    .line 766
    const-wide/16 v12, 0x1

    add-long/2addr v8, v12

    .line 767
    invoke-static {}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->access$0()Lcom/googlecode/mp4parser/util/Logger;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "Written "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "MB"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/googlecode/mp4parser/util/Logger;->logDebug(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getDataOffset()J
    .locals 8

    .prologue
    .line 712
    move-object v0, p0

    .line 713
    .local v0, "b":Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;
    const-wide/16 v2, 0x10

    .line 714
    .end local v0    # "b":Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;
    .local v2, "offset":J
    :goto_0
    instance-of v4, v0, Lcom/coremedia/iso/boxes/Box;

    if-nez v4, :cond_0

    .line 723
    return-wide v2

    :cond_0
    move-object v4, v0

    .line 715
    check-cast v4, Lcom/coremedia/iso/boxes/Box;

    invoke-interface {v4}, Lcom/coremedia/iso/boxes/Box;->getParent()Lcom/coremedia/iso/boxes/Container;

    move-result-object v4

    invoke-interface {v4}, Lcom/coremedia/iso/boxes/Container;->getBoxes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 721
    :cond_1
    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    invoke-interface {v0}, Lcom/coremedia/iso/boxes/Box;->getParent()Lcom/coremedia/iso/boxes/Container;

    move-result-object v0

    .local v0, "b":Lcom/coremedia/iso/boxes/Container;
    goto :goto_0

    .line 715
    .end local v0    # "b":Lcom/coremedia/iso/boxes/Container;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/Box;

    .line 716
    .local v1, "box":Lcom/coremedia/iso/boxes/Box;
    if-eq v0, v1, :cond_1

    .line 719
    invoke-interface {v1}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v6

    add-long/2addr v2, v6

    goto :goto_1
.end method

.method public getOffset()J
    .locals 2

    .prologue
    .line 705
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Doesn\'t have any meaning for programmatically created boxes"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getParent()Lcom/coremedia/iso/boxes/Container;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->parent:Lcom/coremedia/iso/boxes/Container;

    return-object v0
.end method

.method public getSize()J
    .locals 4

    .prologue
    .line 732
    const-wide/16 v0, 0x10

    iget-wide v2, p0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->contentSize:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 728
    const-string/jumbo v0, "mdat"

    return-object v0
.end method

.method public parse(Lcom/googlecode/mp4parser/DataSource;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/BoxParser;)V
    .locals 0
    .param p1, "dataSource"    # Lcom/googlecode/mp4parser/DataSource;
    .param p2, "header"    # Ljava/nio/ByteBuffer;
    .param p3, "contentSize"    # J
    .param p5, "boxParser"    # Lcom/coremedia/iso/BoxParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 709
    return-void
.end method

.method public setParent(Lcom/coremedia/iso/boxes/Container;)V
    .locals 0
    .param p1, "parent"    # Lcom/coremedia/iso/boxes/Container;

    .prologue
    .line 701
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder$InterleaveChunkMdat;->parent:Lcom/coremedia/iso/boxes/Container;

    .line 702
    return-void
.end method
