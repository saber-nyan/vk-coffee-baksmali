.class Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer$ConsumeSamplesCallable;
.super Ljava/lang/Object;
.source "MultiTrackFragmentedMp4Writer.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConsumeSamplesCallable"
.end annotation


# instance fields
.field private streamingTrack:Lcom/mp4parser/streaming/StreamingTrack;

.field final synthetic this$0:Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;


# direct methods
.method public constructor <init>(Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;Lcom/mp4parser/streaming/StreamingTrack;)V
    .locals 0
    .param p2, "streamingTrack"    # Lcom/mp4parser/streaming/StreamingTrack;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer$ConsumeSamplesCallable;->this$0:Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p2, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer$ConsumeSamplesCallable;->streamingTrack:Lcom/mp4parser/streaming/StreamingTrack;

    .line 267
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 273
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer$ConsumeSamplesCallable;->streamingTrack:Lcom/mp4parser/streaming/StreamingTrack;

    invoke-interface {v2}, Lcom/mp4parser/streaming/StreamingTrack;->getSamples()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    const-wide/16 v4, 0x64

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mp4parser/streaming/StreamingSample;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, "ss":Lcom/mp4parser/streaming/StreamingSample;
    if-nez v1, :cond_1

    .line 280
    .end local v1    # "ss":Lcom/mp4parser/streaming/StreamingSample;
    :goto_1
    iget-object v2, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer$ConsumeSamplesCallable;->streamingTrack:Lcom/mp4parser/streaming/StreamingTrack;

    invoke-interface {v2}, Lcom/mp4parser/streaming/StreamingTrack;->hasMoreSamples()Z

    move-result v2

    if-nez v2, :cond_0

    .line 281
    const/4 v2, 0x0

    return-object v2

    .line 274
    .restart local v1    # "ss":Lcom/mp4parser/streaming/StreamingSample;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer$ConsumeSamplesCallable;->this$0:Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;

    iget-object v3, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer$ConsumeSamplesCallable;->streamingTrack:Lcom/mp4parser/streaming/StreamingTrack;

    invoke-static {v2, v3, v1}, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->access$0(Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;Lcom/mp4parser/streaming/StreamingTrack;Lcom/mp4parser/streaming/StreamingSample;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 277
    .end local v1    # "ss":Lcom/mp4parser/streaming/StreamingSample;
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
