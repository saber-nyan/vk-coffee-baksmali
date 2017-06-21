.class public Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;
.super Ljava/lang/Object;
.source "SingleTrackFragmentedMp4Writer.java"

# interfaces
.implements Lcom/mp4parser/streaming/StreamingMp4Writer;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field compositionTimeTrackExtension:Lcom/mp4parser/streaming/extensions/CompositionTimeTrackExtension;

.field creationTime:Ljava/util/Date;

.field private currentFragmentStartTime:J

.field private currentTime:J

.field fragment:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mp4parser/streaming/StreamingSample;",
            ">;"
        }
    .end annotation
.end field

.field private final outputStream:Ljava/io/OutputStream;

.field sampleDependencyTrackExtension:Lcom/mp4parser/streaming/extensions/SampleFlagsTrackExtension;

.field private sequenceNumber:J

.field source:Lcom/mp4parser/streaming/StreamingTrack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/mp4parser/streaming/StreamingTrack;Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "source"    # Lcom/mp4parser/streaming/StreamingTrack;
    .param p2, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    const-wide/16 v2, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->fragment:Ljava/util/List;

    .line 49
    iput-wide v2, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->currentFragmentStartTime:J

    .line 50
    iput-wide v2, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->currentTime:J

    .line 53
    iput-object p1, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->source:Lcom/mp4parser/streaming/StreamingTrack;

    .line 54
    iput-object p2, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->outputStream:Ljava/io/OutputStream;

    .line 55
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->creationTime:Ljava/util/Date;

    .line 57
    const-class v0, Lcom/mp4parser/streaming/extensions/CompositionTimeTrackExtension;

    invoke-interface {p1, v0}, Lcom/mp4parser/streaming/StreamingTrack;->getTrackExtension(Ljava/lang/Class;)Lcom/mp4parser/streaming/TrackExtension;

    move-result-object v0

    check-cast v0, Lcom/mp4parser/streaming/extensions/CompositionTimeTrackExtension;

    iput-object v0, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->compositionTimeTrackExtension:Lcom/mp4parser/streaming/extensions/CompositionTimeTrackExtension;

    .line 58
    const-class v0, Lcom/mp4parser/streaming/extensions/SampleFlagsTrackExtension;

    invoke-interface {p1, v0}, Lcom/mp4parser/streaming/StreamingTrack;->getTrackExtension(Ljava/lang/Class;)Lcom/mp4parser/streaming/TrackExtension;

    move-result-object v0

    check-cast v0, Lcom/mp4parser/streaming/extensions/SampleFlagsTrackExtension;

    iput-object v0, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->sampleDependencyTrackExtension:Lcom/mp4parser/streaming/extensions/SampleFlagsTrackExtension;

    .line 59
    return-void
.end method

.method private consumeSample(Lcom/mp4parser/streaming/StreamingSample;Ljava/nio/channels/WritableByteChannel;)V
    .locals 10
    .param p1, "ss"    # Lcom/mp4parser/streaming/StreamingSample;
    .param p2, "out"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    const/4 v0, 0x0

    .line 230
    .local v0, "sampleDependencySampleExtension":Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;
    invoke-interface {p1}, Lcom/mp4parser/streaming/StreamingSample;->getExtensions()[Lcom/mp4parser/streaming/SampleExtension;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_2

    .line 237
    iget-wide v2, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->currentTime:J

    invoke-interface {p1}, Lcom/mp4parser/streaming/StreamingSample;->getDuration()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->currentTime:J

    .line 239
    iget-object v2, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->fragment:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    iget-wide v2, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->currentTime:J

    iget-wide v4, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->currentFragmentStartTime:J

    const-wide/16 v6, 0x3

    iget-object v8, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->source:Lcom/mp4parser/streaming/StreamingTrack;

    invoke-interface {v8}, Lcom/mp4parser/streaming/StreamingTrack;->getTimescale()J

    move-result-wide v8

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 241
    iget-object v2, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->fragment:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 242
    iget-object v2, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->sampleDependencyTrackExtension:Lcom/mp4parser/streaming/extensions/SampleFlagsTrackExtension;

    if-eqz v2, :cond_0

    .line 243
    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0}, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;->isSyncSample()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 245
    :cond_0
    invoke-direct {p0}, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->createMoof()Lcom/coremedia/iso/boxes/Box;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 246
    invoke-direct {p0}, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->createMdat()Lcom/coremedia/iso/boxes/Box;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 247
    iget-wide v2, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->currentTime:J

    iput-wide v2, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->currentFragmentStartTime:J

    .line 248
    iget-object v2, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->fragment:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 250
    :cond_1
    return-void

    .line 230
    :cond_2
    aget-object v1, v3, v2

    .line 231
    .local v1, "sampleExtension":Lcom/mp4parser/streaming/SampleExtension;
    instance-of v5, v1, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;

    if-eqz v5, :cond_4

    move-object v0, v1

    .line 232
    check-cast v0, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;

    .line 230
    .end local v1    # "sampleExtension":Lcom/mp4parser/streaming/SampleExtension;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    .restart local v1    # "sampleExtension":Lcom/mp4parser/streaming/SampleExtension;
    :cond_4
    instance-of v5, v1, Lcom/mp4parser/streaming/extensions/CompositionTimeSampleExtension;

    if-eqz v5, :cond_3

    .line 234
    check-cast v1, Lcom/mp4parser/streaming/extensions/CompositionTimeSampleExtension;

    goto :goto_1
.end method

.method private createMdat()Lcom/coremedia/iso/boxes/Box;
    .locals 2

    .prologue
    .line 404
    new-instance v0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer$1;

    const-string/jumbo v1, "mdat"

    invoke-direct {v0, p0, v1}, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer$1;-><init>(Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;Ljava/lang/String;)V

    return-object v0
.end method

.method private createMfhd(JLcom/coremedia/iso/boxes/fragment/MovieFragmentBox;)V
    .locals 1
    .param p1, "sequenceNumber"    # J
    .param p3, "moof"    # Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    .prologue
    .line 398
    new-instance v0, Lcom/coremedia/iso/boxes/fragment/MovieFragmentHeaderBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentHeaderBox;-><init>()V

    .line 399
    .local v0, "mfhd":Lcom/coremedia/iso/boxes/fragment/MovieFragmentHeaderBox;
    invoke-virtual {v0, p1, p2}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentHeaderBox;->setSequenceNumber(J)V

    .line 400
    invoke-virtual {p3, v0}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 401
    return-void
.end method

.method private createMoof()Lcom/coremedia/iso/boxes/Box;
    .locals 6

    .prologue
    .line 253
    new-instance v1, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;-><init>()V

    .line 254
    .local v1, "moof":Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;
    iget-wide v2, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->sequenceNumber:J

    invoke-direct {p0, v2, v3, v1}, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->createMfhd(JLcom/coremedia/iso/boxes/fragment/MovieFragmentBox;)V

    .line 255
    iget-wide v2, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->sequenceNumber:J

    invoke-direct {p0, v2, v3, v1}, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->createTraf(JLcom/coremedia/iso/boxes/fragment/MovieFragmentBox;)V

    .line 257
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getTrackRunBoxes()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    .line 258
    .local v0, "firstTrun":Lcom/coremedia/iso/boxes/fragment/TrackRunBox;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setDataOffset(I)V

    .line 259
    const-wide/16 v2, 0x8

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setDataOffset(I)V

    .line 261
    return-object v1
.end method

.method private createTraf(JLcom/coremedia/iso/boxes/fragment/MovieFragmentBox;)V
    .locals 3
    .param p1, "sequenceNumber"    # J
    .param p3, "moof"    # Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    .prologue
    .line 343
    new-instance v0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;-><init>()V

    .line 344
    .local v0, "traf":Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;
    invoke-virtual {p3, v0}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 345
    invoke-virtual {p0, v0}, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->createTfhd(Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;)V

    .line 346
    invoke-virtual {p0, v0}, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->createTfdt(Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;)V

    .line 347
    invoke-virtual {p0, v0}, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->createTrun(Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;)V

    .line 349
    iget-object v1, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->source:Lcom/mp4parser/streaming/StreamingTrack;

    const-class v2, Lcom/mp4parser/streaming/extensions/CencEncryptTrackExtension;

    invoke-interface {v1, v2}, Lcom/mp4parser/streaming/StreamingTrack;->getTrackExtension(Ljava/lang/Class;)Lcom/mp4parser/streaming/TrackExtension;

    .line 395
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method protected createDinf()Lcom/coremedia/iso/boxes/DataInformationBox;
    .locals 4

    .prologue
    .line 137
    new-instance v0, Lcom/coremedia/iso/boxes/DataInformationBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/DataInformationBox;-><init>()V

    .line 138
    .local v0, "dinf":Lcom/coremedia/iso/boxes/DataInformationBox;
    new-instance v1, Lcom/coremedia/iso/boxes/DataReferenceBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/DataReferenceBox;-><init>()V

    .line 139
    .local v1, "dref":Lcom/coremedia/iso/boxes/DataReferenceBox;
    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/DataInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 140
    new-instance v2, Lcom/coremedia/iso/boxes/DataEntryUrlBox;

    invoke-direct {v2}, Lcom/coremedia/iso/boxes/DataEntryUrlBox;-><init>()V

    .line 141
    .local v2, "url":Lcom/coremedia/iso/boxes/DataEntryUrlBox;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/coremedia/iso/boxes/DataEntryUrlBox;->setFlags(I)V

    .line 142
    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/DataReferenceBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 143
    return-object v0
.end method

.method public createFtyp()Lcom/coremedia/iso/boxes/Box;
    .locals 6

    .prologue
    .line 155
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 156
    .local v0, "minorBrands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "isom"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    const-string/jumbo v1, "iso6"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    const-string/jumbo v1, "avc1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v1, Lcom/coremedia/iso/boxes/FileTypeBox;

    const-string/jumbo v2, "isom"

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v4, v5, v0}, Lcom/coremedia/iso/boxes/FileTypeBox;-><init>(Ljava/lang/String;JLjava/util/List;)V

    return-object v1
.end method

.method protected createMdhd()Lcom/coremedia/iso/boxes/Box;
    .locals 4

    .prologue
    .line 86
    new-instance v0, Lcom/coremedia/iso/boxes/MediaHeaderBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/MediaHeaderBox;-><init>()V

    .line 87
    .local v0, "mdhd":Lcom/coremedia/iso/boxes/MediaHeaderBox;
    iget-object v1, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->creationTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setCreationTime(Ljava/util/Date;)V

    .line 88
    iget-object v1, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->creationTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setModificationTime(Ljava/util/Date;)V

    .line 89
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setDuration(J)V

    .line 90
    iget-object v1, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->source:Lcom/mp4parser/streaming/StreamingTrack;

    invoke-interface {v1}, Lcom/mp4parser/streaming/StreamingTrack;->getTimescale()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setTimescale(J)V

    .line 91
    iget-object v1, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->source:Lcom/mp4parser/streaming/StreamingTrack;

    invoke-interface {v1}, Lcom/mp4parser/streaming/StreamingTrack;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setLanguage(Ljava/lang/String;)V

    .line 92
    return-object v0
.end method

.method protected createMdia()Lcom/coremedia/iso/boxes/Box;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/coremedia/iso/boxes/MediaBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/MediaBox;-><init>()V

    .line 98
    .local v0, "mdia":Lcom/coremedia/iso/boxes/MediaBox;
    invoke-virtual {p0}, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->createMdhd()Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 99
    invoke-virtual {p0}, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->createMdiaHdlr()Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 100
    invoke-virtual {p0}, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->createMinf()Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 101
    return-object v0
.end method

.method protected createMdiaHdlr()Lcom/coremedia/iso/boxes/Box;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lcom/coremedia/iso/boxes/HandlerBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/HandlerBox;-><init>()V

    .line 81
    .local v0, "hdlr":Lcom/coremedia/iso/boxes/HandlerBox;
    iget-object v1, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->source:Lcom/mp4parser/streaming/StreamingTrack;

    invoke-interface {v1}, Lcom/mp4parser/streaming/StreamingTrack;->getHandler()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/HandlerBox;->setHandlerType(Ljava/lang/String;)V

    .line 82
    return-object v0
.end method

.method protected createMinf()Lcom/coremedia/iso/boxes/Box;
    .locals 3

    .prologue
    .line 105
    new-instance v0, Lcom/coremedia/iso/boxes/MediaInformationBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/MediaInformationBox;-><init>()V

    .line 106
    .local v0, "minf":Lcom/coremedia/iso/boxes/MediaInformationBox;
    iget-object v1, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->source:Lcom/mp4parser/streaming/StreamingTrack;

    invoke-interface {v1}, Lcom/mp4parser/streaming/StreamingTrack;->getHandler()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "vide"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    new-instance v1, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 119
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->createDinf()Lcom/coremedia/iso/boxes/DataInformationBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 120
    invoke-virtual {p0}, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->createStbl()Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 121
    return-object v0

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->source:Lcom/mp4parser/streaming/StreamingTrack;

    invoke-interface {v1}, Lcom/mp4parser/streaming/StreamingTrack;->getHandler()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "soun"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    new-instance v1, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_0

    .line 110
    :cond_2
    iget-object v1, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->source:Lcom/mp4parser/streaming/StreamingTrack;

    invoke-interface {v1}, Lcom/mp4parser/streaming/StreamingTrack;->getHandler()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 111
    new-instance v1, Lcom/coremedia/iso/boxes/NullMediaHeaderBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/NullMediaHeaderBox;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_0

    .line 112
    :cond_3
    iget-object v1, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->source:Lcom/mp4parser/streaming/StreamingTrack;

    invoke-interface {v1}, Lcom/mp4parser/streaming/StreamingTrack;->getHandler()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "subt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 113
    new-instance v1, Lcom/coremedia/iso/boxes/SubtitleMediaHeaderBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/SubtitleMediaHeaderBox;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_0

    .line 114
    :cond_4
    iget-object v1, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->source:Lcom/mp4parser/streaming/StreamingTrack;

    invoke-interface {v1}, Lcom/mp4parser/streaming/StreamingTrack;->getHandler()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "hint"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 115
    new-instance v1, Lcom/coremedia/iso/boxes/HintMediaHeaderBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/HintMediaHeaderBox;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_0

    .line 116
    :cond_5
    iget-object v1, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->source:Lcom/mp4parser/streaming/StreamingTrack;

    invoke-interface {v1}, Lcom/mp4parser/streaming/StreamingTrack;->getHandler()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sbtl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    new-instance v1, Lcom/coremedia/iso/boxes/NullMediaHeaderBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/NullMediaHeaderBox;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto/16 :goto_0
.end method

.method protected createMoov()Lcom/coremedia/iso/boxes/Box;
    .locals 2

    .prologue
    .line 195
    new-instance v0, Lcom/coremedia/iso/boxes/MovieBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/MovieBox;-><init>()V

    .line 197
    .local v0, "movieBox":Lcom/coremedia/iso/boxes/MovieBox;
    invoke-virtual {p0}, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->createMvhd()Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MovieBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 199
    invoke-virtual {p0}, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->createTrak()Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MovieBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 200
    invoke-virtual {p0}, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->createMvex()Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/MovieBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 203
    return-object v0
.end method

.method protected createMvex()Lcom/coremedia/iso/boxes/Box;
    .locals 4

    .prologue
    .line 163
    new-instance v1, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;-><init>()V

    .line 164
    .local v1, "mvex":Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;
    new-instance v0, Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;-><init>()V

    .line 165
    .local v0, "mved":Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;->setVersion(I)V

    .line 167
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;->setFragmentDuration(J)V

    .line 169
    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 171
    invoke-virtual {p0}, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->createTrex()Lcom/coremedia/iso/boxes/Box;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 172
    return-object v1
.end method

.method protected createMvhd()Lcom/coremedia/iso/boxes/Box;
    .locals 6

    .prologue
    .line 67
    new-instance v2, Lcom/coremedia/iso/boxes/MovieHeaderBox;

    invoke-direct {v2}, Lcom/coremedia/iso/boxes/MovieHeaderBox;-><init>()V

    .line 68
    .local v2, "mvhd":Lcom/coremedia/iso/boxes/MovieHeaderBox;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setVersion(I)V

    .line 69
    iget-object v3, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->creationTime:Ljava/util/Date;

    invoke-virtual {v2, v3}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setCreationTime(Ljava/util/Date;)V

    .line 70
    iget-object v3, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->creationTime:Ljava/util/Date;

    invoke-virtual {v2, v3}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setModificationTime(Ljava/util/Date;)V

    .line 71
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setDuration(J)V

    .line 72
    iget-object v3, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->source:Lcom/mp4parser/streaming/StreamingTrack;

    invoke-interface {v3}, Lcom/mp4parser/streaming/StreamingTrack;->getTimescale()J

    move-result-wide v0

    .line 73
    .local v0, "movieTimeScale":J
    invoke-virtual {v2, v0, v1}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setTimescale(J)V

    .line 75
    const-wide/16 v4, 0x2

    invoke-virtual {v2, v4, v5}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setNextTrackId(J)V

    .line 76
    return-object v2
.end method

.method protected createStbl()Lcom/coremedia/iso/boxes/Box;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Lcom/coremedia/iso/boxes/SampleTableBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/SampleTableBox;-><init>()V

    .line 127
    .local v0, "stbl":Lcom/coremedia/iso/boxes/SampleTableBox;
    iget-object v1, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->source:Lcom/mp4parser/streaming/StreamingTrack;

    invoke-interface {v1}, Lcom/mp4parser/streaming/StreamingTrack;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 128
    new-instance v1, Lcom/coremedia/iso/boxes/TimeToSampleBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/TimeToSampleBox;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 129
    new-instance v1, Lcom/coremedia/iso/boxes/SampleToChunkBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/SampleToChunkBox;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 130
    new-instance v1, Lcom/coremedia/iso/boxes/SampleSizeBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/SampleSizeBox;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 131
    new-instance v1, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 132
    return-object v0
.end method

.method protected createTfdt(Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;)V
    .locals 4
    .param p1, "parent"    # Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    .prologue
    .line 282
    new-instance v0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBaseMediaDecodeTimeBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBaseMediaDecodeTimeBox;-><init>()V

    .line 283
    .local v0, "tfdt":Lcom/coremedia/iso/boxes/fragment/TrackFragmentBaseMediaDecodeTimeBox;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBaseMediaDecodeTimeBox;->setVersion(I)V

    .line 284
    iget-wide v2, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->currentFragmentStartTime:J

    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBaseMediaDecodeTimeBox;->setBaseMediaDecodeTime(J)V

    .line 285
    invoke-virtual {p1, v0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 286
    return-void
.end method

.method protected createTfhd(Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;)V
    .locals 6
    .param p1, "parent"    # Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    .prologue
    .line 266
    new-instance v1, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;-><init>()V

    .line 267
    .local v1, "tfhd":Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;
    new-instance v0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;-><init>()V

    .line 269
    .local v0, "sf":Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->setDefaultSampleFlags(Lcom/coremedia/iso/boxes/fragment/SampleFlags;)V

    .line 270
    const-wide/16 v4, -0x1

    invoke-virtual {v1, v4, v5}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->setBaseDataOffset(J)V

    .line 271
    iget-object v3, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->source:Lcom/mp4parser/streaming/StreamingTrack;

    const-class v4, Lcom/mp4parser/streaming/extensions/TrackIdTrackExtension;

    invoke-interface {v3, v4}, Lcom/mp4parser/streaming/StreamingTrack;->getTrackExtension(Ljava/lang/Class;)Lcom/mp4parser/streaming/TrackExtension;

    move-result-object v2

    check-cast v2, Lcom/mp4parser/streaming/extensions/TrackIdTrackExtension;

    .line 272
    .local v2, "trackIdTrackExtension":Lcom/mp4parser/streaming/extensions/TrackIdTrackExtension;
    if-eqz v2, :cond_0

    .line 273
    invoke-virtual {v2}, Lcom/mp4parser/streaming/extensions/TrackIdTrackExtension;->getTrackId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->setTrackId(J)V

    .line 277
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->setDefaultBaseIsMoof(Z)V

    .line 278
    invoke-virtual {p1, v1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 279
    return-void

    .line 275
    :cond_0
    const-wide/16 v4, 0x1

    invoke-virtual {v1, v4, v5}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->setTrackId(J)V

    goto :goto_0
.end method

.method protected createTrak()Lcom/coremedia/iso/boxes/Box;
    .locals 2

    .prologue
    .line 147
    new-instance v0, Lcom/coremedia/iso/boxes/TrackBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/TrackBox;-><init>()V

    .line 148
    .local v0, "trackBox":Lcom/coremedia/iso/boxes/TrackBox;
    iget-object v1, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->source:Lcom/mp4parser/streaming/StreamingTrack;

    invoke-interface {v1}, Lcom/mp4parser/streaming/StreamingTrack;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/TrackBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 149
    invoke-virtual {p0}, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->createMdia()Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/TrackBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 150
    return-object v0
.end method

.method protected createTrex()Lcom/coremedia/iso/boxes/Box;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x2

    .line 176
    new-instance v1, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;-><init>()V

    .line 177
    .local v1, "trex":Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;
    iget-object v2, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->source:Lcom/mp4parser/streaming/StreamingTrack;

    invoke-interface {v2}, Lcom/mp4parser/streaming/StreamingTrack;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getTrackId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->setTrackId(J)V

    .line 178
    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->setDefaultSampleDescriptionIndex(J)V

    .line 179
    invoke-virtual {v1, v6, v7}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->setDefaultSampleDuration(J)V

    .line 180
    invoke-virtual {v1, v6, v7}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->setDefaultSampleSize(J)V

    .line 181
    new-instance v0, Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;-><init>()V

    .line 182
    .local v0, "sf":Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    const-string/jumbo v2, "soun"

    iget-object v3, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->source:Lcom/mp4parser/streaming/StreamingTrack;

    invoke-interface {v3}, Lcom/mp4parser/streaming/StreamingTrack;->getHandler()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "subt"

    iget-object v3, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->source:Lcom/mp4parser/streaming/StreamingTrack;

    invoke-interface {v3}, Lcom/mp4parser/streaming/StreamingTrack;->getHandler()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    :cond_0
    invoke-virtual {v0, v4}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSampleDependsOn(I)V

    .line 187
    invoke-virtual {v0, v4}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSampleIsDependedOn(I)V

    .line 189
    :cond_1
    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->setDefaultSampleFlags(Lcom/coremedia/iso/boxes/fragment/SampleFlags;)V

    .line 190
    return-object v1
.end method

.method protected createTrun(Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;)V
    .locals 12
    .param p1, "parent"    # Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 289
    new-instance v7, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    invoke-direct {v7}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;-><init>()V

    .line 290
    .local v7, "trun":Lcom/coremedia/iso/boxes/fragment/TrackRunBox;
    invoke-virtual {v7, v9}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setVersion(I)V

    .line 292
    invoke-virtual {v7, v9}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setSampleDurationPresent(Z)V

    .line 293
    invoke-virtual {v7, v9}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setSampleSizePresent(Z)V

    .line 294
    new-instance v1, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->fragment:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 299
    .local v1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;>;"
    iget-object v8, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->source:Lcom/mp4parser/streaming/StreamingTrack;

    const-class v11, Lcom/mp4parser/streaming/extensions/CompositionTimeTrackExtension;

    invoke-interface {v8, v11}, Lcom/mp4parser/streaming/StreamingTrack;->getTrackExtension(Ljava/lang/Class;)Lcom/mp4parser/streaming/TrackExtension;

    move-result-object v8

    if-eqz v8, :cond_0

    move v8, v9

    :goto_0
    invoke-virtual {v7, v8}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setSampleCompositionTimeOffsetPresent(Z)V

    .line 301
    iget-object v8, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->source:Lcom/mp4parser/streaming/StreamingTrack;

    const-class v11, Lcom/mp4parser/streaming/extensions/SampleFlagsTrackExtension;

    invoke-interface {v8, v11}, Lcom/mp4parser/streaming/StreamingTrack;->getTrackExtension(Ljava/lang/Class;)Lcom/mp4parser/streaming/TrackExtension;

    move-result-object v8

    if-eqz v8, :cond_1

    move v3, v9

    .line 303
    .local v3, "sampleFlagsRequired":Z
    :goto_1
    invoke-virtual {v7, v3}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setSampleFlagsPresent(Z)V

    .line 305
    iget-object v8, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->fragment:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 337
    invoke-virtual {v7, v1}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->setEntries(Ljava/util/List;)V

    .line 339
    invoke-virtual {p1, v7}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 340
    return-void

    .end local v3    # "sampleFlagsRequired":Z
    :cond_0
    move v8, v10

    .line 299
    goto :goto_0

    :cond_1
    move v3, v10

    .line 301
    goto :goto_1

    .line 305
    .restart local v3    # "sampleFlagsRequired":Z
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mp4parser/streaming/StreamingSample;

    .line 306
    .local v6, "streamingSample":Lcom/mp4parser/streaming/StreamingSample;
    new-instance v2, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;

    invoke-direct {v2}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;-><init>()V

    .line 307
    .local v2, "entry":Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;
    invoke-interface {v6}, Lcom/mp4parser/streaming/StreamingSample;->getContent()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {v2, v10, v11}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->setSampleSize(J)V

    .line 308
    if-eqz v3, :cond_4

    .line 310
    const-class v9, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;

    invoke-static {v6, v9}, Lcom/mp4parser/streaming/StreamingSampleHelper;->getSampleExtension(Lcom/mp4parser/streaming/StreamingSample;Ljava/lang/Class;)Lcom/mp4parser/streaming/SampleExtension;

    move-result-object v4

    check-cast v4, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;

    .line 311
    .local v4, "sampleFlagsSampleExtension":Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;
    sget-boolean v9, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->$assertionsDisabled:Z

    if-nez v9, :cond_3

    if-nez v4, :cond_3

    new-instance v8, Ljava/lang/AssertionError;

    const-string/jumbo v9, "SampleDependencySampleExtension missing even though SampleDependencyTrackExtension was present"

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 312
    :cond_3
    new-instance v5, Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    invoke-direct {v5}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;-><init>()V

    .line 313
    .local v5, "sflags":Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    invoke-virtual {v4}, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;->getIsLeading()B

    move-result v9

    invoke-virtual {v5, v9}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setIsLeading(B)V

    .line 314
    invoke-virtual {v4}, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;->getSampleIsDependedOn()B

    move-result v9

    invoke-virtual {v5, v9}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSampleIsDependedOn(I)V

    .line 315
    invoke-virtual {v4}, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;->getSampleDependsOn()B

    move-result v9

    invoke-virtual {v5, v9}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSampleDependsOn(I)V

    .line 316
    invoke-virtual {v4}, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;->getSampleHasRedundancy()B

    move-result v9

    invoke-virtual {v5, v9}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSampleHasRedundancy(I)V

    .line 317
    invoke-virtual {v4}, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;->isSampleIsNonSyncSample()Z

    move-result v9

    invoke-virtual {v5, v9}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSampleIsDifferenceSample(Z)V

    .line 318
    invoke-virtual {v4}, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;->getSamplePaddingValue()B

    move-result v9

    invoke-virtual {v5, v9}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSamplePaddingValue(I)V

    .line 319
    invoke-virtual {v4}, Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;->getSampleDegradationPriority()I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->setSampleDegradationPriority(I)V

    .line 321
    invoke-virtual {v2, v5}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->setSampleFlags(Lcom/coremedia/iso/boxes/fragment/SampleFlags;)V

    .line 325
    .end local v4    # "sampleFlagsSampleExtension":Lcom/mp4parser/streaming/extensions/SampleFlagsSampleExtension;
    .end local v5    # "sflags":Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    :cond_4
    invoke-interface {v6}, Lcom/mp4parser/streaming/StreamingSample;->getDuration()J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->setSampleDuration(J)V

    .line 327
    invoke-virtual {v7}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleCompositionTimeOffsetPresent()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 329
    const-class v9, Lcom/mp4parser/streaming/extensions/CompositionTimeSampleExtension;

    invoke-static {v6, v9}, Lcom/mp4parser/streaming/StreamingSampleHelper;->getSampleExtension(Lcom/mp4parser/streaming/StreamingSample;Ljava/lang/Class;)Lcom/mp4parser/streaming/SampleExtension;

    move-result-object v0

    check-cast v0, Lcom/mp4parser/streaming/extensions/CompositionTimeSampleExtension;

    .line 330
    .local v0, "compositionTimeSampleExtension":Lcom/mp4parser/streaming/extensions/CompositionTimeSampleExtension;
    sget-boolean v9, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->$assertionsDisabled:Z

    if-nez v9, :cond_5

    if-nez v0, :cond_5

    new-instance v8, Ljava/lang/AssertionError;

    const-string/jumbo v9, "CompositionTimeSampleExtension missing even though CompositionTimeTrackExtension was present"

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 331
    :cond_5
    invoke-virtual {v0}, Lcom/mp4parser/streaming/extensions/CompositionTimeSampleExtension;->getCompositionTimeOffset()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->setSampleCompositionTimeOffset(I)V

    .line 334
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
    .line 207
    iget-object v3, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->outputStream:Ljava/io/OutputStream;

    invoke-static {v3}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v1

    .line 209
    .local v1, "out":Ljava/nio/channels/WritableByteChannel;
    invoke-virtual {p0}, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->createFtyp()Lcom/coremedia/iso/boxes/Box;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 210
    invoke-virtual {p0}, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->createMoov()Lcom/coremedia/iso/boxes/Box;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 216
    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->source:Lcom/mp4parser/streaming/StreamingTrack;

    invoke-interface {v3}, Lcom/mp4parser/streaming/StreamingTrack;->getSamples()Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    const-wide/16 v4, 0x64

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mp4parser/streaming/StreamingSample;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .local v2, "ss":Lcom/mp4parser/streaming/StreamingSample;
    if-nez v2, :cond_1

    .line 223
    .end local v2    # "ss":Lcom/mp4parser/streaming/StreamingSample;
    :goto_1
    iget-object v3, p0, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->source:Lcom/mp4parser/streaming/StreamingTrack;

    invoke-interface {v3}, Lcom/mp4parser/streaming/StreamingTrack;->hasMoreSamples()Z

    move-result v3

    if-nez v3, :cond_0

    .line 224
    return-void

    .line 217
    .restart local v2    # "ss":Lcom/mp4parser/streaming/StreamingSample;
    :cond_1
    :try_start_1
    invoke-direct {p0, v2, v1}, Lcom/mp4parser/streaming/SingleTrackFragmentedMp4Writer;->consumeSample(Lcom/mp4parser/streaming/StreamingSample;Ljava/nio/channels/WritableByteChannel;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 220
    .end local v2    # "ss":Lcom/mp4parser/streaming/StreamingSample;
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
