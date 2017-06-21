.class public final Lokio/DeflaterSink;
.super Ljava/lang/Object;
.source "DeflaterSink.java"

# interfaces
.implements Lokio/Sink;


# instance fields
.field private closed:Z

.field private final deflater:Ljava/util/zip/Deflater;

.field private final sink:Lokio/BufferedSink;


# direct methods
.method constructor <init>(Lokio/BufferedSink;Ljava/util/zip/Deflater;)V
    .locals 2
    .param p1, "sink"    # Lokio/BufferedSink;
    .param p2, "deflater"    # Ljava/util/zip/Deflater;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inflater == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    iput-object p1, p0, Lokio/DeflaterSink;->sink:Lokio/BufferedSink;

    .line 56
    iput-object p2, p0, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    .line 57
    return-void
.end method

.method public constructor <init>(Lokio/Sink;Ljava/util/zip/Deflater;)V
    .locals 1
    .param p1, "sink"    # Lokio/Sink;
    .param p2, "deflater"    # Ljava/util/zip/Deflater;

    .prologue
    .line 44
    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lokio/DeflaterSink;-><init>(Lokio/BufferedSink;Ljava/util/zip/Deflater;)V

    .line 45
    return-void
.end method

.method private deflate(Z)V
    .locals 8
    .param p1, "syncFlush"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .prologue
    .line 85
    iget-object v3, p0, Lokio/DeflaterSink;->sink:Lokio/BufferedSink;

    invoke-interface {v3}, Lokio/BufferedSink;->buffer()Lokio/Buffer;

    move-result-object v0

    .line 87
    .local v0, "buffer":Lokio/Buffer;
    :cond_0
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v2

    .line 93
    .local v2, "s":Lokio/Segment;
    if-eqz p1, :cond_1

    iget-object v3, p0, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v4, v2, Lokio/Segment;->data:[B

    iget v5, v2, Lokio/Segment;->limit:I

    iget v6, v2, Lokio/Segment;->limit:I

    rsub-int v6, v6, 0x800

    const/4 v7, 0x2

    invoke-virtual {v3, v4, v5, v6, v7}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v1

    .line 97
    .local v1, "deflated":I
    :goto_1
    if-lez v1, :cond_2

    .line 98
    iget v3, v2, Lokio/Segment;->limit:I

    add-int/2addr v3, v1

    iput v3, v2, Lokio/Segment;->limit:I

    .line 99
    iget-wide v4, v0, Lokio/Buffer;->size:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, v0, Lokio/Buffer;->size:J

    .line 100
    iget-object v3, p0, Lokio/DeflaterSink;->sink:Lokio/BufferedSink;

    invoke-interface {v3}, Lokio/BufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    goto :goto_0

    .line 93
    .end local v1    # "deflated":I
    :cond_1
    iget-object v3, p0, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v4, v2, Lokio/Segment;->data:[B

    iget v5, v2, Lokio/Segment;->limit:I

    iget v6, v2, Lokio/Segment;->limit:I

    rsub-int v6, v6, 0x800

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v1

    goto :goto_1

    .line 101
    .restart local v1    # "deflated":I
    :cond_2
    iget-object v3, p0, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    iget v3, v2, Lokio/Segment;->pos:I

    iget v4, v2, Lokio/Segment;->limit:I

    if-ne v3, v4, :cond_3

    .line 104
    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v3

    iput-object v3, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 105
    invoke-static {v2}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 107
    :cond_3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iget-boolean v2, p0, Lokio/DeflaterSink;->closed:Z

    if-eqz v2, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    const/4 v1, 0x0

    .line 129
    .local v1, "thrown":Ljava/lang/Throwable;
    :try_start_0
    invoke-virtual {p0}, Lokio/DeflaterSink;->finishDeflate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_1
    :try_start_1
    iget-object v2, p0, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->end()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 141
    :cond_2
    :goto_2
    :try_start_2
    iget-object v2, p0, Lokio/DeflaterSink;->sink:Lokio/BufferedSink;

    invoke-interface {v2}, Lokio/BufferedSink;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 145
    :cond_3
    :goto_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lokio/DeflaterSink;->closed:Z

    .line 147
    if-eqz v1, :cond_0

    invoke-static {v1}, Lokio/Util;->sneakyRethrow(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Throwable;
    move-object v1, v0

    goto :goto_1

    .line 136
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 137
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-nez v1, :cond_2

    move-object v1, v0

    goto :goto_2

    .line 142
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 143
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-nez v1, :cond_3

    move-object v1, v0

    goto :goto_3
.end method

.method finishDeflate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lokio/DeflaterSink;->deflate(Z)V

    .line 120
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lokio/DeflaterSink;->deflate(Z)V

    .line 114
    iget-object v0, p0, Lokio/DeflaterSink;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    .line 115
    return-void
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lokio/DeflaterSink;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DeflaterSink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokio/DeflaterSink;->sink:Lokio/BufferedSink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 8
    .param p1, "source"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 61
    iget-wide v0, p1, Lokio/Buffer;->size:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 62
    :goto_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_1

    .line 64
    iget-object v6, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 65
    .local v6, "head":Lokio/Segment;
    iget v0, v6, Lokio/Segment;->limit:I

    iget v1, v6, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v7, v0

    .line 66
    .local v7, "toDeflate":I
    iget-object v0, p0, Lokio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v1, v6, Lokio/Segment;->data:[B

    iget v4, v6, Lokio/Segment;->pos:I

    invoke-virtual {v0, v1, v4, v7}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lokio/DeflaterSink;->deflate(Z)V

    .line 72
    iget-wide v0, p1, Lokio/Buffer;->size:J

    int-to-long v4, v7

    sub-long/2addr v0, v4

    iput-wide v0, p1, Lokio/Buffer;->size:J

    .line 73
    iget v0, v6, Lokio/Segment;->pos:I

    add-int/2addr v0, v7

    iput v0, v6, Lokio/Segment;->pos:I

    .line 74
    iget v0, v6, Lokio/Segment;->pos:I

    iget v1, v6, Lokio/Segment;->limit:I

    if-ne v0, v1, :cond_0

    .line 75
    invoke-virtual {v6}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v0

    iput-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 76
    invoke-static {v6}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 79
    :cond_0
    int-to-long v0, v7

    sub-long/2addr p2, v0

    .line 80
    goto :goto_0

    .line 81
    .end local v6    # "head":Lokio/Segment;
    .end local v7    # "toDeflate":I
    :cond_1
    return-void
.end method
