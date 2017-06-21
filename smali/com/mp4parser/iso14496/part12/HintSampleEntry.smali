.class public Lcom/mp4parser/iso14496/part12/HintSampleEntry;
.super Lcom/coremedia/iso/boxes/sampleentry/AbstractSampleEntry;
.source "HintSampleEntry.java"


# instance fields
.field protected data:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/AbstractSampleEntry;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getBox(Ljava/nio/channels/WritableByteChannel;)V
    .locals 2
    .param p1, "writableByteChannel"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/mp4parser/iso14496/part12/HintSampleEntry;->getHeader()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 37
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 38
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 39
    iget v1, p0, Lcom/mp4parser/iso14496/part12/HintSampleEntry;->dataReferenceIndex:I

    invoke-static {v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt16(Ljava/nio/ByteBuffer;I)V

    .line 40
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 41
    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 42
    iget-object v1, p0, Lcom/mp4parser/iso14496/part12/HintSampleEntry;->data:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 43
    return-void
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mp4parser/iso14496/part12/HintSampleEntry;->data:[B

    return-object v0
.end method

.method public getSize()J
    .locals 6

    .prologue
    .line 57
    iget-object v2, p0, Lcom/mp4parser/iso14496/part12/HintSampleEntry;->data:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x8

    int-to-long v0, v2

    .line 58
    .local v0, "s":J
    iget-boolean v2, p0, Lcom/mp4parser/iso14496/part12/HintSampleEntry;->largeBox:Z

    if-nez v2, :cond_0

    const-wide/16 v2, 0x8

    add-long/2addr v2, v0

    const-wide v4, 0x100000000L

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    :cond_0
    const/16 v2, 0x10

    :goto_0
    int-to-long v2, v2

    add-long/2addr v2, v0

    return-wide v2

    :cond_1
    const/16 v2, 0x8

    goto :goto_0
.end method

.method public parse(Lcom/googlecode/mp4parser/DataSource;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/BoxParser;)V
    .locals 5
    .param p1, "dataSource"    # Lcom/googlecode/mp4parser/DataSource;
    .param p2, "header"    # Ljava/nio/ByteBuffer;
    .param p3, "contentSize"    # J
    .param p5, "boxParser"    # Lcom/coremedia/iso/BoxParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 26
    .local v0, "b1":Ljava/nio/ByteBuffer;
    invoke-interface {p1, v0}, Lcom/googlecode/mp4parser/DataSource;->read(Ljava/nio/ByteBuffer;)I

    .line 27
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 28
    invoke-static {v0}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/mp4parser/iso14496/part12/HintSampleEntry;->dataReferenceIndex:I

    .line 29
    const-wide/16 v2, 0x8

    sub-long v2, p3, v2

    invoke-static {v2, v3}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mp4parser/iso14496/part12/HintSampleEntry;->data:[B

    .line 30
    iget-object v1, p0, Lcom/mp4parser/iso14496/part12/HintSampleEntry;->data:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/googlecode/mp4parser/DataSource;->read(Ljava/nio/ByteBuffer;)I

    .line 31
    return-void
.end method

.method public setData([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 50
    iput-object p1, p0, Lcom/mp4parser/iso14496/part12/HintSampleEntry;->data:[B

    .line 51
    return-void
.end method
