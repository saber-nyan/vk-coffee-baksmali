.class Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack$1;
.super Ljava/lang/Object;
.source "WebVttTrack.java"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/Sample;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field vtte:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v1, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/sampleboxes/VTTEmptyCueBox;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/sampleboxes/VTTEmptyCueBox;-><init>()V

    .line 59
    .local v1, "vttEmptyCueBox":Lcom/googlecode/mp4parser/authoring/tracks/webvtt/sampleboxes/VTTEmptyCueBox;
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/sampleboxes/VTTEmptyCueBox;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack$1;->vtte:Ljava/nio/ByteBuffer;

    .line 61
    :try_start_0
    new-instance v2, Lcom/googlecode/mp4parser/util/ByteBufferByteChannel;

    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack$1;->vtte:Ljava/nio/ByteBuffer;

    invoke-direct {v2, v3}, Lcom/googlecode/mp4parser/util/ByteBufferByteChannel;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/sampleboxes/VTTEmptyCueBox;->getBox(Ljava/nio/channels/WritableByteChannel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack$1;->vtte:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public asByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack$1;->vtte:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack$1;->vtte:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public writeTo(Ljava/nio/channels/WritableByteChannel;)V
    .locals 1
    .param p1, "channel"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/WebVttTrack$1;->vtte:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 71
    return-void
.end method
