.class Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer$1;
.super Lcom/mp4parser/streaming/WriteOnlyBox;
.source "MultiTrackFragmentedMp4Writer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->createMdat(Lcom/mp4parser/streaming/StreamingTrack;)Lcom/coremedia/iso/boxes/Box;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;

.field private final synthetic val$streamingTrack:Lcom/mp4parser/streaming/StreamingTrack;


# direct methods
.method constructor <init>(Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;Ljava/lang/String;Lcom/mp4parser/streaming/StreamingTrack;)V
    .locals 0
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer$1;->this$0:Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;

    iput-object p3, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer$1;->val$streamingTrack:Lcom/mp4parser/streaming/StreamingTrack;

    .line 469
    invoke-direct {p0, p2}, Lcom/mp4parser/streaming/WriteOnlyBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBox(Ljava/nio/channels/WritableByteChannel;)V
    .locals 10
    .param p1, "writableByteChannel"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 479
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 480
    .local v4, "sampleContents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/nio/ByteBuffer;>;"
    const-wide/16 v2, 0x8

    .line 481
    .local v2, "l":J
    iget-object v6, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer$1;->this$0:Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;

    iget-object v6, v6, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->fragmentBuffers:Ljava/util/Map;

    iget-object v7, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer$1;->val$streamingTrack:Lcom/mp4parser/streaming/StreamingTrack;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 486
    const/16 v6, 0x8

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 487
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {v0, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 488
    invoke-virtual {p0}, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer$1;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 489
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v6}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 491
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 494
    return-void

    .line 481
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mp4parser/streaming/StreamingSample;

    .line 482
    .local v5, "streamingSample":Lcom/mp4parser/streaming/StreamingSample;
    invoke-interface {v5}, Lcom/mp4parser/streaming/StreamingSample;->getContent()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 483
    .local v1, "sampleContent":Ljava/nio/ByteBuffer;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    int-to-long v8, v7

    add-long/2addr v2, v8

    goto :goto_0

    .line 491
    .end local v1    # "sampleContent":Ljava/nio/ByteBuffer;
    .end local v5    # "streamingSample":Lcom/mp4parser/streaming/StreamingSample;
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 492
    .restart local v1    # "sampleContent":Ljava/nio/ByteBuffer;
    invoke-interface {p1, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_1
.end method

.method public getSize()J
    .locals 6

    .prologue
    .line 471
    const-wide/16 v0, 0x8

    .line 472
    .local v0, "l":J
    iget-object v3, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer$1;->this$0:Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;

    iget-object v3, v3, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer;->fragmentBuffers:Ljava/util/Map;

    iget-object v4, p0, Lcom/mp4parser/streaming/MultiTrackFragmentedMp4Writer$1;->val$streamingTrack:Lcom/mp4parser/streaming/StreamingTrack;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 475
    return-wide v0

    .line 472
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mp4parser/streaming/StreamingSample;

    .line 473
    .local v2, "streamingSample":Lcom/mp4parser/streaming/StreamingSample;
    invoke-interface {v2}, Lcom/mp4parser/streaming/StreamingSample;->getContent()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_0
.end method
