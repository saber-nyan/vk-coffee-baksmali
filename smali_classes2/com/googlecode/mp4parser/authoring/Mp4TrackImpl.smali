.class public Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;
.super Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.source "Mp4TrackImpl.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private compositionTimeEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private decodingTimes:[J

.field fragments:[Lcom/coremedia/iso/IsoFile;

.field private handler:Ljava/lang/String;

.field private sampleDependencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

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

.field private subSampleInformationBox:Lcom/coremedia/iso/boxes/SubSampleInformationBox;

.field private syncSamples:[J

.field trackBox:Lcom/coremedia/iso/boxes/TrackBox;

.field private trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs constructor <init>(Ljava/lang/String;Lcom/coremedia/iso/boxes/TrackBox;[Lcom/coremedia/iso/IsoFile;)V
    .locals 48
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "trackBox"    # Lcom/coremedia/iso/boxes/TrackBox;
    .param p3, "fragments"    # [Lcom/coremedia/iso/IsoFile;

    .prologue
    .line 61
    invoke-direct/range {p0 .. p1}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>(Ljava/lang/String;)V

    .line 46
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->syncSamples:[J

    .line 48
    new-instance v3, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-direct {v3}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    .line 50
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->subSampleInformationBox:Lcom/coremedia/iso/boxes/SubSampleInformationBox;

    .line 62
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackBox:Lcom/coremedia/iso/boxes/TrackBox;

    .line 63
    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/TrackBox;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getTrackId()J

    move-result-wide v38

    .line 64
    .local v38, "trackId":J
    new-instance v3, Lcom/coremedia/iso/boxes/mdat/SampleList;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lcom/coremedia/iso/boxes/mdat/SampleList;-><init>(Lcom/coremedia/iso/boxes/TrackBox;[Lcom/coremedia/iso/IsoFile;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->samples:Ljava/util/List;

    .line 65
    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/TrackBox;->getMediaBox()Lcom/coremedia/iso/boxes/MediaBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/MediaBox;->getMediaInformationBox()Lcom/coremedia/iso/boxes/MediaInformationBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/MediaInformationBox;->getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;

    move-result-object v30

    .line 67
    .local v30, "stbl":Lcom/coremedia/iso/boxes/SampleTableBox;
    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/TrackBox;->getMediaBox()Lcom/coremedia/iso/boxes/MediaBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/MediaBox;->getHandlerBox()Lcom/coremedia/iso/boxes/HandlerBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/HandlerBox;->getHandlerType()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->handler:Ljava/lang/String;

    .line 69
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v2, "decodingTimeEntries":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

    .line 71
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->sampleDependencies:Ljava/util/List;

    .line 73
    invoke-virtual/range {v30 .. v30}, Lcom/coremedia/iso/boxes/SampleTableBox;->getTimeToSampleBox()Lcom/coremedia/iso/boxes/TimeToSampleBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/TimeToSampleBox;->getEntries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 74
    invoke-virtual/range {v30 .. v30}, Lcom/coremedia/iso/boxes/SampleTableBox;->getCompositionTimeToSample()Lcom/coremedia/iso/boxes/CompositionTimeToSample;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 75
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

    invoke-virtual/range {v30 .. v30}, Lcom/coremedia/iso/boxes/SampleTableBox;->getCompositionTimeToSample()Lcom/coremedia/iso/boxes/CompositionTimeToSample;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/CompositionTimeToSample;->getEntries()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 77
    :cond_0
    invoke-virtual/range {v30 .. v30}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSampleDependencyTypeBox()Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 78
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->sampleDependencies:Ljava/util/List;

    invoke-virtual/range {v30 .. v30}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSampleDependencyTypeBox()Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;->getEntries()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 80
    :cond_1
    invoke-virtual/range {v30 .. v30}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSyncSampleBox()Lcom/coremedia/iso/boxes/SyncSampleBox;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 81
    invoke-virtual/range {v30 .. v30}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSyncSampleBox()Lcom/coremedia/iso/boxes/SyncSampleBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/SyncSampleBox;->getSampleNumber()[J

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->syncSamples:[J

    .line 83
    :cond_2
    const-string/jumbo v3, "subs"

    move-object/from16 v0, v30

    invoke-static {v0, v3}, Lcom/googlecode/mp4parser/util/Path;->getPath(Lcom/googlecode/mp4parser/AbstractContainerBox;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v3

    check-cast v3, Lcom/coremedia/iso/boxes/SubSampleInformationBox;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->subSampleInformationBox:Lcom/coremedia/iso/boxes/SubSampleInformationBox;

    .line 86
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v23, "movieFragmentBoxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/TrackBox;->getParent()Lcom/coremedia/iso/boxes/Container;

    move-result-object v3

    check-cast v3, Lcom/coremedia/iso/boxes/Box;

    invoke-interface {v3}, Lcom/coremedia/iso/boxes/Box;->getParent()Lcom/coremedia/iso/boxes/Container;

    move-result-object v3

    const-class v4, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    invoke-interface {v3, v4}, Lcom/coremedia/iso/boxes/Container;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 88
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_5

    .line 92
    invoke-virtual/range {v30 .. v30}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    .line 93
    const/16 v19, 0x0

    .line 94
    .local v19, "lastSubsSample":I
    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/TrackBox;->getParent()Lcom/coremedia/iso/boxes/Container;

    move-result-object v3

    const-class v4, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;

    invoke-interface {v3, v4}, Lcom/coremedia/iso/boxes/Container;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v21

    .line 95
    .local v21, "movieExtendsBoxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1a

    .line 96
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_6

    .line 196
    :goto_1
    invoke-static {v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox;->blowupTimeToSamples(Ljava/util/List;)[J

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->decodingTimes:[J

    .line 198
    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/TrackBox;->getMediaBox()Lcom/coremedia/iso/boxes/MediaBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/MediaBox;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/MediaHeaderBox;

    move-result-object v20

    .line 199
    .local v20, "mdhd":Lcom/coremedia/iso/boxes/MediaHeaderBox;
    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/TrackBox;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v35

    .line 201
    .local v35, "tkhd":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-virtual/range {v35 .. v35}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getTrackId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setTrackId(J)V

    .line 202
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-virtual/range {v20 .. v20}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getCreationTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setCreationTime(Ljava/util/Date;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-virtual/range {v20 .. v20}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setLanguage(Ljava/lang/String;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-virtual/range {v20 .. v20}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getModificationTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setModificationTime(Ljava/util/Date;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-virtual/range {v20 .. v20}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getTimescale()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setTimescale(J)V

    .line 207
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-virtual/range {v35 .. v35}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getHeight()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setHeight(D)V

    .line 208
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-virtual/range {v35 .. v35}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getWidth()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setWidth(D)V

    .line 209
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-virtual/range {v35 .. v35}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getLayer()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setLayer(I)V

    .line 210
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-virtual/range {v35 .. v35}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getMatrix()Lcom/googlecode/mp4parser/util/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setMatrix(Lcom/googlecode/mp4parser/util/Matrix;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-virtual/range {v35 .. v35}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getVolume()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setVolume(F)V

    .line 212
    const-string/jumbo v3, "edts/elst"

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/googlecode/mp4parser/util/Path;->getPath(Lcom/googlecode/mp4parser/AbstractContainerBox;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v15

    check-cast v15, Lcom/coremedia/iso/boxes/EditListBox;

    .line 213
    .local v15, "elst":Lcom/coremedia/iso/boxes/EditListBox;
    const-string/jumbo v3, "../mvhd"

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/googlecode/mp4parser/util/Path;->getPath(Lcom/googlecode/mp4parser/AbstractContainerBox;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v25

    check-cast v25, Lcom/coremedia/iso/boxes/MovieHeaderBox;

    .line 214
    .local v25, "mvhd":Lcom/coremedia/iso/boxes/MovieHeaderBox;
    if-eqz v15, :cond_4

    .line 215
    invoke-virtual {v15}, Lcom/coremedia/iso/boxes/EditListBox;->getEntries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v44

    :goto_2
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 220
    :cond_4
    return-void

    .line 88
    .end local v15    # "elst":Lcom/coremedia/iso/boxes/EditListBox;
    .end local v19    # "lastSubsSample":I
    .end local v20    # "mdhd":Lcom/coremedia/iso/boxes/MediaHeaderBox;
    .end local v21    # "movieExtendsBoxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;>;"
    .end local v25    # "mvhd":Lcom/coremedia/iso/boxes/MovieHeaderBox;
    .end local v35    # "tkhd":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    :cond_5
    aget-object v18, p3, v3

    .line 89
    .local v18, "fragment":Lcom/coremedia/iso/IsoFile;
    const-class v5, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/coremedia/iso/IsoFile;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 88
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 96
    .end local v18    # "fragment":Lcom/coremedia/iso/IsoFile;
    .restart local v19    # "lastSubsSample":I
    .restart local v21    # "movieExtendsBoxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;>;"
    :cond_6
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;

    .line 97
    .local v24, "mvex":Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;
    const-class v3, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v36

    .line 98
    .local v36, "trackExtendsBoxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;>;"
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;

    .line 99
    .local v41, "trex":Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;
    invoke-virtual/range {v41 .. v41}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->getTrackId()J

    move-result-wide v4

    cmp-long v3, v4, v38

    if-nez v3, :cond_7

    .line 100
    invoke-virtual/range {p2 .. p2}, Lcom/coremedia/iso/boxes/TrackBox;->getParent()Lcom/coremedia/iso/boxes/Container;

    move-result-object v3

    check-cast v3, Lcom/coremedia/iso/boxes/Box;

    invoke-interface {v3}, Lcom/coremedia/iso/boxes/Box;->getParent()Lcom/coremedia/iso/boxes/Container;

    move-result-object v3

    const-string/jumbo v4, "/moof/traf/subs"

    invoke-static {v3, v4}, Lcom/googlecode/mp4parser/util/Path;->getPaths(Lcom/coremedia/iso/boxes/Container;Ljava/lang/String;)Ljava/util/List;

    move-result-object v33

    .line 101
    .local v33, "subss":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/SubSampleInformationBox;>;"
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 102
    new-instance v3, Lcom/coremedia/iso/boxes/SubSampleInformationBox;

    invoke-direct {v3}, Lcom/coremedia/iso/boxes/SubSampleInformationBox;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->subSampleInformationBox:Lcom/coremedia/iso/boxes/SubSampleInformationBox;

    .line 105
    :cond_8
    const-wide/16 v28, 0x1

    .line 106
    .local v28, "sampleNumber":J
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v44

    :cond_9
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    .line 107
    .local v22, "movieFragmentBox":Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;
    const-class v3, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v40

    .line 108
    .local v40, "trafs":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;>;"
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v45

    :cond_a
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    .line 109
    .local v37, "traf":Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;
    invoke-virtual/range {v37 .. v37}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getTrackId()J

    move-result-wide v4

    cmp-long v3, v4, v38

    if-nez v3, :cond_a

    .line 111
    const-class v3, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/coremedia/iso/boxes/SampleTableBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 112
    const-string/jumbo v3, "sgpd"

    move-object/from16 v0, v37

    invoke-static {v0, v3}, Lcom/googlecode/mp4parser/util/Path;->getPaths(Lcom/coremedia/iso/boxes/Container;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 113
    const-string/jumbo v3, "sbgp"

    move-object/from16 v0, v37

    invoke-static {v0, v3}, Lcom/googlecode/mp4parser/util/Path;->getPaths(Lcom/coremedia/iso/boxes/Container;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 114
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->sampleGroups:Ljava/util/Map;

    const-wide/16 v8, 0x1

    sub-long v8, v28, v8

    move-object/from16 v3, p0

    .line 110
    invoke-direct/range {v3 .. v9}, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->getSampleGroups(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;J)Ljava/util/Map;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->sampleGroups:Ljava/util/Map;

    .line 116
    const-string/jumbo v3, "subs"

    move-object/from16 v0, v37

    invoke-static {v0, v3}, Lcom/googlecode/mp4parser/util/Path;->getPath(Lcom/googlecode/mp4parser/AbstractContainerBox;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v32

    check-cast v32, Lcom/coremedia/iso/boxes/SubSampleInformationBox;

    .line 117
    .local v32, "subs":Lcom/coremedia/iso/boxes/SubSampleInformationBox;
    if-eqz v32, :cond_b

    .line 118
    move/from16 v0, v19

    int-to-long v4, v0

    sub-long v4, v28, v4

    const-wide/16 v6, 0x1

    sub-long v12, v4, v6

    .line 119
    .local v12, "difFromLastFragment":J
    invoke-virtual/range {v32 .. v32}, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->getEntries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_11

    .line 133
    .end local v12    # "difFromLastFragment":J
    :cond_b
    const-class v3, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v43

    .line 134
    .local v43, "truns":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackRunBox;>;"
    invoke-interface/range {v43 .. v43}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    .line 135
    .local v42, "trun":Lcom/coremedia/iso/boxes/fragment/TrackRunBox;
    invoke-virtual/range {v42 .. v42}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getParent()Lcom/coremedia/iso/boxes/Container;

    move-result-object v3

    check-cast v3, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v34

    .line 136
    .local v34, "tfhd":Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;
    const/16 v17, 0x1

    .line 137
    .local v17, "first":Z
    invoke-virtual/range {v42 .. v42}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getEntries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;

    .line 138
    .local v16, "entry":Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;
    invoke-virtual/range {v42 .. v42}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleDurationPresent()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 139
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_d

    .line 140
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v6

    invoke-virtual/range {v16 .. v16}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->getSampleDuration()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-eqz v3, :cond_13

    .line 141
    :cond_d
    new-instance v3, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    const-wide/16 v6, 0x1

    invoke-virtual/range {v16 .. v16}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->getSampleDuration()J

    move-result-wide v8

    invoke-direct {v3, v6, v7, v8, v9}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :goto_5
    invoke-virtual/range {v42 .. v42}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleCompositionTimeOffsetPresent()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 155
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_e

    .line 156
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getOffset()I

    move-result v3

    int-to-long v6, v3

    invoke-virtual/range {v16 .. v16}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->getSampleCompositionTimeOffset()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-eqz v3, :cond_16

    .line 157
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

    new-instance v6, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    const/4 v7, 0x1

    invoke-virtual/range {v16 .. v16}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->getSampleCompositionTimeOffset()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;-><init>(II)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_f
    :goto_6
    invoke-virtual/range {v42 .. v42}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleFlagsPresent()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 165
    invoke-virtual/range {v16 .. v16}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->getSampleFlags()Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    move-result-object v26

    .line 177
    .local v26, "sampleFlags":Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    :goto_7
    if-eqz v26, :cond_10

    invoke-virtual/range {v26 .. v26}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->isSampleIsDifferenceSample()Z

    move-result v3

    if-nez v3, :cond_10

    .line 179
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->syncSamples:[J

    const/4 v6, 0x1

    new-array v6, v6, [J

    const/4 v7, 0x0

    aput-wide v28, v6, v7

    invoke-static {v3, v6}, Lcom/googlecode/mp4parser/util/Mp4Arrays;->copyOfAndAppend([J[J)[J

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->syncSamples:[J

    .line 181
    :cond_10
    const-wide/16 v6, 0x1

    add-long v28, v28, v6

    .line 182
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 119
    .end local v16    # "entry":Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;
    .end local v17    # "first":Z
    .end local v26    # "sampleFlags":Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    .end local v34    # "tfhd":Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;
    .end local v42    # "trun":Lcom/coremedia/iso/boxes/fragment/TrackRunBox;
    .end local v43    # "truns":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackRunBox;>;"
    .restart local v12    # "difFromLastFragment":J
    :cond_11
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SubSampleEntry;

    .line 120
    .local v31, "subSampleEntry":Lcom/coremedia/iso/boxes/SubSampleInformationBox$SubSampleEntry;
    new-instance v27, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SubSampleEntry;

    invoke-direct/range {v27 .. v27}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SubSampleEntry;-><init>()V

    .line 121
    .local v27, "se":Lcom/coremedia/iso/boxes/SubSampleInformationBox$SubSampleEntry;
    invoke-virtual/range {v27 .. v27}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SubSampleEntry;->getSubsampleEntries()Ljava/util/List;

    move-result-object v4

    invoke-virtual/range {v31 .. v31}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SubSampleEntry;->getSubsampleEntries()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 122
    const-wide/16 v4, 0x0

    cmp-long v4, v12, v4

    if-eqz v4, :cond_12

    .line 123
    invoke-virtual/range {v31 .. v31}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SubSampleEntry;->getSampleDelta()J

    move-result-wide v4

    add-long/2addr v4, v12

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SubSampleEntry;->setSampleDelta(J)V

    .line 124
    const-wide/16 v12, 0x0

    .line 128
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->subSampleInformationBox:Lcom/coremedia/iso/boxes/SubSampleInformationBox;

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/SubSampleInformationBox;->getEntries()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 126
    :cond_12
    invoke-virtual/range {v31 .. v31}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SubSampleEntry;->getSampleDelta()J

    move-result-wide v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Lcom/coremedia/iso/boxes/SubSampleInformationBox$SubSampleEntry;->setSampleDelta(J)V

    goto :goto_8

    .line 143
    .end local v12    # "difFromLastFragment":J
    .end local v27    # "se":Lcom/coremedia/iso/boxes/SubSampleInformationBox$SubSampleEntry;
    .end local v31    # "subSampleEntry":Lcom/coremedia/iso/boxes/SubSampleInformationBox$SubSampleEntry;
    .restart local v16    # "entry":Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;
    .restart local v17    # "first":Z
    .restart local v34    # "tfhd":Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;
    .restart local v42    # "trun":Lcom/coremedia/iso/boxes/fragment/TrackRunBox;
    .restart local v43    # "truns":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackRunBox;>;"
    :cond_13
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 144
    .local v14, "e":Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    invoke-virtual {v14}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    invoke-virtual {v14, v6, v7}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->setCount(J)V

    goto/16 :goto_5

    .line 147
    .end local v14    # "e":Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    :cond_14
    invoke-virtual/range {v34 .. v34}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->hasDefaultSampleDuration()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 148
    new-instance v3, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    const-wide/16 v6, 0x1

    invoke-virtual/range {v34 .. v34}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getDefaultSampleDuration()J

    move-result-wide v8

    invoke-direct {v3, v6, v7, v8, v9}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 150
    :cond_15
    new-instance v3, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    const-wide/16 v6, 0x1

    invoke-virtual/range {v41 .. v41}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->getDefaultSampleDuration()J

    move-result-wide v8

    invoke-direct {v3, v6, v7, v8, v9}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 159
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    .line 160
    .local v14, "e":Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;
    invoke-virtual {v14}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v14, v3}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->setCount(I)V

    goto/16 :goto_6

    .line 167
    .end local v14    # "e":Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;
    :cond_17
    if-eqz v17, :cond_18

    invoke-virtual/range {v42 .. v42}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isFirstSampleFlagsPresent()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 168
    invoke-virtual/range {v42 .. v42}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFirstSampleFlags()Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    move-result-object v26

    .line 169
    .restart local v26    # "sampleFlags":Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    goto/16 :goto_7

    .line 170
    .end local v26    # "sampleFlags":Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    :cond_18
    invoke-virtual/range {v34 .. v34}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->hasDefaultSampleFlags()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 171
    invoke-virtual/range {v34 .. v34}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getDefaultSampleFlags()Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    move-result-object v26

    .line 172
    .restart local v26    # "sampleFlags":Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    goto/16 :goto_7

    .line 173
    .end local v26    # "sampleFlags":Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    :cond_19
    invoke-virtual/range {v41 .. v41}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->getDefaultSampleFlags()Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    move-result-object v26

    .restart local v26    # "sampleFlags":Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    goto/16 :goto_7

    .line 193
    .end local v16    # "entry":Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;
    .end local v17    # "first":Z
    .end local v22    # "movieFragmentBox":Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;
    .end local v24    # "mvex":Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;
    .end local v26    # "sampleFlags":Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    .end local v28    # "sampleNumber":J
    .end local v32    # "subs":Lcom/coremedia/iso/boxes/SubSampleInformationBox;
    .end local v33    # "subss":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/SubSampleInformationBox;>;"
    .end local v34    # "tfhd":Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;
    .end local v36    # "trackExtendsBoxes":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;>;"
    .end local v37    # "traf":Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;
    .end local v40    # "trafs":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;>;"
    .end local v41    # "trex":Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;
    .end local v42    # "trun":Lcom/coremedia/iso/boxes/fragment/TrackRunBox;
    .end local v43    # "truns":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackRunBox;>;"
    :cond_1a
    const-class v3, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/coremedia/iso/boxes/SampleTableBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const-class v3, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox;

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/coremedia/iso/boxes/SampleTableBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->sampleGroups:Ljava/util/Map;

    const-wide/16 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->getSampleGroups(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;J)Ljava/util/Map;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->sampleGroups:Ljava/util/Map;

    goto/16 :goto_1

    .line 215
    .restart local v15    # "elst":Lcom/coremedia/iso/boxes/EditListBox;
    .restart local v20    # "mdhd":Lcom/coremedia/iso/boxes/MediaHeaderBox;
    .restart local v25    # "mvhd":Lcom/coremedia/iso/boxes/MovieHeaderBox;
    .restart local v35    # "tkhd":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    :cond_1b
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/coremedia/iso/boxes/EditListBox$Entry;

    .line 216
    .local v14, "e":Lcom/coremedia/iso/boxes/EditListBox$Entry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->edits:Ljava/util/List;

    move-object/from16 v45, v0

    new-instance v3, Lcom/googlecode/mp4parser/authoring/Edit;

    invoke-virtual {v14}, Lcom/coremedia/iso/boxes/EditListBox$Entry;->getMediaTime()J

    move-result-wide v4

    invoke-virtual/range {v20 .. v20}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getTimescale()J

    move-result-wide v6

    invoke-virtual {v14}, Lcom/coremedia/iso/boxes/EditListBox$Entry;->getMediaRate()D

    move-result-wide v8

    invoke-virtual {v14}, Lcom/coremedia/iso/boxes/EditListBox$Entry;->getSegmentDuration()J

    move-result-wide v10

    long-to-double v10, v10

    invoke-virtual/range {v25 .. v25}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->getTimescale()J

    move-result-wide v46

    move-wide/from16 v0, v46

    long-to-double v0, v0

    move-wide/from16 v46, v0

    div-double v10, v10, v46

    invoke-direct/range {v3 .. v11}, Lcom/googlecode/mp4parser/authoring/Edit;-><init>(JJDD)V

    move-object/from16 v0, v45

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method private getSampleGroups(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;J)Ljava/util/Map;
    .locals 19
    .param p5, "startIndex"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;",
            "[J>;J)",
            "Ljava/util/Map",
            "<",
            "Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;",
            "[J>;"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, "globalSgdbs":Ljava/util/List;, "Ljava/util/List<Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;>;"
    .local p2, "localSgdbs":Ljava/util/List;, "Ljava/util/List<Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;>;"
    .local p3, "sbgps":Ljava/util/List;, "Ljava/util/List<Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox;>;"
    .local p4, "sampleGroups":Ljava/util/Map;, "Ljava/util/Map<Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;[J>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_1

    .line 262
    return-object p4

    .line 225
    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox;

    .line 226
    .local v10, "sbgp":Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox;
    const/4 v8, 0x0

    .line 227
    .local v8, "sampleNum":I
    invoke-virtual {v10}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox;->getEntries()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;

    .line 228
    .local v2, "entry":Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;->getGroupDescriptionIndex()I

    move-result v13

    if-lez v13, :cond_9

    .line 229
    const/4 v4, 0x0

    .line 230
    .local v4, "groupEntry":Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;->getGroupDescriptionIndex()I

    move-result v13

    const v14, 0xffff

    if-le v13, v14, :cond_5

    .line 231
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_4

    .line 243
    :cond_3
    sget-boolean v13, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->$assertionsDisabled:Z

    if-nez v13, :cond_7

    if-nez v4, :cond_7

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 231
    :cond_4
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;

    .line 232
    .local v6, "localSgdb":Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;
    invoke-virtual {v6}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->getGroupingType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox;->getGroupingType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 233
    invoke-virtual {v6}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->getGroupEntries()Ljava/util/List;

    move-result-object v14

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;->getGroupDescriptionIndex()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    const v16, 0xffff

    and-int v15, v15, v16

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "groupEntry":Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;
    check-cast v4, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;

    .restart local v4    # "groupEntry":Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;
    goto :goto_1

    .line 237
    .end local v6    # "localSgdb":Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;
    :cond_5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_6
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;

    .line 238
    .local v3, "globalSgdb":Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->getGroupingType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox;->getGroupingType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 239
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->getGroupEntries()Ljava/util/List;

    move-result-object v14

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;->getGroupDescriptionIndex()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "groupEntry":Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;
    check-cast v4, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;

    .restart local v4    # "groupEntry":Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;
    goto :goto_2

    .line 244
    .end local v3    # "globalSgdb":Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;
    :cond_7
    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [J

    .line 245
    .local v9, "samples":[J
    if-nez v9, :cond_8

    .line 246
    const/4 v13, 0x0

    new-array v9, v13, [J

    .line 249
    :cond_8
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;->getSampleCount()J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v13

    array-length v14, v9

    add-int/2addr v13, v14

    new-array v7, v13, [J

    .line 250
    .local v7, "nuSamples":[J
    const/4 v13, 0x0

    const/4 v14, 0x0

    array-length v15, v9

    invoke-static {v9, v13, v7, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    int-to-long v14, v5

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;->getSampleCount()J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-ltz v13, :cond_a

    .line 254
    move-object/from16 v0, p4

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .end local v4    # "groupEntry":Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;
    .end local v5    # "i":I
    .end local v7    # "nuSamples":[J
    .end local v9    # "samples":[J
    :cond_9
    int-to-long v14, v8

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;->getSampleCount()J

    move-result-wide v16

    add-long v14, v14, v16

    long-to-int v8, v14

    goto/16 :goto_0

    .line 252
    .restart local v4    # "groupEntry":Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;
    .restart local v5    # "i":I
    .restart local v7    # "nuSamples":[J
    .restart local v9    # "samples":[J
    :cond_a
    array-length v13, v9

    add-int/2addr v13, v5

    int-to-long v14, v8

    add-long v14, v14, p5

    int-to-long v0, v5

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    aput-wide v14, v7, v13

    .line 251
    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackBox:Lcom/coremedia/iso/boxes/TrackBox;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TrackBox;->getParent()Lcom/coremedia/iso/boxes/Container;

    move-result-object v0

    .line 267
    .local v0, "c":Lcom/coremedia/iso/boxes/Container;
    instance-of v2, v0, Lcom/googlecode/mp4parser/BasicContainer;

    if-eqz v2, :cond_0

    .line 268
    check-cast v0, Lcom/googlecode/mp4parser/BasicContainer;

    .end local v0    # "c":Lcom/coremedia/iso/boxes/Container;
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/BasicContainer;->close()V

    .line 270
    :cond_0
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->fragments:[Lcom/coremedia/iso/IsoFile;

    if-eqz v2, :cond_1

    .line 271
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->fragments:[Lcom/coremedia/iso/IsoFile;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_2

    .line 277
    :cond_1
    return-void

    .line 271
    :cond_2
    aget-object v1, v3, v2

    .line 272
    .local v1, "fragment":Lcom/coremedia/iso/IsoFile;
    invoke-virtual {v1}, Lcom/coremedia/iso/IsoFile;->close()V

    .line 271
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
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
    .line 292
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

    return-object v0
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->handler:Ljava/lang/String;

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
    .line 304
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->sampleDependencies:Ljava/util/List;

    return-object v0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    return-object v0
.end method

.method public declared-synchronized getSampleDurations()[J
    .locals 1

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->decodingTimes:[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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
    .line 280
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->samples:Ljava/util/List;

    return-object v0
.end method

.method public getSubsampleInformationBox()Lcom/coremedia/iso/boxes/SubSampleInformationBox;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->subSampleInformationBox:Lcom/coremedia/iso/boxes/SubSampleInformationBox;

    return-object v0
.end method

.method public getSyncSamples()[J
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->syncSamples:[J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->syncSamples:[J

    array-length v0, v0

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->samples:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 297
    :cond_0
    const/4 v0, 0x0

    .line 299
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->syncSamples:[J

    goto :goto_0
.end method

.method public getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    return-object v0
.end method
