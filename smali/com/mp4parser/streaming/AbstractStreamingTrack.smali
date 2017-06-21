.class public abstract Lcom/mp4parser/streaming/AbstractStreamingTrack;
.super Ljava/lang/Object;
.source "AbstractStreamingTrack.java"

# interfaces
.implements Lcom/mp4parser/streaming/StreamingTrack;


# instance fields
.field protected samples:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/mp4parser/streaming/StreamingSample;",
            ">;"
        }
    .end annotation
.end field

.field protected stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

.field protected tkhd:Lcom/coremedia/iso/boxes/TrackHeaderBox;

.field protected trackExtensions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mp4parser/streaming/TrackExtension;",
            ">;",
            "Lcom/mp4parser/streaming/TrackExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/mp4parser/streaming/AbstractStreamingTrack;->samples:Ljava/util/concurrent/BlockingQueue;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mp4parser/streaming/AbstractStreamingTrack;->trackExtensions:Ljava/util/HashMap;

    .line 21
    new-instance v0, Lcom/coremedia/iso/boxes/TrackHeaderBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/TrackHeaderBox;-><init>()V

    iput-object v0, p0, Lcom/mp4parser/streaming/AbstractStreamingTrack;->tkhd:Lcom/coremedia/iso/boxes/TrackHeaderBox;

    .line 22
    iget-object v0, p0, Lcom/mp4parser/streaming/AbstractStreamingTrack;->tkhd:Lcom/coremedia/iso/boxes/TrackHeaderBox;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setTrackId(J)V

    .line 23
    return-void
.end method


# virtual methods
.method public addTrackExtension(Lcom/mp4parser/streaming/TrackExtension;)V
    .locals 2
    .param p1, "trackExtension"    # Lcom/mp4parser/streaming/TrackExtension;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mp4parser/streaming/AbstractStreamingTrack;->trackExtensions:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mp4parser/streaming/AbstractStreamingTrack;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    return-object v0
.end method

.method public getSamples()Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/mp4parser/streaming/StreamingSample;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mp4parser/streaming/AbstractStreamingTrack;->samples:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method public getTrackExtension(Ljava/lang/Class;)Lcom/mp4parser/streaming/TrackExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/mp4parser/streaming/TrackExtension;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/mp4parser/streaming/AbstractStreamingTrack;->trackExtensions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mp4parser/streaming/TrackExtension;

    return-object v0
.end method

.method public getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mp4parser/streaming/AbstractStreamingTrack;->tkhd:Lcom/coremedia/iso/boxes/TrackHeaderBox;

    return-object v0
.end method

.method public hasMoreSamples()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public removeTrackExtension(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mp4parser/streaming/TrackExtension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/mp4parser/streaming/TrackExtension;>;"
    iget-object v0, p0, Lcom/mp4parser/streaming/AbstractStreamingTrack;->trackExtensions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method
