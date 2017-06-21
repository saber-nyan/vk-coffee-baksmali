.class public Lcom/googlecode/mp4parser/authoring/tracks/webvtt/sampleboxes/VTTEmptyCueBox;
.super Lcom/mp4parser/streaming/WriteOnlyBox;
.source "VTTEmptyCueBox.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const-string/jumbo v0, "vtte"

    invoke-direct {p0, v0}, Lcom/mp4parser/streaming/WriteOnlyBox;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method public getBox(Ljava/nio/channels/WritableByteChannel;)V
    .locals 4
    .param p1, "writableByteChannel"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 22
    .local v0, "header":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/sampleboxes/VTTEmptyCueBox;->getSize()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 23
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/tracks/webvtt/sampleboxes/VTTEmptyCueBox;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 24
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 25
    return-void
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 17
    const-wide/16 v0, 0x8

    return-wide v0
.end method
