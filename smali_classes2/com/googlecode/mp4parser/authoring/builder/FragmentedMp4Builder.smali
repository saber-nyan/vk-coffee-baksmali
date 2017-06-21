.class public Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;
.super Ljava/lang/Object;
.source "FragmentedMp4Builder.java"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/builder/Mp4Builder;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field protected fragmenter:Lcom/googlecode/mp4parser/authoring/builder/Fragmenter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->$assertionsDisabled:Z

    .line 52
    const-class v0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->LOG:Ljava/util/logging/Logger;

    return-void

    .line 51
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method private getTrackDuration(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)J
    .locals 4
    .param p1, "movie"    # Lcom/googlecode/mp4parser/authoring/Movie;
    .param p2, "track"    # Lcom/googlecode/mp4parser/authoring/Track;

    .prologue
    .line 776
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTimescale()J

    move-result-wide v2

    mul-long/2addr v0, v2

    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v2

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public build(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Container;
    .locals 6
    .param p1, "movie"    # Lcom/googlecode/mp4parser/authoring/Movie;

    .prologue
    .line 195
    sget-object v2, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->LOG:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Creating movie "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 196
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->fragmenter:Lcom/googlecode/mp4parser/authoring/builder/Fragmenter;

    if-nez v2, :cond_0

    .line 197
    new-instance v2, Lcom/googlecode/mp4parser/authoring/builder/BetterFragmenter;

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-direct {v2, v4, v5}, Lcom/googlecode/mp4parser/authoring/builder/BetterFragmenter;-><init>(D)V

    iput-object v2, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->fragmenter:Lcom/googlecode/mp4parser/authoring/builder/Fragmenter;

    .line 199
    :cond_0
    new-instance v1, Lcom/googlecode/mp4parser/BasicContainer;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/BasicContainer;-><init>()V

    .line 202
    .local v1, "isoFile":Lcom/googlecode/mp4parser/BasicContainer;
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createFtyp(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/BasicContainer;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 204
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createMoov(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/BasicContainer;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 206
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createMoofMdat(Lcom/googlecode/mp4parser/authoring/Movie;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 209
    invoke-virtual {p0, p1, v1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createMfra(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/coremedia/iso/boxes/Container;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/BasicContainer;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 211
    return-object v1

    .line 206
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    .line 207
    .local v0, "box":Lcom/coremedia/iso/boxes/Box;
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/BasicContainer;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_0
.end method

.method protected createDinf(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)Lcom/coremedia/iso/boxes/DataInformationBox;
    .locals 4
    .param p1, "movie"    # Lcom/googlecode/mp4parser/authoring/Movie;
    .param p2, "track"    # Lcom/googlecode/mp4parser/authoring/Track;

    .prologue
    .line 877
    new-instance v0, Lcom/coremedia/iso/boxes/DataInformationBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/DataInformationBox;-><init>()V

    .line 878
    .local v0, "dinf":Lcom/coremedia/iso/boxes/DataInformationBox;
    new-instance v1, Lcom/coremedia/iso/boxes/DataReferenceBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/DataReferenceBox;-><init>()V

    .line 879
    .local v1, "dref":Lcom/coremedia/iso/boxes/DataReferenceBox;
    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/DataInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 880
    new-instance v2, Lcom/coremedia/iso/boxes/DataEntryUrlBox;

    invoke-direct {v2}, Lcom/coremedia/iso/boxes/DataEntryUrlBox;-><init>()V

    .line 881
    .local v2, "url":Lcom/coremedia/iso/boxes/DataEntryUrlBox;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/coremedia/iso/boxes/DataEntryUrlBox;->setFlags(I)V

    .line 882
    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/DataReferenceBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 883
    return-object v0
.end method

.method protected createEdts(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;
    .locals 12
    .param p1, "track"    # Lcom/googlecode/mp4parser/authoring/Track;
    .param p2, "movie"    # Lcom/googlecode/mp4parser/authoring/Movie;

    .prologue
    .line 855
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getEdits()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getEdits()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 856
    new-instance v1, Lcom/coremedia/iso/boxes/EditListBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/EditListBox;-><init>()V

    .line 857
    .local v1, "elst":Lcom/coremedia/iso/boxes/EditListBox;
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/EditListBox;->setVersion(I)V

    .line 858
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 860
    .local v10, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/EditListBox$Entry;>;"
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getEdits()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 867
    invoke-virtual {v1, v10}, Lcom/coremedia/iso/boxes/EditListBox;->setEntries(Ljava/util/List;)V

    .line 868
    new-instance v9, Lcom/coremedia/iso/boxes/EditBox;

    invoke-direct {v9}, Lcom/coremedia/iso/boxes/EditBox;-><init>()V

    .line 869
    .local v9, "edts":Lcom/coremedia/iso/boxes/EditBox;
    invoke-virtual {v9, v1}, Lcom/coremedia/iso/boxes/EditBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 872
    .end local v1    # "elst":Lcom/coremedia/iso/boxes/EditListBox;
    .end local v9    # "edts":Lcom/coremedia/iso/boxes/EditBox;
    .end local v10    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/EditListBox$Entry;>;"
    :goto_1
    return-object v9

    .line 860
    .restart local v1    # "elst":Lcom/coremedia/iso/boxes/EditListBox;
    .restart local v10    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/EditListBox$Entry;>;"
    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/googlecode/mp4parser/authoring/Edit;

    .line 861
    .local v8, "edit":Lcom/googlecode/mp4parser/authoring/Edit;
    new-instance v0, Lcom/coremedia/iso/boxes/EditListBox$Entry;

    .line 862
    invoke-virtual {v8}, Lcom/googlecode/mp4parser/authoring/Edit;->getSegmentDuration()D

    move-result-wide v2

    invoke-virtual {p2}, Lcom/googlecode/mp4parser/authoring/Movie;->getTimescale()J

    move-result-wide v4

    long-to-double v4, v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 863
    invoke-virtual {v8}, Lcom/googlecode/mp4parser/authoring/Edit;->getMediaTime()J

    move-result-wide v4

    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v6

    mul-long/2addr v4, v6

    invoke-virtual {v8}, Lcom/googlecode/mp4parser/authoring/Edit;->getTimeScale()J

    move-result-wide v6

    div-long/2addr v4, v6

    .line 864
    invoke-virtual {v8}, Lcom/googlecode/mp4parser/authoring/Edit;->getMediaRate()D

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lcom/coremedia/iso/boxes/EditListBox$Entry;-><init>(Lcom/coremedia/iso/boxes/EditListBox;JJD)V

    .line 861
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 872
    .end local v1    # "elst":Lcom/coremedia/iso/boxes/EditListBox;
    .end local v8    # "edit":Lcom/googlecode/mp4parser/authoring/Edit;
    .end local v10    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/EditListBox$Entry;>;"
    :cond_1
    const/4 v9, 0x0

    goto :goto_1
.end method

.method protected createFragment(Ljava/util/List;Lcom/googlecode/mp4parser/authoring/Track;JJI)I
    .locals 9
    .param p2, "track"    # Lcom/googlecode/mp4parser/authoring/Track;
    .param p3, "startSample"    # J
    .param p5, "endSample"    # J
    .param p7, "sequence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/Box;",
            ">;",
            "Lcom/googlecode/mp4parser/authoring/Track;",
            "JJI)I"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, "moofsMdats":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    cmp-long v0, p3, p5

    if-eqz v0, :cond_0

    move-object v1, p0

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p2

    move/from16 v7, p7

    .line 185
    invoke-virtual/range {v1 .. v7}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createMoof(JJLcom/googlecode/mp4parser/authoring/Track;I)Lcom/coremedia/iso/boxes/Box;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, p0

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p2

    move/from16 v7, p7

    .line 186
    invoke-virtual/range {v1 .. v7}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createMdat(JJLcom/googlecode/mp4parser/authoring/Track;I)Lcom/coremedia/iso/boxes/Box;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_0
    return p7
.end method

.method public createFtyp(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;
    .locals 6
    .param p1, "movie"    # Lcom/googlecode/mp4parser/authoring/Movie;

    .prologue
    .line 64
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 65
    .local v0, "minorBrands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "mp42"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    const-string/jumbo v1, "iso6"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    const-string/jumbo v1, "avc1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    const-string/jumbo v1, "isom"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v1, Lcom/coremedia/iso/boxes/FileTypeBox;

    const-string/jumbo v2, "iso6"

    const-wide/16 v4, 0x1

    invoke-direct {v1, v2, v4, v5, v0}, Lcom/coremedia/iso/boxes/FileTypeBox;-><init>(Ljava/lang/String;JLjava/util/List;)V

    return-object v1
.end method

.method protected createMdat(JJLcom/googlecode/mp4parser/authoring/Track;I)Lcom/coremedia/iso/boxes/Box;
    .locals 7
    .param p1, "startSample"    # J
    .param p3, "endSample"    # J
    .param p5, "track"    # Lcom/googlecode/mp4parser/authoring/Track;
    .param p6, "i"    # I

    .prologue
    .line 266
    new-instance v0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1Mdat;-><init>(Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;JJLcom/googlecode/mp4parser/authoring/Track;)V

    return-object v0
.end method

.method protected createMdhd(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)Lcom/coremedia/iso/boxes/Box;
    .locals 4
    .param p1, "movie"    # Lcom/googlecode/mp4parser/authoring/Movie;
    .param p2, "track"    # Lcom/googlecode/mp4parser/authoring/Track;

    .prologue
    .line 780
    new-instance v0, Lcom/coremedia/iso/boxes/MediaHeaderBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/MediaHeaderBox;-><init>()V

    .line 781
    .local v0, "mdhd":Lcom/coremedia/iso/boxes/MediaHeaderBox;
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getCreationTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setCreationTime(Ljava/util/Date;)V

    .line 782
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setModificationTime(Ljava/util/Date;)V

    .line 783
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setDuration(J)V

    .line 784
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setTimescale(J)V

    .line 785
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setLanguage(Ljava/lang/String;)V

    .line 786
    return-object v0
.end method

.method protected createMdia(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;
    .locals 2
    .param p1, "track"    # Lcom/googlecode/mp4parser/authoring/Track;
    .param p2, "movie"    # Lcom/googlecode/mp4parser/authoring/Movie;

    .prologue
    .line 831
    new-instance v0, Lcom/coremedia/iso/boxes/MediaBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/MediaBox;-><init>()V

    .line 832
    .local v0, "mdia":Lcom/coremedia/iso/boxes/MediaBox;
    invoke-virtual {p0, p2, p1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createMdhd(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 835
    invoke-virtual {p0, p1, p2}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createMdiaHdlr(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 838
    invoke-virtual {p0, p1, p2}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createMinf(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 839
    return-object v0
.end method

.method protected createMdiaHdlr(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;
    .locals 2
    .param p1, "track"    # Lcom/googlecode/mp4parser/authoring/Track;
    .param p2, "movie"    # Lcom/googlecode/mp4parser/authoring/Movie;

    .prologue
    .line 825
    new-instance v0, Lcom/coremedia/iso/boxes/HandlerBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/HandlerBox;-><init>()V

    .line 826
    .local v0, "hdlr":Lcom/coremedia/iso/boxes/HandlerBox;
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/HandlerBox;->setHandlerType(Ljava/lang/String;)V

    .line 827
    return-object v0
.end method

.method protected createMfhd(JJLcom/googlecode/mp4parser/authoring/Track;ILcom/coremedia/iso/boxes/fragment/MovieFragmentBox;)V
    .locals 4
    .param p1, "startSample"    # J
    .param p3, "endSample"    # J
    .param p5, "track"    # Lcom/googlecode/mp4parser/authoring/Track;
    .param p6, "sequenceNumber"    # I
    .param p7, "parent"    # Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    .prologue
    .line 281
    new-instance v0, Lcom/coremedia/iso/boxes/fragment/MovieFragmentHeaderBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentHeaderBox;-><init>()V

    .line 282
    .local v0, "mfhd":Lcom/coremedia/iso/boxes/fragment/MovieFragmentHeaderBox;
    int-to-long v2, p6

    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentHeaderBox;->setSequenceNumber(J)V

    .line 283
    invoke-virtual {p7, v0}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 284
    return-void
.end method

.method protected createMfra(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/coremedia/iso/boxes/Container;)Lcom/coremedia/iso/boxes/Box;
    .locals 6
    .param p1, "movie"    # Lcom/googlecode/mp4parser/authoring/Movie;
    .param p2, "isoFile"    # Lcom/coremedia/iso/boxes/Container;

    .prologue
    .line 700
    new-instance v0, Lcom/coremedia/iso/boxes/fragment/MovieFragmentRandomAccessBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentRandomAccessBox;-><init>()V

    .line 701
    .local v0, "mfra":Lcom/coremedia/iso/boxes/fragment/MovieFragmentRandomAccessBox;
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 705
    new-instance v1, Lcom/coremedia/iso/boxes/fragment/MovieFragmentRandomAccessOffsetBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentRandomAccessOffsetBox;-><init>()V

    .line 706
    .local v1, "mfro":Lcom/coremedia/iso/boxes/fragment/MovieFragmentRandomAccessOffsetBox;
    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentRandomAccessBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 707
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentRandomAccessBox;->getSize()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentRandomAccessOffsetBox;->setMfraSize(J)V

    .line 708
    return-object v0

    .line 701
    .end local v1    # "mfro":Lcom/coremedia/iso/boxes/fragment/MovieFragmentRandomAccessOffsetBox;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/authoring/Track;

    .line 702
    .local v2, "track":Lcom/googlecode/mp4parser/authoring/Track;
    invoke-virtual {p0, v2, p2}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createTfra(Lcom/googlecode/mp4parser/authoring/Track;Lcom/coremedia/iso/boxes/Container;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentRandomAccessBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_0
.end method

.method protected createMinf(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;
    .locals 3
    .param p1, "track"    # Lcom/googlecode/mp4parser/authoring/Track;
    .param p2, "movie"    # Lcom/googlecode/mp4parser/authoring/Movie;

    .prologue
    .line 805
    new-instance v0, Lcom/coremedia/iso/boxes/MediaInformationBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/MediaInformationBox;-><init>()V

    .line 806
    .local v0, "minf":Lcom/coremedia/iso/boxes/MediaInformationBox;
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "vide"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 807
    new-instance v1, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 819
    :cond_0
    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createDinf(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)Lcom/coremedia/iso/boxes/DataInformationBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 820
    invoke-virtual {p0, p2, p1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createStbl(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 821
    return-object v0

    .line 808
    :cond_1
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "soun"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 809
    new-instance v1, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_0

    .line 810
    :cond_2
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 811
    new-instance v1, Lcom/coremedia/iso/boxes/NullMediaHeaderBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/NullMediaHeaderBox;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_0

    .line 812
    :cond_3
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "subt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 813
    new-instance v1, Lcom/coremedia/iso/boxes/SubtitleMediaHeaderBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/SubtitleMediaHeaderBox;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_0

    .line 814
    :cond_4
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "hint"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 815
    new-instance v1, Lcom/coremedia/iso/boxes/HintMediaHeaderBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/HintMediaHeaderBox;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_0

    .line 816
    :cond_5
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sbtl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 817
    new-instance v1, Lcom/coremedia/iso/boxes/NullMediaHeaderBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/NullMediaHeaderBox;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_0
.end method

.method protected createMoof(JJLcom/googlecode/mp4parser/authoring/Track;I)Lcom/coremedia/iso/boxes/Box;
    .locals 9
    .param p1, "startSample"    # J
    .param p3, "endSample"    # J
    .param p5, "track"    # Lcom/googlecode/mp4parser/authoring/Track;
    .param p6, "sequenceNumber"    # I

    .prologue
    .line 552
    new-instance v8, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    invoke-direct {v8}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;-><init>()V

    .local v8, "moof":Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move v7, p6

    .line 553
    invoke-virtual/range {v1 .. v8}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createMfhd(JJLcom/googlecode/mp4parser/authoring/Track;ILcom/coremedia/iso/boxes/fragment/MovieFragmentBox;)V

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move v7, p6

    .line 554
    invoke-virtual/range {v1 .. v8}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createTraf(JJLcom/googlecode/mp4parser/authoring/Track;ILcom/coremedia/iso/boxes/fragment/MovieFragmentBox;)V

    .line 556
    invoke-virtual {v8}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getTrackRunBoxes()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    .line 557
    .local v0, "firstTrun":Lcom/coremedia/iso/boxes/fragment/TrackRunBox;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setDataOffset(I)V

    .line 558
    const-wide/16 v2, 0x8

    invoke-virtual {v8}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setDataOffset(I)V

    .line 560
    return-object v8
.end method

.method protected createMoofMdat(Lcom/googlecode/mp4parser/authoring/Movie;)Ljava/util/List;
    .locals 30
    .param p1, "movie"    # Lcom/googlecode/mp4parser/authoring/Movie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/mp4parser/authoring/Movie;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/Box;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 112
    .local v6, "moofsMdats":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/Box;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 113
    .local v4, "intersectionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/googlecode/mp4parser/authoring/Track;[J>;"
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 115
    .local v24, "track2currentTime":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/googlecode/mp4parser/authoring/Track;Ljava/lang/Double;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-nez v26, :cond_0

    .line 122
    const/4 v12, 0x1

    .line 123
    .local v12, "sequence":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 177
    return-object v6

    .line 115
    .end local v12    # "sequence":I
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/googlecode/mp4parser/authoring/Track;

    .line 116
    .local v21, "track":Lcom/googlecode/mp4parser/authoring/Track;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->fragmenter:Lcom/googlecode/mp4parser/authoring/builder/Fragmenter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/googlecode/mp4parser/authoring/builder/Fragmenter;->sampleNumbers(Lcom/googlecode/mp4parser/authoring/Track;)[J

    move-result-object v13

    .line 117
    .local v13, "intersects":[J
    move-object/from16 v0, v21

    invoke-virtual {v4, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-wide/16 v26, 0x0

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 124
    .end local v13    # "intersects":[J
    .end local v21    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    .restart local v12    # "sequence":I
    :cond_1
    const/4 v7, 0x0

    .line 125
    .local v7, "earliestTrack":Lcom/googlecode/mp4parser/authoring/Track;
    const-wide v14, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 126
    .local v14, "earliestTime":D
    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_2
    :goto_2
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 132
    sget-boolean v5, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->$assertionsDisabled:Z

    if-nez v5, :cond_4

    if-nez v7, :cond_4

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 126
    :cond_3
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Map$Entry;

    .line 127
    .local v25, "trackEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/googlecode/mp4parser/authoring/Track;Ljava/lang/Double;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v28

    cmpg-double v5, v28, v14

    if-gez v5, :cond_2

    .line 128
    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    .line 129
    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "earliestTrack":Lcom/googlecode/mp4parser/authoring/Track;
    check-cast v7, Lcom/googlecode/mp4parser/authoring/Track;

    .restart local v7    # "earliestTrack":Lcom/googlecode/mp4parser/authoring/Track;
    goto :goto_2

    .line 134
    .end local v25    # "trackEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/googlecode/mp4parser/authoring/Track;Ljava/lang/Double;>;"
    :cond_4
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [J

    .line 135
    .local v19, "startSamples":[J
    const/4 v5, 0x0

    aget-wide v8, v19, v5

    .line 136
    .local v8, "startSample":J
    move-object/from16 v0, v19

    array-length v5, v0

    const/16 v26, 0x1

    move/from16 v0, v26

    if-le v5, v0, :cond_5

    const/4 v5, 0x1

    aget-wide v10, v19, v5

    .line 138
    .local v10, "endSample":J
    :goto_3
    invoke-interface {v7}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDurations()[J

    move-result-object v20

    .line 139
    .local v20, "times":[J
    invoke-interface {v7}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v22

    .line 140
    .local v22, "timscale":J
    move-wide/from16 v16, v8

    .local v16, "i":J
    :goto_4
    cmp-long v5, v16, v10

    if-ltz v5, :cond_6

    move-object/from16 v5, p0

    .line 143
    invoke-virtual/range {v5 .. v12}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createFragment(Ljava/util/List;Lcom/googlecode/mp4parser/authoring/Track;JJI)I

    .line 145
    move-object/from16 v0, v19

    array-length v5, v0

    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v5, v0, :cond_7

    .line 146
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 136
    .end local v10    # "endSample":J
    .end local v16    # "i":J
    .end local v20    # "times":[J
    .end local v22    # "timscale":J
    :cond_5
    invoke-interface {v7}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    int-to-long v10, v5

    goto :goto_3

    .line 141
    .restart local v10    # "endSample":J
    .restart local v16    # "i":J
    .restart local v20    # "times":[J
    .restart local v22    # "timscale":J
    :cond_6
    const-wide/16 v26, 0x1

    sub-long v26, v16, v26

    invoke-static/range {v26 .. v27}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v5

    aget-wide v26, v20, v5

    move-wide/from16 v0, v26

    long-to-double v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v28, v0

    div-double v26, v26, v28

    add-double v14, v14, v26

    .line 140
    const-wide/16 v26, 0x1

    add-long v16, v16, v26

    goto :goto_4

    .line 150
    :cond_7
    move-object/from16 v0, v19

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    new-array v0, v5, [J

    move-object/from16 v18, v0

    .line 151
    .local v18, "nuStartSamples":[J
    const/4 v5, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v5, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    move-object/from16 v0, v18

    invoke-virtual {v4, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5
.end method

.method protected createMoov(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;
    .locals 4
    .param p1, "movie"    # Lcom/googlecode/mp4parser/authoring/Movie;

    .prologue
    .line 598
    new-instance v0, Lcom/coremedia/iso/boxes/MovieBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/MovieBox;-><init>()V

    .line 600
    .local v0, "movieBox":Lcom/coremedia/iso/boxes/MovieBox;
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createMvhd(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/MovieBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 601
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 604
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createMvex(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/MovieBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 607
    return-object v0

    .line 601
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/googlecode/mp4parser/authoring/Track;

    .line 602
    .local v1, "track":Lcom/googlecode/mp4parser/authoring/Track;
    invoke-virtual {p0, v1, p1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createTrak(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/coremedia/iso/boxes/MovieBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_0
.end method

.method protected createMvex(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;
    .locals 8
    .param p1, "movie"    # Lcom/googlecode/mp4parser/authoring/Movie;

    .prologue
    .line 738
    new-instance v1, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;-><init>()V

    .line 739
    .local v1, "mvex":Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;
    new-instance v0, Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;-><init>()V

    .line 740
    .local v0, "mved":Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;->setVersion(I)V

    .line 741
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 747
    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 749
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 752
    return-object v1

    .line 741
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/authoring/Track;

    .line 742
    .local v2, "track":Lcom/googlecode/mp4parser/authoring/Track;
    invoke-direct {p0, p1, v2}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->getTrackDuration(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)J

    move-result-wide v4

    .line 743
    .local v4, "trackDuration":J
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;->getFragmentDuration()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-gez v6, :cond_0

    .line 744
    invoke-virtual {v0, v4, v5}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;->setFragmentDuration(J)V

    goto :goto_0

    .line 749
    .end local v2    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    .end local v4    # "trackDuration":J
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/authoring/Track;

    .line 750
    .restart local v2    # "track":Lcom/googlecode/mp4parser/authoring/Track;
    invoke-virtual {p0, p1, v2}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createTrex(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_1
.end method

.method protected createMvhd(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;
    .locals 10
    .param p1, "movie"    # Lcom/googlecode/mp4parser/authoring/Movie;

    .prologue
    .line 570
    new-instance v2, Lcom/coremedia/iso/boxes/MovieHeaderBox;

    invoke-direct {v2}, Lcom/coremedia/iso/boxes/MovieHeaderBox;-><init>()V

    .line 571
    .local v2, "mvhd":Lcom/coremedia/iso/boxes/MovieHeaderBox;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setVersion(I)V

    .line 572
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->getDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setCreationTime(Ljava/util/Date;)V

    .line 573
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->getDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setModificationTime(Ljava/util/Date;)V

    .line 574
    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setDuration(J)V

    .line 575
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTimescale()J

    move-result-wide v0

    .line 576
    .local v0, "movieTimeScale":J
    invoke-virtual {v2, v0, v1}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setTimescale(J)V

    .line 578
    const-wide/16 v4, 0x0

    .line 579
    .local v4, "nextTrackId":J
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 582
    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setNextTrackId(J)V

    .line 583
    return-object v2

    .line 579
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/googlecode/mp4parser/authoring/Track;

    .line 580
    .local v3, "track":Lcom/googlecode/mp4parser/authoring/Track;
    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTrackId()J

    move-result-wide v8

    cmp-long v7, v4, v8

    if-gez v7, :cond_1

    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTrackId()J

    move-result-wide v4

    :cond_1
    goto :goto_0
.end method

.method protected createSaio(JJLcom/googlecode/mp4parser/authoring/tracks/CencEncryptedTrack;ILcom/coremedia/iso/boxes/fragment/TrackFragmentBox;)V
    .locals 8
    .param p1, "startSample"    # J
    .param p3, "endSample"    # J
    .param p5, "track"    # Lcom/googlecode/mp4parser/authoring/tracks/CencEncryptedTrack;
    .param p6, "sequenceNumber"    # I
    .param p7, "parent"    # Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    .prologue
    .line 351
    invoke-interface {p5}, Lcom/googlecode/mp4parser/authoring/tracks/CencEncryptedTrack;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v5

    const-string/jumbo v6, "enc.[0]/sinf[0]/schm[0]"

    invoke-static {v5, v6}, Lcom/googlecode/mp4parser/util/Path;->getPath(Lcom/googlecode/mp4parser/AbstractContainerBox;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v5

    check-cast v5, Lcom/coremedia/iso/boxes/SchemeTypeBox;

    .line 353
    new-instance v4, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;

    invoke-direct {v4}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;-><init>()V

    .line 354
    .local v4, "saio":Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;
    invoke-virtual {p7, v4}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 355
    sget-boolean v5, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    const-class v5, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    invoke-virtual {p7, v5}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    const-string/jumbo v6, "Don\'t know how to deal with multiple Track Run Boxes when encrypting"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 356
    :cond_0
    const-string/jumbo v5, "cenc"

    invoke-virtual {v4, v5}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;->setAuxInfoType(Ljava/lang/String;)V

    .line 357
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;->setFlags(I)V

    .line 358
    const-wide/16 v2, 0x0

    .line 359
    .local v2, "offset":J
    const-wide/16 v6, 0x8

    add-long/2addr v2, v6

    .line 360
    invoke-virtual {p7}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getBoxes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 368
    :goto_1
    invoke-virtual {p7}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getParent()Lcom/coremedia/iso/boxes/Container;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    .line 369
    .local v1, "moof":Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;
    const-wide/16 v6, 0x10

    add-long/2addr v2, v6

    .line 370
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getBoxes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 379
    :cond_1
    const/4 v5, 0x1

    new-array v5, v5, [J

    const/4 v6, 0x0

    aput-wide v2, v5, v6

    invoke-virtual {v4, v5}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationOffsetsBox;->setOffsets([J)V

    .line 381
    return-void

    .line 360
    .end local v1    # "moof":Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    .line 361
    .local v0, "box":Lcom/coremedia/iso/boxes/Box;
    instance-of v6, v0, Lcom/googlecode/mp4parser/boxes/dece/SampleEncryptionBox;

    if-eqz v6, :cond_3

    .line 362
    check-cast v0, Lcom/googlecode/mp4parser/boxes/dece/SampleEncryptionBox;

    .end local v0    # "box":Lcom/coremedia/iso/boxes/Box;
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/dece/SampleEncryptionBox;->getOffsetToFirstIV()I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v2, v6

    .line 363
    goto :goto_1

    .line 365
    .restart local v0    # "box":Lcom/coremedia/iso/boxes/Box;
    :cond_3
    invoke-interface {v0}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v6

    add-long/2addr v2, v6

    goto :goto_0

    .line 370
    .end local v0    # "box":Lcom/coremedia/iso/boxes/Box;
    .restart local v1    # "moof":Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    .line 371
    .restart local v0    # "box":Lcom/coremedia/iso/boxes/Box;
    if-eq v0, p7, :cond_1

    .line 374
    invoke-interface {v0}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v6

    add-long/2addr v2, v6

    goto :goto_2
.end method

.method protected createSaiz(JJLcom/googlecode/mp4parser/authoring/tracks/CencEncryptedTrack;ILcom/coremedia/iso/boxes/fragment/TrackFragmentBox;)V
    .locals 13
    .param p1, "startSample"    # J
    .param p3, "endSample"    # J
    .param p5, "track"    # Lcom/googlecode/mp4parser/authoring/tracks/CencEncryptedTrack;
    .param p6, "sequenceNumber"    # I
    .param p7, "parent"    # Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    .prologue
    .line 384
    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/tracks/CencEncryptedTrack;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v5

    .line 385
    .local v5, "sampleDescriptionBox":Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    const-string/jumbo v8, "enc.[0]/sinf[0]/schm[0]"

    invoke-static {v5, v8}, Lcom/googlecode/mp4parser/util/Path;->getPath(Lcom/googlecode/mp4parser/AbstractContainerBox;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v8

    check-cast v8, Lcom/coremedia/iso/boxes/SchemeTypeBox;

    .line 386
    const-string/jumbo v8, "enc.[0]/sinf[0]/schi[0]/tenc[0]"

    invoke-static {v5, v8}, Lcom/googlecode/mp4parser/util/Path;->getPath(Lcom/googlecode/mp4parser/AbstractContainerBox;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v7

    check-cast v7, Lcom/mp4parser/iso23001/part7/TrackEncryptionBox;

    .line 388
    .local v7, "tenc":Lcom/mp4parser/iso23001/part7/TrackEncryptionBox;
    new-instance v4, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;

    invoke-direct {v4}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;-><init>()V

    .line 389
    .local v4, "saiz":Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;
    const-string/jumbo v8, "cenc"

    invoke-virtual {v4, v8}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;->setAuxInfoType(Ljava/lang/String;)V

    .line 390
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;->setFlags(I)V

    .line 391
    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/tracks/CencEncryptedTrack;->hasSubSampleEncryption()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 392
    sub-long v8, p3, p1

    invoke-static {v8, v9}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v8

    new-array v6, v8, [S

    .line 394
    .local v6, "sizes":[S
    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/tracks/CencEncryptedTrack;->getSampleEncryptionEntries()Ljava/util/List;

    move-result-object v8

    const-wide/16 v10, 0x1

    sub-long v10, p1, v10

    invoke-static {v10, v11}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v9

    const-wide/16 v10, 0x1

    sub-long v10, p3, v10

    invoke-static {v10, v11}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v10

    invoke-interface {v8, v9, v10}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 395
    .local v2, "auxs":Ljava/util/List;, "Ljava/util/List<Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, v6

    if-lt v3, v8, :cond_0

    .line 398
    invoke-virtual {v4, v6}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;->setSampleInfoSizes([S)V

    .line 403
    .end local v2    # "auxs":Ljava/util/List;, "Ljava/util/List<Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;>;"
    .end local v3    # "i":I
    .end local v6    # "sizes":[S
    :goto_1
    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 404
    return-void

    .line 396
    .restart local v2    # "auxs":Ljava/util/List;, "Ljava/util/List<Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;>;"
    .restart local v3    # "i":I
    .restart local v6    # "sizes":[S
    :cond_0
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;

    invoke-virtual {v8}, Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;->getSize()I

    move-result v8

    int-to-short v8, v8

    aput-short v8, v6, v3

    .line 395
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 400
    .end local v2    # "auxs":Ljava/util/List;, "Ljava/util/List<Lcom/mp4parser/iso23001/part7/CencSampleAuxiliaryDataFormat;>;"
    .end local v3    # "i":I
    .end local v6    # "sizes":[S
    :cond_1
    invoke-virtual {v7}, Lcom/mp4parser/iso23001/part7/TrackEncryptionBox;->getDefaultIvSize()I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;->setDefaultSampleInfoSize(I)V

    .line 401
    sub-long v8, p3, p1

    invoke-static {v8, v9}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/mp4parser/iso14496/part12/SampleAuxiliaryInformationSizesBox;->setSampleCount(I)V

    goto :goto_1
.end method

.method protected createSenc(JJLcom/googlecode/mp4parser/authoring/tracks/CencEncryptedTrack;ILcom/coremedia/iso/boxes/fragment/TrackFragmentBox;)V
    .locals 7
    .param p1, "startSample"    # J
    .param p3, "endSample"    # J
    .param p5, "track"    # Lcom/googlecode/mp4parser/authoring/tracks/CencEncryptedTrack;
    .param p6, "sequenceNumber"    # I
    .param p7, "parent"    # Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    .prologue
    const-wide/16 v4, 0x1

    .line 344
    new-instance v0, Lcom/googlecode/mp4parser/boxes/dece/SampleEncryptionBox;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/boxes/dece/SampleEncryptionBox;-><init>()V

    .line 345
    .local v0, "senc":Lcom/googlecode/mp4parser/boxes/dece/SampleEncryptionBox;
    invoke-interface {p5}, Lcom/googlecode/mp4parser/authoring/tracks/CencEncryptedTrack;->hasSubSampleEncryption()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/boxes/dece/SampleEncryptionBox;->setSubSampleEncryption(Z)V

    .line 346
    invoke-interface {p5}, Lcom/googlecode/mp4parser/authoring/tracks/CencEncryptedTrack;->getSampleEncryptionEntries()Ljava/util/List;

    move-result-object v1

    sub-long v2, p1, v4

    invoke-static {v2, v3}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v2

    sub-long v4, p3, v4

    invoke-static {v4, v5}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/boxes/dece/SampleEncryptionBox;->setEntries(Ljava/util/List;)V

    .line 347
    invoke-virtual {p7, v0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 348
    return-void
.end method

.method protected createStbl(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)Lcom/coremedia/iso/boxes/Box;
    .locals 2
    .param p1, "movie"    # Lcom/googlecode/mp4parser/authoring/Movie;
    .param p2, "track"    # Lcom/googlecode/mp4parser/authoring/Track;

    .prologue
    .line 790
    new-instance v0, Lcom/coremedia/iso/boxes/SampleTableBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/SampleTableBox;-><init>()V

    .line 792
    .local v0, "stbl":Lcom/coremedia/iso/boxes/SampleTableBox;
    invoke-virtual {p0, p2, v0}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createStsd(Lcom/googlecode/mp4parser/authoring/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V

    .line 793
    new-instance v1, Lcom/coremedia/iso/boxes/TimeToSampleBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/TimeToSampleBox;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 794
    new-instance v1, Lcom/coremedia/iso/boxes/SampleToChunkBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/SampleToChunkBox;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 795
    new-instance v1, Lcom/coremedia/iso/boxes/SampleSizeBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/SampleSizeBox;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 796
    new-instance v1, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 797
    return-object v0
.end method

.method protected createStsd(Lcom/googlecode/mp4parser/authoring/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V
    .locals 1
    .param p1, "track"    # Lcom/googlecode/mp4parser/authoring/Track;
    .param p2, "stbl"    # Lcom/coremedia/iso/boxes/SampleTableBox;

    .prologue
    .line 801
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 802
    return-void
.end method

.method protected createTfdt(JLcom/googlecode/mp4parser/authoring/Track;Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;)V
    .locals 9
    .param p1, "startSample"    # J
    .param p3, "track"    # Lcom/googlecode/mp4parser/authoring/Track;
    .param p4, "parent"    # Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    .prologue
    .line 441
    new-instance v1, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBaseMediaDecodeTimeBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBaseMediaDecodeTimeBox;-><init>()V

    .line 442
    .local v1, "tfdt":Lcom/coremedia/iso/boxes/fragment/TrackFragmentBaseMediaDecodeTimeBox;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBaseMediaDecodeTimeBox;->setVersion(I)V

    .line 443
    const-wide/16 v2, 0x0

    .line 444
    .local v2, "startTime":J
    invoke-interface {p3}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDurations()[J

    move-result-object v4

    .line 445
    .local v4, "times":[J
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    int-to-long v6, v0

    cmp-long v5, v6, p1

    if-ltz v5, :cond_0

    .line 448
    invoke-virtual {v1, v2, v3}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBaseMediaDecodeTimeBox;->setBaseMediaDecodeTime(J)V

    .line 449
    invoke-virtual {p4, v1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 450
    return-void

    .line 446
    :cond_0
    add-int/lit8 v5, v0, -0x1

    aget-wide v6, v4, v5

    add-long/2addr v2, v6

    .line 445
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected createTfhd(JJLcom/googlecode/mp4parser/authoring/Track;ILcom/coremedia/iso/boxes/fragment/TrackFragmentBox;)V
    .locals 4
    .param p1, "startSample"    # J
    .param p3, "endSample"    # J
    .param p5, "track"    # Lcom/googlecode/mp4parser/authoring/Track;
    .param p6, "sequenceNumber"    # I
    .param p7, "parent"    # Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    .prologue
    .line 270
    new-instance v1, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;-><init>()V

    .line 271
    .local v1, "tfhd":Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;
    new-instance v0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;-><init>()V

    .line 273
    .local v0, "sf":Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->setDefaultSampleFlags(Lcom/coremedia/iso/boxes/fragment/SampleFlags;)V

    .line 274
    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->setBaseDataOffset(J)V

    .line 275
    invoke-interface {p5}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTrackId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->setTrackId(J)V

    .line 276
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->setDefaultBaseIsMoof(Z)V

    .line 277
    invoke-virtual {p7, v1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 278
    return-void
.end method

.method protected createTfra(Lcom/googlecode/mp4parser/authoring/Track;Lcom/coremedia/iso/boxes/Container;)Lcom/coremedia/iso/boxes/Box;
    .locals 30
    .param p1, "track"    # Lcom/googlecode/mp4parser/authoring/Track;
    .param p2, "isoFile"    # Lcom/coremedia/iso/boxes/Container;

    .prologue
    .line 620
    new-instance v21, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;

    invoke-direct/range {v21 .. v21}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;-><init>()V

    .line 621
    .local v21, "tfra":Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;
    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->setVersion(I)V

    .line 622
    new-instance v18, Ljava/util/LinkedList;

    invoke-direct/range {v18 .. v18}, Ljava/util/LinkedList;-><init>()V

    .line 624
    .local v18, "offset2timeEntries":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;>;"
    const/16 v24, 0x0

    .line 625
    .local v24, "trex":Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;
    const-string/jumbo v3, "moov/mvex/trex"

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/googlecode/mp4parser/util/Path;->getPaths(Lcom/coremedia/iso/boxes/Container;Ljava/lang/String;)Ljava/util/List;

    move-result-object v25

    .line 626
    .local v25, "trexs":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 632
    const-wide/16 v6, 0x0

    .line 633
    .local v6, "offset":J
    const-wide/16 v4, 0x0

    .line 635
    .local v4, "duration":J
    invoke-interface/range {p2 .. p2}, Lcom/coremedia/iso/boxes/Container;->getBoxes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_1
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 685
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->setEntries(Ljava/util/List;)V

    .line 686
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTrackId()J

    move-result-wide v8

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v9}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;->setTrackId(J)V

    .line 687
    return-object v21

    .line 626
    .end local v4    # "duration":J
    .end local v6    # "offset":J
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;

    .line 627
    .local v15, "innerTrex":Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;
    invoke-virtual {v15}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->getTrackId()J

    move-result-wide v8

    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTrackId()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 628
    move-object/from16 v24, v15

    goto :goto_0

    .line 635
    .end local v15    # "innerTrex":Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;
    .restart local v4    # "duration":J
    .restart local v6    # "offset":J
    :cond_2
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/Box;

    .line 636
    .local v2, "box":Lcom/coremedia/iso/boxes/Box;
    instance-of v3, v2, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    if-eqz v3, :cond_3

    move-object v3, v2

    .line 637
    check-cast v3, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    const-class v8, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    invoke-virtual {v3, v8}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v23

    .line 638
    .local v23, "trafs":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;>;"
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lt v14, v3, :cond_4

    .line 683
    .end local v14    # "i":I
    .end local v23    # "trafs":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;>;"
    :cond_3
    invoke-interface {v2}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v8

    add-long/2addr v6, v8

    goto :goto_1

    .line 639
    .restart local v14    # "i":I
    .restart local v23    # "trafs":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;>;"
    :cond_4
    move-object/from16 v0, v23

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    .line 641
    .local v22, "traf":Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;
    invoke-virtual/range {v22 .. v22}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getTrackId()J

    move-result-wide v8

    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTrackId()J

    move-result-wide v10

    cmp-long v3, v8, v10

    if-nez v3, :cond_5

    .line 644
    const-class v3, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v28

    .line 645
    .local v28, "truns":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackRunBox;>;"
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_3
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v16

    if-lt v0, v3, :cond_6

    .line 638
    .end local v16    # "j":I
    .end local v28    # "truns":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackRunBox;>;"
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 646
    .restart local v16    # "j":I
    .restart local v28    # "truns":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackRunBox;>;"
    :cond_6
    new-instance v19, Ljava/util/LinkedList;

    invoke-direct/range {v19 .. v19}, Ljava/util/LinkedList;-><init>()V

    .line 647
    .local v19, "offset2timeEntriesThisTrun":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;>;"
    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    .line 648
    .local v26, "trun":Lcom/coremedia/iso/boxes/fragment/TrackRunBox;
    const/16 v17, 0x0

    .local v17, "k":I
    :goto_4
    invoke-virtual/range {v26 .. v26}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getEntries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v17

    if-lt v0, v3, :cond_7

    .line 669
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual/range {v26 .. v26}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getEntries()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ne v3, v8, :cond_d

    invoke-virtual/range {v26 .. v26}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getEntries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_d

    .line 673
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    :goto_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 649
    :cond_7
    invoke-virtual/range {v26 .. v26}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getEntries()Ljava/util/List;

    move-result-object v3

    move/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;

    .line 651
    .local v27, "trunEntry":Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;
    if-nez v17, :cond_8

    invoke-virtual/range {v26 .. v26}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isFirstSampleFlagsPresent()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 652
    invoke-virtual/range {v26 .. v26}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFirstSampleFlags()Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    move-result-object v20

    .line 658
    .local v20, "sf":Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    :goto_6
    if-nez v20, :cond_a

    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v8, "vide"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 659
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "Cannot find SampleFlags for video track but it\'s required to build tfra"

    invoke-direct {v3, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 653
    .end local v20    # "sf":Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    :cond_8
    invoke-virtual/range {v26 .. v26}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleFlagsPresent()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 654
    invoke-virtual/range {v27 .. v27}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->getSampleFlags()Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    move-result-object v20

    .line 655
    .restart local v20    # "sf":Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    goto :goto_6

    .line 656
    .end local v20    # "sf":Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    :cond_9
    invoke-virtual/range {v24 .. v24}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->getDefaultSampleFlags()Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    move-result-object v20

    .restart local v20    # "sf":Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    goto :goto_6

    .line 661
    :cond_a
    if-eqz v20, :cond_b

    invoke-virtual/range {v20 .. v20}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->getSampleDependsOn()I

    move-result v3

    const/4 v8, 0x2

    if-ne v3, v8, :cond_c

    .line 662
    :cond_b
    new-instance v3, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;

    .line 665
    add-int/lit8 v8, v14, 0x1

    int-to-long v8, v8

    add-int/lit8 v10, v16, 0x1

    int-to-long v10, v10

    add-int/lit8 v12, v17, 0x1

    int-to-long v12, v12

    invoke-direct/range {v3 .. v13}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;-><init>(JJJJJ)V

    .line 662
    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    :cond_c
    invoke-virtual/range {v27 .. v27}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->getSampleDuration()J

    move-result-wide v8

    add-long/2addr v4, v8

    .line 648
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_4

    .line 675
    .end local v20    # "sf":Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    .end local v27    # "trunEntry":Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;
    :cond_d
    invoke-interface/range {v18 .. v19}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_5
.end method

.method protected createTkhd(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)Lcom/coremedia/iso/boxes/Box;
    .locals 4
    .param p1, "movie"    # Lcom/googlecode/mp4parser/authoring/Movie;
    .param p2, "track"    # Lcom/googlecode/mp4parser/authoring/Track;

    .prologue
    .line 756
    new-instance v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;-><init>()V

    .line 757
    .local v0, "tkhd":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setVersion(I)V

    .line 758
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setFlags(I)V

    .line 760
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getGroup()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setAlternateGroup(I)V

    .line 761
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getCreationTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setCreationTime(Ljava/util/Date;)V

    .line 765
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setDuration(J)V

    .line 766
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getHeight()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setHeight(D)V

    .line 767
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getWidth()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setWidth(D)V

    .line 768
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getLayer()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setLayer(I)V

    .line 769
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setModificationTime(Ljava/util/Date;)V

    .line 770
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTrackId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setTrackId(J)V

    .line 771
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getVolume()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setVolume(F)V

    .line 772
    return-object v0
.end method

.method protected createTraf(JJLcom/googlecode/mp4parser/authoring/Track;ILcom/coremedia/iso/boxes/fragment/MovieFragmentBox;)V
    .locals 25
    .param p1, "startSample"    # J
    .param p3, "endSample"    # J
    .param p5, "track"    # Lcom/googlecode/mp4parser/authoring/Track;
    .param p6, "sequenceNumber"    # I
    .param p7, "parent"    # Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    .prologue
    .line 287
    new-instance v12, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    invoke-direct {v12}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;-><init>()V

    .line 288
    .local v12, "traf":Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;
    move-object/from16 v0, p7

    invoke-virtual {v0, v12}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-object/from16 v10, p5

    move/from16 v11, p6

    .line 289
    invoke-virtual/range {v5 .. v12}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createTfhd(JJLcom/googlecode/mp4parser/authoring/Track;ILcom/coremedia/iso/boxes/fragment/TrackFragmentBox;)V

    .line 290
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3, v12}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createTfdt(JLcom/googlecode/mp4parser/authoring/Track;Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;)V

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-object/from16 v10, p5

    move/from16 v11, p6

    .line 291
    invoke-virtual/range {v5 .. v12}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createTrun(JJLcom/googlecode/mp4parser/authoring/Track;ILcom/coremedia/iso/boxes/fragment/TrackFragmentBox;)V

    .line 293
    move-object/from16 v0, p5

    instance-of v5, v0, Lcom/googlecode/mp4parser/authoring/tracks/CencEncryptedTrack;

    if-eqz v5, :cond_0

    move-object/from16 v10, p5

    .line 294
    check-cast v10, Lcom/googlecode/mp4parser/authoring/tracks/CencEncryptedTrack;

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move/from16 v11, p6

    invoke-virtual/range {v5 .. v12}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createSaiz(JJLcom/googlecode/mp4parser/authoring/tracks/CencEncryptedTrack;ILcom/coremedia/iso/boxes/fragment/TrackFragmentBox;)V

    move-object/from16 v10, p5

    .line 295
    check-cast v10, Lcom/googlecode/mp4parser/authoring/tracks/CencEncryptedTrack;

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move/from16 v11, p6

    invoke-virtual/range {v5 .. v12}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createSenc(JJLcom/googlecode/mp4parser/authoring/tracks/CencEncryptedTrack;ILcom/coremedia/iso/boxes/fragment/TrackFragmentBox;)V

    move-object/from16 v10, p5

    .line 296
    check-cast v10, Lcom/googlecode/mp4parser/authoring/tracks/CencEncryptedTrack;

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move/from16 v11, p6

    invoke-virtual/range {v5 .. v12}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createSaio(JJLcom/googlecode/mp4parser/authoring/tracks/CencEncryptedTrack;ILcom/coremedia/iso/boxes/fragment/TrackFragmentBox;)V

    .line 300
    :cond_0
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 301
    .local v14, "groupEntryFamilies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;>;>;"
    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleGroups()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 312
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 341
    return-void

    .line 301
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map$Entry;

    .line 302
    .local v21, "sg":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;[J>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;

    invoke-virtual {v5}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;->getType()Ljava/lang/String;

    move-result-object v24

    .line 303
    .local v24, "type":Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 304
    .local v4, "groupEntries":Ljava/util/List;, "Ljava/util/List<Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;>;"
    if-nez v4, :cond_2

    .line 305
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "groupEntries":Ljava/util/List;, "Ljava/util/List<Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .restart local v4    # "groupEntries":Ljava/util/List;, "Ljava/util/List<Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;>;"
    move-object/from16 v0, v24

    invoke-interface {v14, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :cond_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 312
    .end local v4    # "groupEntries":Ljava/util/List;, "Ljava/util/List<Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;>;"
    .end local v21    # "sg":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;[J>;"
    .end local v24    # "type":Ljava/lang/String;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map$Entry;

    .line 313
    .local v22, "sg":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;>;>;"
    new-instance v23, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;

    invoke-direct/range {v23 .. v23}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;-><init>()V

    .line 314
    .local v23, "sgpd":Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 315
    .restart local v24    # "type":Ljava/lang/String;
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->setGroupEntries(Ljava/util/List;)V

    .line 316
    invoke-virtual/range {v23 .. v24}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox;->setGroupingType(Ljava/lang/String;)V

    .line 317
    new-instance v20, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox;

    invoke-direct/range {v20 .. v20}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox;-><init>()V

    .line 318
    .local v20, "sbgp":Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox;
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox;->setGroupingType(Ljava/lang/String;)V

    .line 319
    const/16 v18, 0x0

    .line 320
    .local v18, "last":Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;
    const-wide/16 v8, 0x1

    sub-long v8, p1, v8

    invoke-static {v8, v9}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v15

    .local v15, "i":I
    :goto_2
    const-wide/16 v8, 0x1

    sub-long v8, p3, v8

    invoke-static {v8, v9}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v5

    if-lt v15, v5, :cond_4

    .line 336
    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 337
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_1

    .line 321
    :cond_4
    const/16 v16, 0x0

    .line 322
    .local v16, "index":I
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, v17

    if-lt v0, v5, :cond_6

    .line 329
    if-eqz v18, :cond_5

    invoke-virtual/range {v18 .. v18}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;->getGroupDescriptionIndex()I

    move-result v5

    move/from16 v0, v16

    if-eq v5, v0, :cond_8

    .line 330
    :cond_5
    new-instance v18, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;

    .end local v18    # "last":Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;
    const-wide/16 v8, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-direct {v0, v8, v9, v1}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;-><init>(JI)V

    .line 331
    .restart local v18    # "last":Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;
    invoke-virtual/range {v20 .. v20}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox;->getEntries()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 323
    :cond_6
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;

    .line 324
    .local v13, "groupEntry":Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;
    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleGroups()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [J

    .line 325
    .local v19, "sampleNums":[J
    int-to-long v8, v15

    move-object/from16 v0, v19

    invoke-static {v0, v8, v9}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v5

    if-ltz v5, :cond_7

    .line 326
    const v5, 0x10001

    add-int v16, v17, v5

    .line 322
    :cond_7
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 333
    .end local v13    # "groupEntry":Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/GroupEntry;
    .end local v19    # "sampleNums":[J
    :cond_8
    invoke-virtual/range {v18 .. v18}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;->getSampleCount()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleToGroupBox$Entry;->setSampleCount(J)V

    goto :goto_4
.end method

.method protected createTrak(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;
    .locals 5
    .param p1, "track"    # Lcom/googlecode/mp4parser/authoring/Track;
    .param p2, "movie"    # Lcom/googlecode/mp4parser/authoring/Movie;

    .prologue
    .line 843
    sget-object v2, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->LOG:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Creating Track "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 844
    new-instance v1, Lcom/coremedia/iso/boxes/TrackBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/TrackBox;-><init>()V

    .line 845
    .local v1, "trackBox":Lcom/coremedia/iso/boxes/TrackBox;
    invoke-virtual {p0, p2, p1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createTkhd(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/TrackBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 846
    invoke-virtual {p0, p1, p2}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createEdts(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v0

    .line 847
    .local v0, "edts":Lcom/coremedia/iso/boxes/Box;
    if-eqz v0, :cond_0

    .line 848
    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/TrackBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 850
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->createMdia(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/TrackBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 851
    return-object v1
.end method

.method protected createTrex(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)Lcom/coremedia/iso/boxes/Box;
    .locals 8
    .param p1, "movie"    # Lcom/googlecode/mp4parser/authoring/Movie;
    .param p2, "track"    # Lcom/googlecode/mp4parser/authoring/Track;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x2

    .line 712
    new-instance v1, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;-><init>()V

    .line 713
    .local v1, "trex":Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTrackId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->setTrackId(J)V

    .line 714
    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->setDefaultSampleDescriptionIndex(J)V

    .line 715
    invoke-virtual {v1, v6, v7}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->setDefaultSampleDuration(J)V

    .line 716
    invoke-virtual {v1, v6, v7}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->setDefaultSampleSize(J)V

    .line 717
    new-instance v0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;-><init>()V

    .line 718
    .local v0, "sf":Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    const-string/jumbo v2, "soun"

    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "subt"

    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 722
    :cond_0
    invoke-virtual {v0, v4}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSampleDependsOn(I)V

    .line 723
    invoke-virtual {v0, v4}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSampleIsDependedOn(I)V

    .line 725
    :cond_1
    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->setDefaultSampleFlags(Lcom/coremedia/iso/boxes/fragment/SampleFlags;)V

    .line 726
    return-object v1
.end method

.method protected createTrun(JJLcom/googlecode/mp4parser/authoring/Track;ILcom/coremedia/iso/boxes/fragment/TrackFragmentBox;)V
    .locals 25
    .param p1, "startSample"    # J
    .param p3, "endSample"    # J
    .param p5, "track"    # Lcom/googlecode/mp4parser/authoring/Track;
    .param p6, "sequenceNumber"    # I
    .param p7, "parent"    # Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    .prologue
    .line 462
    new-instance v17, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    invoke-direct/range {v17 .. v17}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;-><init>()V

    .line 463
    .local v17, "trun":Lcom/coremedia/iso/boxes/fragment/TrackRunBox;
    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setVersion(I)V

    .line 464
    invoke-virtual/range {p0 .. p6}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->getSampleSizes(JJLcom/googlecode/mp4parser/authoring/Track;I)[J

    move-result-object v15

    .line 466
    .local v15, "sampleSizes":[J
    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setSampleDurationPresent(Z)V

    .line 467
    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setSampleSizePresent(Z)V

    .line 468
    new-instance v10, Ljava/util/ArrayList;

    sub-long v18, p3, p1

    invoke-static/range {v18 .. v19}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v18

    move/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 471
    .local v10, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;>;"
    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/Track;->getCompositionTimeEntries()Ljava/util/List;

    move-result-object v4

    .line 472
    .local v4, "compositionTimeEntries":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;>;"
    const/4 v8, 0x0

    .line 474
    .local v8, "compositionTimeQueueIndex":I
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_2

    .line 475
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    move-object/from16 v5, v18

    .line 476
    .local v5, "compositionTimeQueue":[Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;
    :goto_0
    if-eqz v5, :cond_3

    aget-object v18, v5, v8

    invoke-virtual/range {v18 .. v18}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getCount()I

    move-result v18

    :goto_1
    move/from16 v0, v18

    int-to-long v6, v0

    .line 479
    .local v6, "compositionTimeEntriesLeft":J
    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-lez v18, :cond_4

    const/16 v18, 0x1

    :goto_2
    invoke-virtual/range {v17 .. v18}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setSampleCompositionTimeOffsetPresent(Z)V

    .line 482
    const-wide/16 v12, 0x1

    .local v12, "i":J
    :goto_3
    cmp-long v18, v12, p1

    if-ltz v18, :cond_5

    .line 492
    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v18

    if-eqz v18, :cond_0

    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 493
    :cond_0
    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v18

    if-eqz v18, :cond_1

    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-nez v18, :cond_7

    .line 492
    :cond_1
    const/4 v14, 0x0

    .line 495
    .local v14, "sampleFlagsRequired":Z
    :goto_4
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setSampleFlagsPresent(Z)V

    .line 497
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_5
    array-length v0, v15

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v12, v0, :cond_8

    .line 537
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setEntries(Ljava/util/List;)V

    .line 539
    move-object/from16 v0, p7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 540
    return-void

    .line 475
    .end local v5    # "compositionTimeQueue":[Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;
    .end local v6    # "compositionTimeEntriesLeft":J
    .end local v12    # "i":I
    .end local v14    # "sampleFlagsRequired":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 476
    .restart local v5    # "compositionTimeQueue":[Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;
    :cond_3
    const/16 v18, -0x1

    goto :goto_1

    .line 479
    .restart local v6    # "compositionTimeEntriesLeft":J
    :cond_4
    const/16 v18, 0x0

    goto :goto_2

    .line 483
    .local v12, "i":J
    :cond_5
    if-eqz v5, :cond_6

    .line 485
    const-wide/16 v18, 0x1

    sub-long v6, v6, v18

    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-nez v18, :cond_6

    array-length v0, v5

    move/from16 v18, v0

    sub-int v18, v18, v8

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    .line 486
    add-int/lit8 v8, v8, 0x1

    .line 487
    aget-object v18, v5, v8

    invoke-virtual/range {v18 .. v18}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getCount()I

    move-result v18

    move/from16 v0, v18

    int-to-long v6, v0

    .line 482
    :cond_6
    const-wide/16 v18, 0x1

    add-long v12, v12, v18

    goto :goto_3

    .line 492
    :cond_7
    const/4 v14, 0x1

    goto :goto_4

    .line 498
    .local v12, "i":I
    .restart local v14    # "sampleFlagsRequired":Z
    :cond_8
    new-instance v11, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;

    invoke-direct {v11}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;-><init>()V

    .line 499
    .local v11, "entry":Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;
    aget-wide v18, v15, v12

    move-wide/from16 v0, v18

    invoke-virtual {v11, v0, v1}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->setSampleSize(J)V

    .line 500
    if-eqz v14, :cond_b

    .line 502
    new-instance v16, Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    invoke-direct/range {v16 .. v16}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;-><init>()V

    .line 504
    .local v16, "sflags":Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v18

    if-eqz v18, :cond_9

    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_9

    .line 505
    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;

    .line 506
    .local v9, "e":Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;
    invoke-virtual {v9}, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->getSampleDependsOn()I

    move-result v18

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSampleDependsOn(I)V

    .line 507
    invoke-virtual {v9}, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->getSampleIsDependentOn()I

    move-result v18

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSampleIsDependedOn(I)V

    .line 508
    invoke-virtual {v9}, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;->getSampleHasRedundancy()I

    move-result v18

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSampleHasRedundancy(I)V

    .line 510
    .end local v9    # "e":Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;
    :cond_9
    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v18

    if-eqz v18, :cond_a

    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_a

    .line 512
    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v18

    int-to-long v0, v12

    move-wide/from16 v20, v0

    add-long v20, v20, p1

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v18

    if-ltz v18, :cond_d

    .line 513
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSampleIsDifferenceSample(Z)V

    .line 514
    const/16 v18, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSampleDependsOn(I)V

    .line 521
    :cond_a
    :goto_6
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->setSampleFlags(Lcom/coremedia/iso/boxes/fragment/SampleFlags;)V

    .line 525
    .end local v16    # "sflags":Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    :cond_b
    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDurations()[J

    move-result-object v18

    int-to-long v0, v12

    move-wide/from16 v20, v0

    add-long v20, v20, p1

    const-wide/16 v22, 0x1

    sub-long v20, v20, v22

    invoke-static/range {v20 .. v21}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v19

    aget-wide v18, v18, v19

    move-wide/from16 v0, v18

    invoke-virtual {v11, v0, v1}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->setSampleDuration(J)V

    .line 527
    if-eqz v5, :cond_c

    .line 528
    aget-object v18, v5, v8

    invoke-virtual/range {v18 .. v18}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getOffset()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->setSampleCompositionTimeOffset(I)V

    .line 529
    const-wide/16 v18, 0x1

    sub-long v6, v6, v18

    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-nez v18, :cond_c

    array-length v0, v5

    move/from16 v18, v0

    sub-int v18, v18, v8

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_c

    .line 530
    add-int/lit8 v8, v8, 0x1

    .line 531
    aget-object v18, v5, v8

    invoke-virtual/range {v18 .. v18}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getCount()I

    move-result v18

    move/from16 v0, v18

    int-to-long v6, v0

    .line 534
    :cond_c
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_5

    .line 516
    .restart local v16    # "sflags":Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    :cond_d
    const/16 v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSampleIsDifferenceSample(Z)V

    .line 517
    const/16 v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSampleDependsOn(I)V

    goto :goto_6
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method

.method public getFragmenter()Lcom/googlecode/mp4parser/authoring/builder/Fragmenter;
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->fragmenter:Lcom/googlecode/mp4parser/authoring/builder/Fragmenter;

    return-object v0
.end method

.method protected getSampleSizes(JJLcom/googlecode/mp4parser/authoring/Track;I)[J
    .locals 7
    .param p1, "startSample"    # J
    .param p3, "endSample"    # J
    .param p5, "track"    # Lcom/googlecode/mp4parser/authoring/Track;
    .param p6, "sequenceNumber"    # I

    .prologue
    .line 431
    invoke-virtual/range {p0 .. p5}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->getSamples(JJLcom/googlecode/mp4parser/authoring/Track;)Ljava/util/List;

    move-result-object v2

    .line 433
    .local v2, "samples":Ljava/util/List;, "Ljava/util/List<Lcom/googlecode/mp4parser/authoring/Sample;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v1, v3, [J

    .line 434
    .local v1, "sampleSizes":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_0

    .line 437
    return-object v1

    .line 435
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/googlecode/mp4parser/authoring/Sample;

    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/Sample;->getSize()J

    move-result-wide v4

    aput-wide v4, v1, v0

    .line 434
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected getSamples(JJLcom/googlecode/mp4parser/authoring/Track;)Ljava/util/List;
    .locals 3
    .param p1, "startSample"    # J
    .param p3, "endSample"    # J
    .param p5, "track"    # Lcom/googlecode/mp4parser/authoring/Track;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/googlecode/mp4parser/authoring/Track;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Sample;",
            ">;"
        }
    .end annotation

    .prologue
    .line 418
    invoke-interface {p5}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p3, p4}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setFragmenter(Lcom/googlecode/mp4parser/authoring/builder/Fragmenter;)V
    .locals 0
    .param p1, "fragmenter"    # Lcom/googlecode/mp4parser/authoring/builder/Fragmenter;

    .prologue
    .line 891
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->fragmenter:Lcom/googlecode/mp4parser/authoring/builder/Fragmenter;

    .line 892
    return-void
.end method

.method protected sortTracksInSequence(Ljava/util/List;ILjava/util/Map;)Ljava/util/List;
    .locals 2
    .param p2, "cycle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Track;",
            ">;I",
            "Ljava/util/Map",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Track;",
            "[J>;)",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Track;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/googlecode/mp4parser/authoring/Track;>;"
    .local p3, "intersectionMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/googlecode/mp4parser/authoring/Track;[J>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 82
    .end local p1    # "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/googlecode/mp4parser/authoring/Track;>;"
    .local v0, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/googlecode/mp4parser/authoring/Track;>;"
    new-instance v1, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1;

    invoke-direct {v1, p0, p3, p2}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder$1;-><init>(Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;Ljava/util/Map;I)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 106
    return-object v0
.end method
