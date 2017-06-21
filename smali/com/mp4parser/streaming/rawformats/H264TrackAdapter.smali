.class public Lcom/mp4parser/streaming/rawformats/H264TrackAdapter;
.super Lcom/mp4parser/streaming/AbstractStreamingTrack;
.source "H264TrackAdapter.java"


# instance fields
.field h264Track:Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;)V
    .locals 3
    .param p1, "h264Track"    # Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/mp4parser/streaming/AbstractStreamingTrack;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/mp4parser/streaming/rawformats/H264TrackAdapter;->h264Track:Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;

    .line 28
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x64

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    iput-object v0, p0, Lcom/mp4parser/streaming/rawformats/H264TrackAdapter;->samples:Ljava/util/concurrent/BlockingQueue;

    .line 29
    new-instance v0, Lcom/mp4parser/streaming/rawformats/H264TrackAdapter$1;

    invoke-direct {v0, p0}, Lcom/mp4parser/streaming/rawformats/H264TrackAdapter$1;-><init>(Lcom/mp4parser/streaming/rawformats/H264TrackAdapter;)V

    .line 38
    invoke-virtual {v0}, Lcom/mp4parser/streaming/rawformats/H264TrackAdapter$1;->start()V

    .line 39
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v0

    iput-object v0, p0, Lcom/mp4parser/streaming/rawformats/H264TrackAdapter;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    .line 40
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;

    new-instance v3, Lcom/googlecode/mp4parser/FileDataSourceImpl;

    const-string/jumbo v4, "c:\\content\\big_buck_bunny_1080p_h264-2min.h264"

    invoke-direct {v3, v4}, Lcom/googlecode/mp4parser/FileDataSourceImpl;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;-><init>(Lcom/googlecode/mp4parser/DataSource;)V

    .line 85
    .local v0, "h264Track":Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;
    new-instance v2, Lcom/mp4parser/streaming/rawformats/H264TrackAdapter;

    invoke-direct {v2, v0}, Lcom/mp4parser/streaming/rawformats/H264TrackAdapter;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;)V

    .line 87
    .local v2, "streamingTrack":Lcom/mp4parser/streaming/StreamingTrack;
    new-instance v1, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/mp4parser/streaming/StreamingTrack;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    new-instance v4, Ljava/io/FileOutputStream;

    const-string/jumbo v5, "output.mp4"

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3, v4}, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;-><init>([Lcom/mp4parser/streaming/StreamingTrack;Ljava/io/OutputStream;)V

    .line 88
    .local v1, "mp4Writer":Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;
    invoke-virtual {v1}, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->write()V

    .line 89
    return-void
.end method


# virtual methods
.method public getHandler()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mp4parser/streaming/rawformats/H264TrackAdapter;->h264Track:Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->getHandler()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mp4parser/streaming/rawformats/H264TrackAdapter;->h264Track:Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimescale()J
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mp4parser/streaming/rawformats/H264TrackAdapter;->h264Track:Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v0

    return-wide v0
.end method

.method public parse()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v5, p0, Lcom/mp4parser/streaming/rawformats/H264TrackAdapter;->h264Track:Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;

    invoke-virtual {v5}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->getSamples()Ljava/util/List;

    move-result-object v3

    .line 46
    .local v3, "oldsamples":Ljava/util/List;, "Ljava/util/List<Lcom/googlecode/mp4parser/authoring/Sample;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lt v2, v5, :cond_0

    .line 66
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v6, "Jo!"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 68
    return-void

    .line 47
    :cond_0
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Jo! "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 48
    iget-object v5, p0, Lcom/mp4parser/streaming/rawformats/H264TrackAdapter;->h264Track:Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;

    invoke-virtual {v5}, Lcom/googlecode/mp4parser/authoring/tracks/h264/H264TrackImpl;->getSampleDurations()[J

    move-result-object v5

    aget-wide v0, v5, v2

    .line 49
    .local v0, "duration":J
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/googlecode/mp4parser/authoring/Sample;

    .line 51
    .local v4, "sample":Lcom/googlecode/mp4parser/authoring/Sample;
    iget-object v5, p0, Lcom/mp4parser/streaming/rawformats/H264TrackAdapter;->samples:Ljava/util/concurrent/BlockingQueue;

    new-instance v6, Lcom/mp4parser/streaming/rawformats/H264TrackAdapter$2;

    invoke-direct {v6, p0, v4, v0, v1}, Lcom/mp4parser/streaming/rawformats/H264TrackAdapter$2;-><init>(Lcom/mp4parser/streaming/rawformats/H264TrackAdapter;Lcom/googlecode/mp4parser/authoring/Sample;J)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 46
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
