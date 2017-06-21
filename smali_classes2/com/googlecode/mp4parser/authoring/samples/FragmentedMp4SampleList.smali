.class public Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;
.super Ljava/util/AbstractList;
.source "FragmentedMp4SampleList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Lcom/googlecode/mp4parser/authoring/Sample;",
        ">;"
    }
.end annotation


# instance fields
.field private allTrafs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;",
            ">;"
        }
    .end annotation
.end field

.field private firstSamples:[I

.field fragments:[Lcom/coremedia/iso/IsoFile;

.field private sampleCache:[Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Sample;",
            ">;"
        }
    .end annotation
.end field

.field private size_:I

.field topLevel:Lcom/coremedia/iso/boxes/Container;

.field trackBox:Lcom/coremedia/iso/boxes/TrackBox;

.field trex:Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;

.field private trunDataCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/coremedia/iso/boxes/fragment/TrackRunBox;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(JLcom/coremedia/iso/boxes/Container;[Lcom/coremedia/iso/IsoFile;)V
    .locals 11
    .param p1, "track"    # J
    .param p3, "topLevel"    # Lcom/coremedia/iso/boxes/Container;
    .param p4, "fragments"    # [Lcom/coremedia/iso/IsoFile;

    .prologue
    const/4 v4, 0x0

    .line 35
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 26
    iput-object v4, p0, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->trackBox:Lcom/coremedia/iso/boxes/TrackBox;

    .line 27
    iput-object v4, p0, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->trex:Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;

    .line 31
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->trunDataCache:Ljava/util/Map;

    .line 33
    const/4 v4, -0x1

    iput v4, p0, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->size_:I

    .line 36
    iput-object p3, p0, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->topLevel:Lcom/coremedia/iso/boxes/Container;

    .line 37
    iput-object p4, p0, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->fragments:[Lcom/coremedia/iso/IsoFile;

    .line 38
    const-string/jumbo v4, "moov[0]/trak"

    invoke-static {p3, v4}, Lcom/googlecode/mp4parser/util/Path;->getPaths(Lcom/coremedia/iso/boxes/Container;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 39
    .local v2, "tbs":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/TrackBox;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 44
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->trackBox:Lcom/coremedia/iso/boxes/TrackBox;

    if-nez v4, :cond_2

    .line 45
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "This MP4 does not contain track "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 39
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/TrackBox;

    .line 40
    .local v1, "tb":Lcom/coremedia/iso/boxes/TrackBox;
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/TrackBox;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getTrackId()J

    move-result-wide v6

    cmp-long v5, v6, p1

    if-nez v5, :cond_0

    .line 41
    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->trackBox:Lcom/coremedia/iso/boxes/TrackBox;

    goto :goto_0

    .line 48
    .end local v1    # "tb":Lcom/coremedia/iso/boxes/TrackBox;
    :cond_2
    const-string/jumbo v4, "moov[0]/mvex[0]/trex"

    invoke-static {p3, v4}, Lcom/googlecode/mp4parser/util/Path;->getPaths(Lcom/coremedia/iso/boxes/Container;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 49
    .local v3, "trexs":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 54
    const-class v4, Ljava/lang/ref/SoftReference;

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/ref/SoftReference;

    iput-object v4, p0, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->sampleCache:[Ljava/lang/ref/SoftReference;

    .line 55
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->initAllFragments()Ljava/util/List;

    .line 56
    return-void

    .line 49
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;

    .line 50
    .local v0, "box":Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->getTrackId()J

    move-result-wide v6

    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->trackBox:Lcom/coremedia/iso/boxes/TrackBox;

    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/TrackBox;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getTrackId()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_3

    .line 51
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->trex:Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;

    goto :goto_1
.end method

.method private getTrafSize(Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;)I
    .locals 6
    .param p1, "traf"    # Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    .prologue
    .line 92
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getBoxes()Ljava/util/List;

    move-result-object v1

    .line 93
    .local v1, "boxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    const/4 v3, 0x0

    .line 94
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 100
    return v3

    .line 95
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    .line 96
    .local v0, "b":Lcom/coremedia/iso/boxes/Box;
    instance-of v4, v0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    if-eqz v4, :cond_1

    .line 97
    check-cast v0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    .end local v0    # "b":Lcom/coremedia/iso/boxes/Box;
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getSampleCount()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v4

    add-int/2addr v3, v4

    .line 94
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private initAllFragments()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->allTrafs:Ljava/util/List;

    if-eqz v8, :cond_1

    .line 60
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->allTrafs:Ljava/util/List;

    .line 88
    :cond_0
    return-object v7

    .line 62
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v7, "trafs":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;>;"
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->topLevel:Lcom/coremedia/iso/boxes/Container;

    const-class v9, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    invoke-interface {v8, v9}, Lcom/coremedia/iso/boxes/Container;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_4

    .line 70
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->fragments:[Lcom/coremedia/iso/IsoFile;

    if-eqz v8, :cond_3

    .line 71
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->fragments:[Lcom/coremedia/iso/IsoFile;

    array-length v10, v9

    const/4 v8, 0x0

    :goto_0
    if-lt v8, v10, :cond_6

    .line 81
    :cond_3
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->allTrafs:Ljava/util/List;

    .line 82
    const/4 v2, 0x1

    .line 83
    .local v2, "firstSample":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->allTrafs:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [I

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->firstSamples:[I

    .line 84
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->allTrafs:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_0

    .line 85
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->firstSamples:[I

    aput v2, v8, v4

    .line 86
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->allTrafs:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->getTrafSize(Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;)I

    move-result v8

    add-int/2addr v2, v8

    .line 84
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 63
    .end local v2    # "firstSample":I
    .end local v4    # "i":I
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    .line 64
    .local v5, "moof":Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;
    const-class v9, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    invoke-virtual {v5, v9}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    .line 65
    .local v6, "trackFragmentBox":Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;
    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v10

    invoke-virtual {v10}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getTrackId()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->trackBox:Lcom/coremedia/iso/boxes/TrackBox;

    invoke-virtual {v12}, Lcom/coremedia/iso/boxes/TrackBox;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v12

    invoke-virtual {v12}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getTrackId()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-nez v10, :cond_5

    .line 66
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 71
    .end local v5    # "moof":Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;
    .end local v6    # "trackFragmentBox":Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;
    :cond_6
    aget-object v3, v9, v8

    .line 72
    .local v3, "fragment":Lcom/coremedia/iso/IsoFile;
    const-class v11, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    invoke-virtual {v3, v11}, Lcom/coremedia/iso/IsoFile;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_8

    .line 71
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 72
    :cond_8
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    .line 73
    .restart local v5    # "moof":Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;
    const-class v12, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    invoke-virtual {v5, v12}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_9
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    .line 74
    .restart local v6    # "trackFragmentBox":Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;
    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v13

    invoke-virtual {v13}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getTrackId()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->trackBox:Lcom/coremedia/iso/boxes/TrackBox;

    invoke-virtual {v13}, Lcom/coremedia/iso/boxes/TrackBox;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v13

    invoke-virtual {v13}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getTrackId()J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-nez v13, :cond_9

    .line 75
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method


# virtual methods
.method public get(I)Lcom/googlecode/mp4parser/authoring/Sample;
    .locals 38
    .param p1, "index"    # I

    .prologue
    .line 107
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->sampleCache:[Ljava/lang/ref/SoftReference;

    aget-object v5, v5, p1

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->sampleCache:[Ljava/lang/ref/SoftReference;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/googlecode/mp4parser/authoring/Sample;

    .local v12, "cachedSample":Lcom/googlecode/mp4parser/authoring/Sample;
    if-eqz v12, :cond_0

    .line 214
    .end local v12    # "cachedSample":Lcom/googlecode/mp4parser/authoring/Sample;
    :goto_0
    return-object v12

    .line 112
    :cond_0
    add-int/lit8 v26, p1, 0x1

    .line 113
    .local v26, "targetIndex":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->firstSamples:[I

    array-length v5, v5

    add-int/lit8 v18, v5, -0x1

    .line 114
    .local v18, "j":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->firstSamples:[I

    aget v5, v5, v18

    sub-int v5, v26, v5

    if-ltz v5, :cond_2

    .line 117
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->allTrafs:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    .line 119
    .local v28, "trackFragmentBox":Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->firstSamples:[I

    aget v5, v5, v18

    sub-int v23, v26, v5

    .line 120
    .local v23, "sampleIndexWithInTraf":I
    const/16 v22, 0x0

    .line 121
    .local v22, "previousTrunsSize":I
    invoke-virtual/range {v28 .. v28}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getParent()Lcom/coremedia/iso/boxes/Container;

    move-result-object v19

    check-cast v19, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    .line 123
    .local v19, "moof":Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;
    invoke-virtual/range {v28 .. v28}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getBoxes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-nez v33, :cond_3

    .line 219
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v33, "Couldn\'t find sample in the traf I was looking"

    move-object/from16 v0, v33

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 115
    .end local v19    # "moof":Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;
    .end local v22    # "previousTrunsSize":I
    .end local v23    # "sampleIndexWithInTraf":I
    .end local v28    # "trackFragmentBox":Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;
    :cond_2
    add-int/lit8 v18, v18, -0x1

    goto :goto_1

    .line 123
    .restart local v19    # "moof":Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;
    .restart local v22    # "previousTrunsSize":I
    .restart local v23    # "sampleIndexWithInTraf":I
    .restart local v28    # "trackFragmentBox":Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/coremedia/iso/boxes/Box;

    .line 124
    .local v11, "box":Lcom/coremedia/iso/boxes/Box;
    instance-of v0, v11, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    move/from16 v33, v0

    if-eqz v33, :cond_1

    move-object/from16 v30, v11

    .line 125
    check-cast v30, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    .line 128
    .local v30, "trun":Lcom/coremedia/iso/boxes/fragment/TrackRunBox;
    invoke-virtual/range {v30 .. v30}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getEntries()Ljava/util/List;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v33

    sub-int v34, v23, v22

    move/from16 v0, v33

    move/from16 v1, v34

    if-gt v0, v1, :cond_4

    .line 129
    invoke-virtual/range {v30 .. v30}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getEntries()Ljava/util/List;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v33

    add-int v22, v22, v33

    .line 130
    goto :goto_2

    .line 134
    :cond_4
    invoke-virtual/range {v30 .. v30}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getEntries()Ljava/util/List;

    move-result-object v29

    .line 135
    .local v29, "trackRunEntries":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;>;"
    invoke-virtual/range {v28 .. v28}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v27

    .line 136
    .local v27, "tfhd":Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;
    invoke-virtual/range {v30 .. v30}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleSizePresent()Z

    move-result v24

    .line 137
    .local v24, "sampleSizePresent":Z
    invoke-virtual/range {v27 .. v27}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->hasDefaultSampleSize()Z

    move-result v16

    .line 138
    .local v16, "hasDefaultSampleSize":Z
    const-wide/16 v14, 0x0

    .line 139
    .local v14, "defaultSampleSize":J
    if-nez v24, :cond_5

    .line 140
    if-eqz v16, :cond_8

    .line 141
    invoke-virtual/range {v27 .. v27}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getDefaultSampleSize()J

    move-result-wide v14

    .line 150
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->trunDataCache:Ljava/util/Map;

    move-object/from16 v0, v30

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/ref/SoftReference;

    .line 151
    .local v32, "trunDataRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/nio/ByteBuffer;>;"
    if-eqz v32, :cond_a

    invoke-virtual/range {v32 .. v32}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    move-object/from16 v31, v5

    .line 152
    .local v31, "trunData":Ljava/nio/ByteBuffer;
    :goto_4
    if-nez v31, :cond_7

    .line 153
    const-wide/16 v20, 0x0

    .line 155
    .local v20, "offset":J
    invoke-virtual/range {v27 .. v27}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->hasBaseDataOffset()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 156
    invoke-virtual/range {v27 .. v27}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getBaseDataOffset()J

    move-result-wide v34

    add-long v20, v20, v34

    .line 157
    invoke-virtual/range {v19 .. v19}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getParent()Lcom/coremedia/iso/boxes/Container;

    move-result-object v10

    .line 162
    .local v10, "base":Lcom/coremedia/iso/boxes/Container;
    :goto_5
    invoke-virtual/range {v30 .. v30}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isDataOffsetPresent()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 163
    invoke-virtual/range {v30 .. v30}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getDataOffset()I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v34, v0

    add-long v20, v20, v34

    .line 165
    :cond_6
    const/16 v25, 0x0

    .line 166
    .local v25, "size":I
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-nez v33, :cond_c

    .line 175
    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v34, v0

    :try_start_0
    move-wide/from16 v0, v20

    move-wide/from16 v2, v34

    invoke-interface {v10, v0, v1, v2, v3}, Lcom/coremedia/iso/boxes/Container;->getByteBuffer(JJ)Ljava/nio/ByteBuffer;

    move-result-object v31

    .line 176
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->trunDataCache:Ljava/util/Map;

    new-instance v33, Ljava/lang/ref/SoftReference;

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v10    # "base":Lcom/coremedia/iso/boxes/Container;
    .end local v20    # "offset":J
    .end local v25    # "size":I
    :cond_7
    const/16 v20, 0x0

    .line 183
    .local v20, "offset":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_7
    sub-int v5, v23, v22

    move/from16 v0, v17

    if-lt v0, v5, :cond_e

    .line 191
    if-eqz v24, :cond_10

    .line 192
    sub-int v5, v23, v22

    move-object/from16 v0, v29

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;

    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->getSampleSize()J

    move-result-wide v6

    .line 197
    .local v6, "sampleSize":J
    :goto_8
    move-object/from16 v8, v31

    .line 198
    .local v8, "finalTrunData":Ljava/nio/ByteBuffer;
    move/from16 v9, v20

    .line 200
    .local v9, "finalOffset":I
    new-instance v4, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList$1;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList$1;-><init>(Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;JLjava/nio/ByteBuffer;I)V

    .line 213
    .local v4, "sample":Lcom/googlecode/mp4parser/authoring/Sample;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->sampleCache:[Ljava/lang/ref/SoftReference;

    new-instance v33, Ljava/lang/ref/SoftReference;

    move-object/from16 v0, v33

    invoke-direct {v0, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    aput-object v33, v5, p1

    move-object v12, v4

    .line 214
    goto/16 :goto_0

    .line 143
    .end local v4    # "sample":Lcom/googlecode/mp4parser/authoring/Sample;
    .end local v6    # "sampleSize":J
    .end local v8    # "finalTrunData":Ljava/nio/ByteBuffer;
    .end local v9    # "finalOffset":I
    .end local v17    # "i":I
    .end local v20    # "offset":I
    .end local v31    # "trunData":Ljava/nio/ByteBuffer;
    .end local v32    # "trunDataRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/nio/ByteBuffer;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->trex:Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;

    if-nez v5, :cond_9

    .line 144
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v33, "File doesn\'t contain trex box but track fragments aren\'t fully self contained. Cannot determine sample size."

    move-object/from16 v0, v33

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 146
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->trex:Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;

    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->getDefaultSampleSize()J

    move-result-wide v14

    goto/16 :goto_3

    .line 151
    .restart local v32    # "trunDataRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/nio/ByteBuffer;>;"
    :cond_a
    const/16 v31, 0x0

    goto/16 :goto_4

    .line 159
    .local v20, "offset":J
    .restart local v31    # "trunData":Ljava/nio/ByteBuffer;
    :cond_b
    move-object/from16 v10, v19

    .restart local v10    # "base":Lcom/coremedia/iso/boxes/Container;
    goto/16 :goto_5

    .line 166
    .restart local v25    # "size":I
    :cond_c
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;

    .line 167
    .local v13, "e":Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;
    if-eqz v24, :cond_d

    .line 168
    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v34, v0

    invoke-virtual {v13}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->getSampleSize()J

    move-result-wide v36

    add-long v34, v34, v36

    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v25, v0

    .line 169
    goto/16 :goto_6

    .line 170
    :cond_d
    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v34, v0

    add-long v34, v34, v14

    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v25, v0

    goto/16 :goto_6

    .line 177
    .end local v13    # "e":Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;
    :catch_0
    move-exception v13

    .line 178
    .local v13, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 184
    .end local v10    # "base":Lcom/coremedia/iso/boxes/Container;
    .end local v13    # "e":Ljava/io/IOException;
    .end local v25    # "size":I
    .restart local v17    # "i":I
    .local v20, "offset":I
    :cond_e
    if-eqz v24, :cond_f

    .line 185
    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v34, v0

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;

    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->getSampleSize()J

    move-result-wide v36

    add-long v34, v34, v36

    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v20, v0

    .line 183
    :goto_9
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_7

    .line 187
    :cond_f
    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v34, v0

    add-long v34, v34, v14

    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v20, v0

    goto :goto_9

    .line 194
    :cond_10
    move-wide v6, v14

    .restart local v6    # "sampleSize":J
    goto/16 :goto_8
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->get(I)Lcom/googlecode/mp4parser/authoring/Sample;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 18

    .prologue
    .line 224
    move-object/from16 v0, p0

    iget v7, v0, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->size_:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 225
    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->size_:I

    .line 250
    :goto_0
    return v3

    .line 227
    :cond_0
    const/4 v3, 0x0

    .line 228
    .local v3, "i":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->topLevel:Lcom/coremedia/iso/boxes/Container;

    const-class v8, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    invoke-interface {v7, v8}, Lcom/coremedia/iso/boxes/Container;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 238
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->fragments:[Lcom/coremedia/iso/IsoFile;

    array-length v9, v8

    const/4 v7, 0x0

    :goto_1
    if-lt v7, v9, :cond_4

    .line 249
    move-object/from16 v0, p0

    iput v3, v0, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->size_:I

    goto :goto_0

    .line 228
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    .line 229
    .local v4, "moof":Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;
    const-class v8, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    invoke-virtual {v4, v8}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    .line 230
    .local v5, "trackFragmentBox":Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;
    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v9

    invoke-virtual {v9}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getTrackId()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->trackBox:Lcom/coremedia/iso/boxes/TrackBox;

    invoke-virtual {v9}, Lcom/coremedia/iso/boxes/TrackBox;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v9

    invoke-virtual {v9}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getTrackId()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-nez v9, :cond_3

    .line 231
    const-class v9, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    invoke-virtual {v5, v9}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    .line 232
    .local v6, "trackRunBox":Lcom/coremedia/iso/boxes/fragment/TrackRunBox;
    int-to-long v10, v3

    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getSampleCount()J

    move-result-wide v12

    add-long/2addr v10, v12

    long-to-int v3, v10

    goto :goto_2

    .line 238
    .end local v4    # "moof":Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;
    .end local v5    # "trackFragmentBox":Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;
    .end local v6    # "trackRunBox":Lcom/coremedia/iso/boxes/fragment/TrackRunBox;
    :cond_4
    aget-object v2, v8, v7

    .line 239
    .local v2, "fragment":Lcom/coremedia/iso/IsoFile;
    const-class v10, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    invoke-virtual {v2, v10}, Lcom/coremedia/iso/IsoFile;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_6

    .line 238
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 239
    :cond_6
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    .line 240
    .restart local v4    # "moof":Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;
    const-class v11, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    invoke-virtual {v4, v11}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    .line 241
    .restart local v5    # "trackFragmentBox":Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;
    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v12

    invoke-virtual {v12}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getTrackId()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/googlecode/mp4parser/authoring/samples/FragmentedMp4SampleList;->trackBox:Lcom/coremedia/iso/boxes/TrackBox;

    invoke-virtual {v14}, Lcom/coremedia/iso/boxes/TrackBox;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v14

    invoke-virtual {v14}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getTrackId()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-nez v12, :cond_7

    .line 242
    const-class v12, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    invoke-virtual {v5, v12}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    .line 243
    .restart local v6    # "trackRunBox":Lcom/coremedia/iso/boxes/fragment/TrackRunBox;
    int-to-long v14, v3

    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getSampleCount()J

    move-result-wide v16

    add-long v14, v14, v16

    long-to-int v3, v14

    goto :goto_3
.end method
