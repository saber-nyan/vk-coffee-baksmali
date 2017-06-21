.class public Lcom/coremedia/iso/boxes/MetaBox;
.super Lcom/googlecode/mp4parser/AbstractContainerBox;
.source "MetaBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "meta"


# instance fields
.field private flags:I

.field private isFullBox:Z

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    const-string/jumbo v0, "meta"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremedia/iso/boxes/MetaBox;->isFullBox:Z

    .line 47
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
    .line 102
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/MetaBox;->getHeader()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 103
    iget-boolean v1, p0, Lcom/coremedia/iso/boxes/MetaBox;->isFullBox:Z

    if-eqz v1, :cond_0

    .line 104
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 105
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, v0}, Lcom/coremedia/iso/boxes/MetaBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 106
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 108
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/MetaBox;->writeContainer(Ljava/nio/channels/WritableByteChannel;)V

    .line 109
    return-void
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/coremedia/iso/boxes/MetaBox;->flags:I

    return v0
.end method

.method public getSize()J
    .locals 10

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/MetaBox;->getContainerSize()J

    move-result-wide v0

    .line 113
    .local v0, "s":J
    const-wide/16 v2, 0x0

    .line 114
    .local v2, "t":J
    iget-boolean v4, p0, Lcom/coremedia/iso/boxes/MetaBox;->isFullBox:Z

    if-eqz v4, :cond_0

    .line 115
    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    .line 117
    :cond_0
    add-long v6, v0, v2

    iget-boolean v4, p0, Lcom/coremedia/iso/boxes/MetaBox;->largeBox:Z

    if-nez v4, :cond_1

    add-long v4, v0, v2

    const-wide v8, 0x100000000L

    cmp-long v4, v4, v8

    if-ltz v4, :cond_2

    :cond_1
    const/16 v4, 0x10

    :goto_0
    int-to-long v4, v4

    add-long/2addr v4, v6

    return-wide v4

    :cond_2
    const/16 v4, 0x8

    goto :goto_0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/coremedia/iso/boxes/MetaBox;->version:I

    return v0
.end method

.method public parse(Lcom/googlecode/mp4parser/DataSource;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/BoxParser;)V
    .locals 7
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
    .line 84
    invoke-static {p3, p4}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 85
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-interface {p1, v0}, Lcom/googlecode/mp4parser/DataSource;->read(Ljava/nio/ByteBuffer;)I

    .line 86
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 87
    invoke-static {v0}, Lcom/coremedia/iso/IsoTypeReader;->read4cc(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "isHdlr":Ljava/lang/String;
    const-string/jumbo v2, "hdlr"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/coremedia/iso/boxes/MetaBox;->isFullBox:Z

    .line 90
    new-instance v3, Lcom/googlecode/mp4parser/MemoryDataSourceImpl;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-direct {v3, v2}, Lcom/googlecode/mp4parser/MemoryDataSourceImpl;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0, v3, p3, p4, p5}, Lcom/coremedia/iso/boxes/MetaBox;->initContainer(Lcom/googlecode/mp4parser/DataSource;JLcom/coremedia/iso/BoxParser;)V

    .line 98
    :goto_0
    return-void

    .line 93
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/coremedia/iso/boxes/MetaBox;->isFullBox:Z

    .line 94
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2}, Lcom/coremedia/iso/boxes/MetaBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 95
    new-instance v2, Lcom/googlecode/mp4parser/MemoryDataSourceImpl;

    invoke-direct {v2, v0}, Lcom/googlecode/mp4parser/MemoryDataSourceImpl;-><init>(Ljava/nio/ByteBuffer;)V

    const-wide/16 v4, 0x4

    sub-long v4, p3, v4

    invoke-virtual {p0, v2, v4, v5, p5}, Lcom/coremedia/iso/boxes/MetaBox;->initContainer(Lcom/googlecode/mp4parser/DataSource;JLcom/coremedia/iso/BoxParser;)V

    goto :goto_0
.end method

.method protected final parseVersionAndFlags(Ljava/nio/ByteBuffer;)J
    .locals 2
    .param p1, "content"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 72
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/MetaBox;->version:I

    .line 73
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt24(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/MetaBox;->flags:I

    .line 74
    const-wide/16 v0, 0x4

    return-wide v0
.end method

.method public setFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/coremedia/iso/boxes/MetaBox;->flags:I

    .line 63
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/coremedia/iso/boxes/MetaBox;->version:I

    .line 55
    return-void
.end method

.method protected final writeVersionAndFlags(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 78
    iget v0, p0, Lcom/coremedia/iso/boxes/MetaBox;->version:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt8(Ljava/nio/ByteBuffer;I)V

    .line 79
    iget v0, p0, Lcom/coremedia/iso/boxes/MetaBox;->flags:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt24(Ljava/nio/ByteBuffer;I)V

    .line 80
    return-void
.end method
