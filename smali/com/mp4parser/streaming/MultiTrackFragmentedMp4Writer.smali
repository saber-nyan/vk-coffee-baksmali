.class public Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;
.super Ljava/lang/Object;
.source "MultiTrackFragmentedMp4Writer.java"

# interfaces
.implements Lcom/mp4parser/streaming/StreamingMp4Writer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer$ConsumeSamplesCallable;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field compositionTimeTrackExtension:Lcom/mp4parser/streaming/extensions/CompositionTimeTrackExtension;

.field creationTime:Ljava/util/Date;

.field private currentFragmentStartTime:J

.field private currentTime:J

.field fragmentBuffers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/mp4parser/streaming/StreamingTrack;",
            "Ljava/util/List",
            "<",
            "Lcom/mp4parser/streaming/StreamingSample;",
            ">;>;"
        }
    .end annotation
.end field

.field private final outputStream:Ljava/io/OutputStream;

.field sampleDependencyTrackExtension:Lcom/mp4parser/streaming/extensions/SampleFlagsTrackExtension;

.field private sequenceNumber:J

.field source:[Lcom/mp4parser/streaming/StreamingTrack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>([Lcom/mp4parser/streaming/StreamingTrack;Ljava/io/OutputStream;)V
    .locals 12
    .param p1, "source"    # [Lcom/mp4parser/streaming/StreamingTrack;
    .param p2, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, 0x1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->fragmentBuffers:Ljava/util/Map;

    .line 79
    iput-wide v6, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->sequenceNumber:J

    .line 80
    iput-wide v8, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->currentFragmentStartTime:J

    .line 81
    iput-wide v8, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->currentTime:J

    .line 84
    iput-object p1, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->source:[Lcom/mp4parser/streaming/StreamingTrack;

    .line 85
    iput-object p2, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->outputStream:Ljava/io/OutputStream;

    .line 86
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    iput-object v5, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->creationTime:Ljava/util/Date;

    .line 87
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 88
    .local v2, "trackIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    array-length v8, p1

    move v5, v4

    :goto_0
    if-lt v5, v8, :cond_0

    .line 97
    array-length v9, p1

    move v8, v4

    :goto_1
    if-lt v8, v9, :cond_3

    .line 105
    return-void

    .line 88
    :cond_0
    aget-object v0, p1, v5

    .line 89
    .local v0, "streamingTrack":Lcom/mp4parser/streaming/StreamingTrack;
    const-class v9, Lcom/mp4parser/streaming/extensions/TrackIdTrackExtension;

    invoke-interface {v0, v9}, Lcom/mp4parser/streaming/StreamingTrack;->getTrackExtension(Ljava/lang/Class;)Lcom/mp4parser/streaming/TrackExtension;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 90
    const-class v9, Lcom/mp4parser/streaming/extensions/TrackIdTrackExtension;

    invoke-interface {v0, v9}, Lcom/mp4parser/streaming/StreamingTrack;->getTrackExtension(Ljava/lang/Class;)Lcom/mp4parser/streaming/TrackExtension;

    move-result-object v1

    check-cast v1, Lcom/mp4parser/streaming/extensions/TrackIdTrackExtension;

    .line 91
    .local v1, "trackIdTrackExtension":Lcom/mp4parser/streaming/extensions/TrackIdTrackExtension;
    sget-boolean v9, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->$assertionsDisabled:Z

    if-nez v9, :cond_1

    if-nez v1, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 92
    :cond_1
    invoke-virtual {v1}, Lcom/mp4parser/streaming/extensions/TrackIdTrackExtension;->getTrackId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 93
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "There may not be two tracks with the same trackID within one file"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 88
    .end local v1    # "trackIdTrackExtension":Lcom/mp4parser/streaming/extensions/TrackIdTrackExtension;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "streamingTrack":Lcom/mp4parser/streaming/StreamingTrack;
    :cond_3
    aget-object v0, p1, v8

    .line 98
    .restart local v0    # "streamingTrack":Lcom/mp4parser/streaming/StreamingTrack;
    const-class v4, Lcom/mp4parser/streaming/extensions/TrackIdTrackExtension;

    invoke-interface {v0, v4}, Lcom/mp4parser/streaming/StreamingTrack;->getTrackExtension(Ljava/lang/Class;)Lcom/mp4parser/streaming/TrackExtension;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 99
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 100
    .local v3, "ts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 101
    new-instance v10, Lcom/mp4parser/streaming/extensions/TrackIdTrackExtension;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v4, v6

    :goto_2
    invoke-direct {v10, v4, v5}, Lcom/mp4parser/streaming/extensions/TrackIdTrackExtension;-><init>(J)V

    invoke-interface {v0, v10}, Lcom/mp4parser/streaming/StreamingTrack;->addTrackExtension(Lcom/mp4parser/streaming/TrackExtension;)V

    .line 97
    .end local v3    # "ts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_4
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto :goto_1

    .restart local v3    # "ts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_5
    move-wide v4, v6

    .line 101
    goto :goto_2
.end method

.method static synthetic access$0(Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;Lcom/mp4parser/streaming/StreamingTrack;Lcom/mp4parser/streaming/StreamingSample;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    invoke-direct {p0, p1, p2}, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->consumeSample(Lcom/mp4parser/streaming/StreamingTrack;Lcom/mp4parser/streaming/StreamingSample;)V

    return-void
.end method

.method private declared-synchronized consumeSample(Lcom/mp4parser/streaming/StreamingTrack;Lcom/mp4parser/streaming/StreamingSample;)V
    .locals 14
    .param p1, "streamingTrack"    # Lcom/mp4parser/streaming/StreamingTrack;
    .param p2, "ss"    # Lcom/mp4parser/streaming/StreamingSample;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    monitor-enter p0

    const/4 v3, 0x0

    .line 300
    .local v3, "sampleDependencySampleExtension":Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lcom/mp4parser/streaming/StreamingSample;->getExtensions()[Lcom/mp4parser/streaming/SampleExtension;

    move-result-object v6

    array-length v7, v6

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v7, :cond_2

    .line 307
    iget-wide v6, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->currentTime:J

    invoke-interface/range {p2 .. p2}, Lcom/mp4parser/streaming/StreamingSample;->getDuration()J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->currentTime:J

    .line 309
    iget-object v5, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->fragmentBuffers:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    iget-wide v6, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->currentTime:J

    iget-wide v8, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->currentFragmentStartTime:J

    const-wide/16 v10, 0x3

    invoke-interface {p1}, Lcom/mp4parser/streaming/StreamingTrack;->getTimescale()J

    move-result-wide v12

    mul-long/2addr v10, v12

    add-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-lez v5, :cond_1

    .line 311
    iget-object v5, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->fragmentBuffers:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 312
    iget-object v5, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->sampleDependencyTrackExtension:Lcom/mp4parser/streaming/extensions/SampleFlagsTrackExtension;

    if-eqz v5, :cond_0

    .line 313
    if-eqz v3, :cond_0

    .line 314
    invoke-virtual {v3}, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;->isSyncSample()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 315
    :cond_0
    iget-object v5, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->outputStream:Ljava/io/OutputStream;

    invoke-static {v5}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v2

    .line 316
    .local v2, "out":Ljava/nio/channels/WritableByteChannel;
    invoke-direct {p0, p1}, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->createMoof(Lcom/mp4parser/streaming/StreamingTrack;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 317
    invoke-direct {p0, p1}, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->createMdat(Lcom/mp4parser/streaming/StreamingTrack;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 318
    iget-wide v6, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->currentTime:J

    iput-wide v6, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->currentFragmentStartTime:J

    .line 319
    iget-object v5, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->fragmentBuffers:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    .end local v2    # "out":Ljava/nio/channels/WritableByteChannel;
    :cond_1
    monitor-exit p0

    return-void

    .line 300
    :cond_2
    :try_start_1
    aget-object v4, v6, v5

    .line 301
    .local v4, "sampleExtension":Lcom/mp4parser/streaming/SampleExtension;
    instance-of v8, v4, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;

    if-eqz v8, :cond_4

    .line 302
    move-object v0, v4

    check-cast v0, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;

    move-object v3, v0

    .line 300
    .end local v4    # "sampleExtension":Lcom/mp4parser/streaming/SampleExtension;
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 303
    .restart local v4    # "sampleExtension":Lcom/mp4parser/streaming/SampleExtension;
    :cond_4
    instance-of v8, v4, Lcom/mp4parser/streaming/extensions/CompositionTimeSampleExtension;

    if-eqz v8, :cond_3

    .line 304
    check-cast v4, Lcom/mp4parser/streaming/extensions/CompositionTimeSampleExtension;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 298
    .end local v4    # "sampleExtension":Lcom/mp4parser/streaming/SampleExtension;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private createMdat(Lcom/mp4parser/streaming/StreamingTrack;)Lcom/coremedia/iso/boxes/Box;
    .locals 2
    .param p1, "streamingTrack"    # Lcom/mp4parser/streaming/StreamingTrack;

    .prologue
    .line 469
    new-instance v0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer$1;

    const-string/jumbo v1, "mdat"

    invoke-direct {v0, p0, v1, p1}, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer$1;-><init>(Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;Ljava/lang/String;Lcom/mp4parser/streaming/StreamingTrack;)V

    return-object v0
.end method

.method private createMfhd(JLcom/coremedia/iso/boxes/fragment/MovieFragmentBox;)V
    .locals 1
    .param p1, "sequenceNumber"    # J
    .param p3, "moof"    # Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    .prologue
    .line 463
    new-instance v0, Lcom/coremedia/iso/boxes/fragment/MovieFragmentHeaderBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentHeaderBox;-><init>()V

    .line 464
    .local v0, "mfhd":Lcom/coremedia/iso/boxes/fragment/MovieFragmentHeaderBox;
    invoke-virtual {v0, p1, p2}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentHeaderBox;->setSequenceNumber(J)V

    .line 465
    invoke-virtual {p3, v0}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 466
    return-void
.end method

.method private createMoof(Lcom/mp4parser/streaming/StreamingTrack;)Lcom/coremedia/iso/boxes/Box;
    .locals 6
    .param p1, "streamingTrack"    # Lcom/mp4parser/streaming/StreamingTrack;

    .prologue
    .line 324
    new-instance v1, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;-><init>()V

    .line 325
    .local v1, "moof":Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;
    iget-wide v2, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->sequenceNumber:J

    invoke-direct {p0, v2, v3, v1}, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->createMfhd(JLcom/coremedia/iso/boxes/fragment/MovieFragmentBox;)V

    .line 326
    invoke-direct {p0, p1, v1}, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->createTraf(Lcom/mp4parser/streaming/StreamingTrack;Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;)V

    .line 328
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getTrackRunBoxes()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    .line 329
    .local v0, "firstTrun":Lcom/coremedia/iso/boxes/fragment/TrackRunBox;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setDataOffset(I)V

    .line 330
    const-wide/16 v2, 0x8

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setDataOffset(I)V

    .line 332
    iget-wide v2, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->sequenceNumber:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->sequenceNumber:J

    .line 333
    return-object v1
.end method

.method private createTraf(Lcom/mp4parser/streaming/StreamingTrack;Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;)V
    .locals 2
    .param p1, "streamingTrack"    # Lcom/mp4parser/streaming/StreamingTrack;
    .param p2, "moof"    # Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    .prologue
    .line 408
    new-instance v0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;-><init>()V

    .line 409
    .local v0, "traf":Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;
    invoke-virtual {p2, v0}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 410
    invoke-virtual {p0, p1, v0}, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->createTfhd(Lcom/mp4parser/streaming/StreamingTrack;Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;)V

    .line 411
    invoke-virtual {p0, v0}, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->createTfdt(Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;)V

    .line 412
    invoke-virtual {p0, p1, v0}, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->createTrun(Lcom/mp4parser/streaming/StreamingTrack;Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;)V

    .line 414
    const-class v1, Lcom/mp4parser/streaming/extensions/CencEncryptTrackExtension;

    invoke-interface {p1, v1}, Lcom/mp4parser/streaming/StreamingTrack;->getTrackExtension(Ljava/lang/Class;)Lcom/mp4parser/streaming/TrackExtension;

    .line 460
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method protected createDinf()Lcom/coremedia/iso/boxes/DataInformationBox;
    .locals 4

    .prologue
    .line 187
    new-instance v0, Lcom/coremedia/iso/boxes/DataInformationBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/DataInformationBox;-><init>()V

    .line 188
    .local v0, "dinf":Lcom/coremedia/iso/boxes/DataInformationBox;
    new-instance v1, Lcom/coremedia/iso/boxes/DataReferenceBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/DataReferenceBox;-><init>()V

    .line 189
    .local v1, "dref":Lcom/coremedia/iso/boxes/DataReferenceBox;
    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/DataInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 190
    new-instance v2, Lcom/coremedia/iso/boxes/DataEntryUrlBox;

    invoke-direct {v2}, Lcom/coremedia/iso/boxes/DataEntryUrlBox;-><init>()V

    .line 191
    .local v2, "url":Lcom/coremedia/iso/boxes/DataEntryUrlBox;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/coremedia/iso/boxes/DataEntryUrlBox;->setFlags(I)V

    .line 192
    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/DataReferenceBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 193
    return-object v0
.end method

.method public createFtyp()Lcom/coremedia/iso/boxes/Box;
    .locals 6

    .prologue
    .line 206
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 207
    .local v0, "minorBrands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "isom"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    const-string/jumbo v1, "iso6"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    const-string/jumbo v1, "avc1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    new-instance v1, Lcom/coremedia/iso/boxes/FileTypeBox;

    const-string/jumbo v2, "isom"

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v4, v5, v0}, Lcom/coremedia/iso/boxes/FileTypeBox;-><init>(Ljava/lang/String;JLjava/util/List;)V

    return-object v1
.end method

.method protected createMdhd(Lcom/mp4parser/streaming/StreamingTrack;)Lcom/coremedia/iso/boxes/Box;
    .locals 4
    .param p1, "streamingTrack"    # Lcom/mp4parser/streaming/StreamingTrack;

    .prologue
    .line 136
    new-instance v0, Lcom/coremedia/iso/boxes/MediaHeaderBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/MediaHeaderBox;-><init>()V

    .line 137
    .local v0, "mdhd":Lcom/coremedia/iso/boxes/MediaHeaderBox;
    iget-object v1, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->creationTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setCreationTime(Ljava/util/Date;)V

    .line 138
    iget-object v1, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->creationTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setModificationTime(Ljava/util/Date;)V

    .line 139
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setDuration(J)V

    .line 140
    invoke-interface {p1}, Lcom/mp4parser/streaming/StreamingTrack;->getTimescale()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setTimescale(J)V

    .line 141
    invoke-interface {p1}, Lcom/mp4parser/streaming/StreamingTrack;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setLanguage(Ljava/lang/String;)V

    .line 142
    return-object v0
.end method

.method protected createMdia(Lcom/mp4parser/streaming/StreamingTrack;)Lcom/coremedia/iso/boxes/Box;
    .locals 2
    .param p1, "streamingTrack"    # Lcom/mp4parser/streaming/StreamingTrack;

    .prologue
    .line 147
    new-instance v0, Lcom/coremedia/iso/boxes/MediaBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/MediaBox;-><init>()V

    .line 148
    .local v0, "mdia":Lcom/coremedia/iso/boxes/MediaBox;
    invoke-virtual {p0, p1}, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->createMdhd(Lcom/mp4parser/streaming/StreamingTrack;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 149
    invoke-virtual {p0, p1}, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->createMdiaHdlr(Lcom/mp4parser/streaming/StreamingTrack;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 150
    invoke-virtual {p0, p1}, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->createMinf(Lcom/mp4parser/streaming/StreamingTrack;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 151
    return-object v0
.end method

.method protected createMdiaHdlr(Lcom/mp4parser/streaming/StreamingTrack;)Lcom/coremedia/iso/boxes/Box;
    .locals 2
    .param p1, "streamingTrack"    # Lcom/mp4parser/streaming/StreamingTrack;

    .prologue
    .line 130
    new-instance v0, Lcom/coremedia/iso/boxes/HandlerBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/HandlerBox;-><init>()V

    .line 131
    .local v0, "hdlr":Lcom/coremedia/iso/boxes/HandlerBox;
    invoke-interface {p1}, Lcom/mp4parser/streaming/StreamingTrack;->getHandler()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/HandlerBox;->setHandlerType(Ljava/lang/String;)V

    .line 132
    return-object v0
.end method

.method protected createMinf(Lcom/mp4parser/streaming/StreamingTrack;)Lcom/coremedia/iso/boxes/Box;
    .locals 3
    .param p1, "streamingTrack"    # Lcom/mp4parser/streaming/StreamingTrack;

    .prologue
    .line 155
    new-instance v0, Lcom/coremedia/iso/boxes/MediaInformationBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/MediaInformationBox;-><init>()V

    .line 156
    .local v0, "minf":Lcom/coremedia/iso/boxes/MediaInformationBox;
    invoke-interface {p1}, Lcom/mp4parser/streaming/StreamingTrack;->getHandler()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "vide"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    new-instance v1, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 169
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->createDinf()Lcom/coremedia/iso/boxes/DataInformationBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 170
    invoke-virtual {p0, p1}, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->createStbl(Lcom/mp4parser/streaming/StreamingTrack;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 171
    return-object v0

    .line 158
    :cond_1
    invoke-interface {p1}, Lcom/mp4parser/streaming/StreamingTrack;->getHandler()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "soun"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    new-instance v1, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_0

    .line 160
    :cond_2
    invoke-interface {p1}, Lcom/mp4parser/streaming/StreamingTrack;->getHandler()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 161
    new-instance v1, Lcom/coremedia/iso/boxes/NullMediaHeaderBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/NullMediaHeaderBox;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_0

    .line 162
    :cond_3
    invoke-interface {p1}, Lcom/mp4parser/streaming/StreamingTrack;->getHandler()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "subt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 163
    new-instance v1, Lcom/coremedia/iso/boxes/SubtitleMediaHeaderBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/SubtitleMediaHeaderBox;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_0

    .line 164
    :cond_4
    invoke-interface {p1}, Lcom/mp4parser/streaming/StreamingTrack;->getHandler()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "hint"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 165
    new-instance v1, Lcom/coremedia/iso/boxes/HintMediaHeaderBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/HintMediaHeaderBox;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_0

    .line 166
    :cond_5
    invoke-interface {p1}, Lcom/mp4parser/streaming/StreamingTrack;->getHandler()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sbtl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    new-instance v1, Lcom/coremedia/iso/boxes/NullMediaHeaderBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/NullMediaHeaderBox;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_0
.end method

.method protected createMoov()Lcom/coremedia/iso/boxes/Box;
    .locals 6

    .prologue
    .line 247
    new-instance v0, Lcom/coremedia/iso/boxes/MovieBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/MovieBox;-><init>()V

    .line 249
    .local v0, "movieBox":Lcom/coremedia/iso/boxes/MovieBox;
    invoke-virtual {p0}, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->createMvhd()Lcom/coremedia/iso/boxes/Box;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/MovieBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 251
    iget-object v3, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->source:[Lcom/mp4parser/streaming/StreamingTrack;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->createMvex()Lcom/coremedia/iso/boxes/Box;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/MovieBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 258
    return-object v0

    .line 251
    :cond_0
    aget-object v1, v3, v2

    .line 252
    .local v1, "streamingTrack":Lcom/mp4parser/streaming/StreamingTrack;
    invoke-virtual {p0, v1}, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->createTrak(Lcom/mp4parser/streaming/StreamingTrack;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/coremedia/iso/boxes/MovieBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 251
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected createMvex()Lcom/coremedia/iso/boxes/Box;
    .locals 7

    .prologue
    .line 214
    new-instance v1, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;-><init>()V

    .line 215
    .local v1, "mvex":Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;
    new-instance v0, Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;-><init>()V

    .line 216
    .local v0, "mved":Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;->setVersion(I)V

    .line 218
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;->setFragmentDuration(J)V

    .line 220
    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 221
    iget-object v4, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->source:[Lcom/mp4parser/streaming/StreamingTrack;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v5, :cond_0

    .line 224
    return-object v1

    .line 221
    :cond_0
    aget-object v2, v4, v3

    .line 222
    .local v2, "streamingTrack":Lcom/mp4parser/streaming/StreamingTrack;
    invoke-virtual {p0, v2}, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->createTrex(Lcom/mp4parser/streaming/StreamingTrack;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 221
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected createMvhd()Lcom/coremedia/iso/boxes/Box;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 113
    new-instance v0, Lcom/coremedia/iso/boxes/MovieHeaderBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/MovieHeaderBox;-><init>()V

    .line 114
    .local v0, "mvhd":Lcom/coremedia/iso/boxes/MovieHeaderBox;
    invoke-virtual {v0, v10}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setVersion(I)V

    .line 115
    iget-object v3, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->creationTime:Ljava/util/Date;

    invoke-virtual {v0, v3}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setCreationTime(Ljava/util/Date;)V

    .line 116
    iget-object v3, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->creationTime:Ljava/util/Date;

    invoke-virtual {v0, v3}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setModificationTime(Ljava/util/Date;)V

    .line 117
    const-wide/16 v6, 0x0

    invoke-virtual {v0, v6, v7}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setDuration(J)V

    .line 119
    new-array v2, v4, [J

    .line 120
    .local v2, "timescales":[J
    iget-object v5, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->source:[Lcom/mp4parser/streaming/StreamingTrack;

    array-length v6, v5

    move v3, v4

    :goto_0
    if-lt v3, v6, :cond_0

    .line 123
    invoke-static {v2}, Lcom/googlecode/mp4parser/util/Math;->lcm([J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setTimescale(J)V

    .line 125
    const-wide/16 v4, 0x2

    invoke-virtual {v0, v4, v5}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setNextTrackId(J)V

    .line 126
    return-object v0

    .line 120
    :cond_0
    aget-object v1, v5, v3

    .line 121
    .local v1, "streamingTrack":Lcom/mp4parser/streaming/StreamingTrack;
    new-array v7, v10, [J

    invoke-interface {v1}, Lcom/mp4parser/streaming/StreamingTrack;->getTimescale()J

    move-result-wide v8

    aput-wide v8, v7, v4

    invoke-static {v2, v7}, Lcom/googlecode/mp4parser/util/Mp4Arrays;->copyOfAndAppend([J[J)[J

    .line 120
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected createStbl(Lcom/mp4parser/streaming/StreamingTrack;)Lcom/coremedia/iso/boxes/Box;
    .locals 2
    .param p1, "streamingTrack"    # Lcom/mp4parser/streaming/StreamingTrack;

    .prologue
    .line 175
    new-instance v0, Lcom/coremedia/iso/boxes/SampleTableBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/SampleTableBox;-><init>()V

    .line 177
    .local v0, "stbl":Lcom/coremedia/iso/boxes/SampleTableBox;
    invoke-interface {p1}, Lcom/mp4parser/streaming/StreamingTrack;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 178
    new-instance v1, Lcom/coremedia/iso/boxes/TimeToSampleBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/TimeToSampleBox;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 179
    new-instance v1, Lcom/coremedia/iso/boxes/SampleToChunkBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/SampleToChunkBox;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 180
    new-instance v1, Lcom/coremedia/iso/boxes/SampleSizeBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/SampleSizeBox;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 181
    new-instance v1, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 182
    return-object v0
.end method

.method protected createTfdt(Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;)V
    .locals 4
    .param p1, "parent"    # Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    .prologue
    .line 349
    new-instance v0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBaseMediaDecodeTimeBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBaseMediaDecodeTimeBox;-><init>()V

    .line 350
    .local v0, "tfdt":Lcom/coremedia/iso/boxes/fragment/TrackFragmentBaseMediaDecodeTimeBox;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBaseMediaDecodeTimeBox;->setVersion(I)V

    .line 351
    iget-wide v2, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->currentFragmentStartTime:J

    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBaseMediaDecodeTimeBox;->setBaseMediaDecodeTime(J)V

    .line 352
    invoke-virtual {p1, v0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 353
    return-void
.end method

.method protected createTfhd(Lcom/mp4parser/streaming/StreamingTrack;Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;)V
    .locals 4
    .param p1, "streamingTrack"    # Lcom/mp4parser/streaming/StreamingTrack;
    .param p2, "parent"    # Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    .prologue
    .line 338
    new-instance v1, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;-><init>()V

    .line 339
    .local v1, "tfhd":Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;
    new-instance v0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;-><init>()V

    .line 341
    .local v0, "sf":Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->setDefaultSampleFlags(Lcom/coremedia/iso/boxes/fragment/SampleFlags;)V

    .line 342
    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->setBaseDataOffset(J)V

    .line 343
    const-class v2, Lcom/mp4parser/streaming/extensions/TrackIdTrackExtension;

    invoke-interface {p1, v2}, Lcom/mp4parser/streaming/StreamingTrack;->getTrackExtension(Ljava/lang/Class;)Lcom/mp4parser/streaming/TrackExtension;

    move-result-object v2

    check-cast v2, Lcom/mp4parser/streaming/extensions/TrackIdTrackExtension;

    invoke-virtual {v2}, Lcom/mp4parser/streaming/extensions/TrackIdTrackExtension;->getTrackId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->setTrackId(J)V

    .line 344
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->setDefaultBaseIsMoof(Z)V

    .line 345
    invoke-virtual {p2, v1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 346
    return-void
.end method

.method protected createTrak(Lcom/mp4parser/streaming/StreamingTrack;)Lcom/coremedia/iso/boxes/Box;
    .locals 2
    .param p1, "streamingTrack"    # Lcom/mp4parser/streaming/StreamingTrack;

    .prologue
    .line 197
    new-instance v0, Lcom/coremedia/iso/boxes/TrackBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/TrackBox;-><init>()V

    .line 198
    .local v0, "trackBox":Lcom/coremedia/iso/boxes/TrackBox;
    invoke-interface {p1}, Lcom/mp4parser/streaming/StreamingTrack;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/TrackBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 199
    invoke-interface {p1}, Lcom/mp4parser/streaming/StreamingTrack;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/TrackBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 200
    invoke-virtual {p0, p1}, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->createMdia(Lcom/mp4parser/streaming/StreamingTrack;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/TrackBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 201
    return-object v0
.end method

.method protected createTrex(Lcom/mp4parser/streaming/StreamingTrack;)Lcom/coremedia/iso/boxes/Box;
    .locals 8
    .param p1, "streamingTrack"    # Lcom/mp4parser/streaming/StreamingTrack;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x2

    .line 228
    new-instance v1, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;-><init>()V

    .line 229
    .local v1, "trex":Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;
    invoke-interface {p1}, Lcom/mp4parser/streaming/StreamingTrack;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getTrackId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->setTrackId(J)V

    .line 230
    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->setDefaultSampleDescriptionIndex(J)V

    .line 231
    invoke-virtual {v1, v6, v7}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->setDefaultSampleDuration(J)V

    .line 232
    invoke-virtual {v1, v6, v7}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->setDefaultSampleSize(J)V

    .line 233
    new-instance v0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;-><init>()V

    .line 234
    .local v0, "sf":Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    const-string/jumbo v2, "soun"

    invoke-interface {p1}, Lcom/mp4parser/streaming/StreamingTrack;->getHandler()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "subt"

    invoke-interface {p1}, Lcom/mp4parser/streaming/StreamingTrack;->getHandler()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 238
    :cond_0
    invoke-virtual {v0, v4}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSampleDependsOn(I)V

    .line 239
    invoke-virtual {v0, v4}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSampleIsDependedOn(I)V

    .line 241
    :cond_1
    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->setDefaultSampleFlags(Lcom/coremedia/iso/boxes/fragment/SampleFlags;)V

    .line 242
    return-object v1
.end method

.method protected createTrun(Lcom/mp4parser/streaming/StreamingTrack;Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;)V
    .locals 12
    .param p1, "streamingTrack"    # Lcom/mp4parser/streaming/StreamingTrack;
    .param p2, "parent"    # Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 356
    new-instance v7, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    invoke-direct {v7}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;-><init>()V

    .line 357
    .local v7, "trun":Lcom/coremedia/iso/boxes/fragment/TrackRunBox;
    invoke-virtual {v7, v9}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setVersion(I)V

    .line 359
    invoke-virtual {v7, v9}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setSampleDurationPresent(Z)V

    .line 360
    invoke-virtual {v7, v9}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setSampleSizePresent(Z)V

    .line 361
    new-instance v1, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->fragmentBuffers:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 364
    .local v1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;>;"
    const-class v8, Lcom/mp4parser/streaming/extensions/CompositionTimeTrackExtension;

    invoke-interface {p1, v8}, Lcom/mp4parser/streaming/StreamingTrack;->getTrackExtension(Ljava/lang/Class;)Lcom/mp4parser/streaming/TrackExtension;

    move-result-object v8

    if-eqz v8, :cond_0

    move v8, v9

    :goto_0
    invoke-virtual {v7, v8}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setSampleCompositionTimeOffsetPresent(Z)V

    .line 366
    const-class v8, Lcom/mp4parser/streaming/extensions/SampleFlagsTrackExtension;

    invoke-interface {p1, v8}, Lcom/mp4parser/streaming/StreamingTrack;->getTrackExtension(Ljava/lang/Class;)Lcom/mp4parser/streaming/TrackExtension;

    move-result-object v8

    if-eqz v8, :cond_1

    move v3, v9

    .line 368
    .local v3, "sampleFlagsRequired":Z
    :goto_1
    invoke-virtual {v7, v3}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setSampleFlagsPresent(Z)V

    .line 370
    iget-object v8, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->fragmentBuffers:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 402
    invoke-virtual {v7, v1}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setEntries(Ljava/util/List;)V

    .line 404
    invoke-virtual {p2, v7}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 405
    return-void

    .end local v3    # "sampleFlagsRequired":Z
    :cond_0
    move v8, v10

    .line 364
    goto :goto_0

    :cond_1
    move v3, v10

    .line 366
    goto :goto_1

    .line 370
    .restart local v3    # "sampleFlagsRequired":Z
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mp4parser/streaming/StreamingSample;

    .line 371
    .local v6, "streamingSample":Lcom/mp4parser/streaming/StreamingSample;
    new-instance v2, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;

    invoke-direct {v2}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;-><init>()V

    .line 372
    .local v2, "entry":Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;
    invoke-interface {v6}, Lcom/mp4parser/streaming/StreamingSample;->getContent()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {v2, v10, v11}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->setSampleSize(J)V

    .line 373
    if-eqz v3, :cond_4

    .line 375
    const-class v9, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;

    invoke-static {v6, v9}, Lcom/mp4parser/streaming/StreamingSampleHelper;->getSampleExtension(Lcom/mp4parser/streaming/StreamingSample;Ljava/lang/Class;)Lcom/mp4parser/streaming/SampleExtension;

    move-result-object v4

    check-cast v4, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;

    .line 376
    .local v4, "sampleFlagsSampleExtension":Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;
    sget-boolean v9, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->$assertionsDisabled:Z

    if-nez v9, :cond_3

    if-nez v4, :cond_3

    new-instance v8, Ljava/lang/AssertionError;

    const-string/jumbo v9, "SampleDependencySampleExtension missing even though SampleDependencyTrackExtension was present"

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 377
    :cond_3
    new-instance v5, Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    invoke-direct {v5}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;-><init>()V

    .line 378
    .local v5, "sflags":Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    invoke-virtual {v4}, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;->getIsLeading()B

    move-result v9

    invoke-virtual {v5, v9}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setIsLeading(B)V

    .line 379
    invoke-virtual {v4}, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;->getSampleIsDependedOn()B

    move-result v9

    invoke-virtual {v5, v9}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSampleIsDependedOn(I)V

    .line 380
    invoke-virtual {v4}, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;->getSampleDependsOn()B

    move-result v9

    invoke-virtual {v5, v9}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSampleDependsOn(I)V

    .line 381
    invoke-virtual {v4}, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;->getSampleHasRedundancy()B

    move-result v9

    invoke-virtual {v5, v9}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSampleHasRedundancy(I)V

    .line 382
    invoke-virtual {v4}, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;->isSampleIsNonSyncSample()Z

    move-result v9

    invoke-virtual {v5, v9}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSampleIsDifferenceSample(Z)V

    .line 383
    invoke-virtual {v4}, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;->getSamplePaddingValue()B

    move-result v9

    invoke-virtual {v5, v9}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSamplePaddingValue(I)V

    .line 384
    invoke-virtual {v4}, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;->getSampleDegradationPriority()I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSampleDegradationPriority(I)V

    .line 386
    invoke-virtual {v2, v5}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->setSampleFlags(Lcom/coremedia/iso/boxes/fragment/SampleFlags;)V

    .line 390
    .end local v4    # "sampleFlagsSampleExtension":Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;
    .end local v5    # "sflags":Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    :cond_4
    invoke-interface {v6}, Lcom/mp4parser/streaming/StreamingSample;->getDuration()J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->setSampleDuration(J)V

    .line 392
    invoke-virtual {v7}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleCompositionTimeOffsetPresent()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 394
    const-class v9, Lcom/mp4parser/streaming/extensions/CompositionTimeSampleExtension;

    invoke-static {v6, v9}, Lcom/mp4parser/streaming/StreamingSampleHelper;->getSampleExtension(Lcom/mp4parser/streaming/StreamingSample;Ljava/lang/Class;)Lcom/mp4parser/streaming/SampleExtension;

    move-result-object v0

    check-cast v0, Lcom/mp4parser/streaming/extensions/CompositionTimeSampleExtension;

    .line 395
    .local v0, "compositionTimeSampleExtension":Lcom/mp4parser/streaming/extensions/CompositionTimeSampleExtension;
    sget-boolean v9, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->$assertionsDisabled:Z

    if-nez v9, :cond_5

    if-nez v0, :cond_5

    new-instance v8, Ljava/lang/AssertionError;

    const-string/jumbo v9, "CompositionTimeSampleExtension missing even though CompositionTimeTrackExtension was present"

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 396
    :cond_5
    invoke-virtual {v0}, Lcom/mp4parser/streaming/extensions/CompositionTimeSampleExtension;->getCompositionTimeOffset()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->setSampleCompositionTimeOffset(I)V

    .line 399
    .end local v0    # "compositionTimeSampleExtension":Lcom/mp4parser/streaming/extensions/CompositionTimeSampleExtension;
    :cond_6
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method public write()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    iget-object v3, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->outputStream:Ljava/io/OutputStream;

    invoke-static {v3}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v1

    .line 288
    .local v1, "out":Ljava/nio/channels/WritableByteChannel;
    invoke-virtual {p0}, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->createFtyp()Lcom/coremedia/iso/boxes/Box;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 289
    invoke-virtual {p0}, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->createMoov()Lcom/coremedia/iso/boxes/Box;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 290
    iget-object v3, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->source:[Lcom/mp4parser/streaming/StreamingTrack;

    array-length v3, v3

    invoke-static {v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 291
    .local v0, "es":Ljava/util/concurrent/ExecutorService;
    iget-object v4, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->source:[Lcom/mp4parser/streaming/StreamingTrack;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v5, :cond_0

    .line 294
    return-void

    .line 291
    :cond_0
    aget-object v2, v4, v3

    .line 292
    .local v2, "streamingTrack":Lcom/mp4parser/streaming/StreamingTrack;
    new-instance v6, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer$ConsumeSamplesCallable;

    invoke-direct {v6, p0, v2}, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer$ConsumeSamplesCallable;-><init>(Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;Lcom/mp4parser/streaming/StreamingTrack;)V

    invoke-interface {v0, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 291
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
