.class public Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;
.super Ljava/lang/Object;
.source "MultiFileDataSourceImpl.java"

# interfaces
.implements Lcom/googlecode/mp4parser/DataSource;


# instance fields
.field fcs:[Ljava/nio/channels/FileChannel;

.field index:I


# direct methods
.method public varargs constructor <init>([Ljava/io/File;)V
    .locals 4
    .param p1, "f"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v1, 0x0

    iput v1, p0, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->index:I

    .line 22
    array-length v1, p1

    new-array v1, v1, [Ljava/nio/channels/FileChannel;

    iput-object v1, p0, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->fcs:[Ljava/nio/channels/FileChannel;

    .line 23
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 26
    return-void

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->fcs:[Ljava/nio/channels/FileChannel;

    new-instance v2, Ljava/io/FileInputStream;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    aput-object v2, v1, v0

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v2, p0, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->fcs:[Ljava/nio/channels/FileChannel;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 99
    return-void

    .line 96
    :cond_0
    aget-object v0, v2, v1

    .line 97
    .local v0, "fileChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public map(JJ)Ljava/nio/ByteBuffer;
    .locals 7
    .param p1, "startPosition"    # J
    .param p3, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-static {p3, p4}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 90
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {v0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 91
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public position()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    const-wide/16 v2, 0x0

    .line 51
    .local v2, "position":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->index:I

    if-lt v0, v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->fcs:[Ljava/nio/channels/FileChannel;

    iget v4, p0, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->index:I

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    add-long/2addr v4, v2

    return-wide v4

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->fcs:[Ljava/nio/channels/FileChannel;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public position(J)V
    .locals 7
    .param p1, "nuPos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->fcs:[Ljava/nio/channels/FileChannel;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 68
    :goto_1
    return-void

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->fcs:[Ljava/nio/channels/FileChannel;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    sub-long v2, p1, v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 61
    iget-object v1, p0, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->fcs:[Ljava/nio/channels/FileChannel;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 62
    iput v0, p0, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->index:I

    goto :goto_1

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->fcs:[Ljava/nio/channels/FileChannel;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    sub-long/2addr p1, v2

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 4
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 31
    .local v1, "numOfBytesToRead":I
    const/4 v0, 0x0

    .line 32
    .local v0, "numOfBytesRead":I
    iget-object v2, p0, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->fcs:[Ljava/nio/channels/FileChannel;

    iget v3, p0, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->index:I

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 33
    iget v2, p0, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->index:I

    .line 34
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    add-int/2addr v0, v2

    .line 36
    .end local v0    # "numOfBytesRead":I
    :cond_0
    return v0
.end method

.method public size()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    const-wide/16 v2, 0x0

    .line 43
    .local v2, "size":J
    iget-object v4, p0, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->fcs:[Ljava/nio/channels/FileChannel;

    array-length v5, v4

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v5, :cond_0

    .line 46
    return-wide v2

    .line 43
    :cond_0
    aget-object v0, v4, v1

    .line 44
    .local v0, "fileChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    .locals 21
    .param p1, "startPosition"    # J
    .param p3, "count"    # J
    .param p5, "sink"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    const-wide/16 v4, 0x0

    cmp-long v2, p3, v4

    if-nez v2, :cond_0

    .line 72
    const-wide/16 v4, 0x0

    .line 85
    :goto_0
    return-wide v4

    .line 74
    :cond_0
    const-wide/16 v16, 0x0

    .line 75
    .local v16, "currentPos":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->fcs:[Ljava/nio/channels/FileChannel;

    array-length v5, v4

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v5, :cond_1

    .line 85
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 75
    :cond_1
    aget-object v3, v4, v2

    .line 76
    .local v3, "fc":Ljava/nio/channels/FileChannel;
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v18

    .line 77
    .local v18, "size":J
    cmp-long v8, p1, v16

    if-ltz v8, :cond_2

    add-long v8, v16, v18

    cmp-long v8, p1, v8

    if-gez v8, :cond_2

    add-long v8, p1, p3

    cmp-long v8, v8, v16

    if-lez v8, :cond_2

    .line 78
    sub-long v4, p1, v16

    sub-long v4, v18, v4

    move-wide/from16 v0, p3

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 79
    .local v6, "bytesToTransfer":J
    sub-long v4, p1, v16

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 80
    add-long v10, p1, v6

    sub-long v12, p3, v6

    move-object/from16 v9, p0

    move-object/from16 v14, p5

    invoke-virtual/range {v9 .. v14}, Lcom/googlecode/mp4parser/MultiFileDataSourceImpl;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v4

    add-long/2addr v4, v6

    goto :goto_0

    .line 82
    .end local v6    # "bytesToTransfer":J
    :cond_2
    add-long v16, v16, v18

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
