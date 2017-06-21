.class public Lorg/apache/http/entity/BufferedHttpEntity;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "BufferedHttpEntity.java"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final buffer:[B


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;)V
    .locals 6
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 62
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 63
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 64
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    invoke-interface {p1, v0}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 65
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 66
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/entity/BufferedHttpEntity;->buffer:[B

    .line 70
    .end local v0    # "out":Ljava/io/ByteArrayOutputStream;
    :goto_0
    return-void

    .line 68
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/http/entity/BufferedHttpEntity;->buffer:[B

    goto :goto_0
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/http/entity/BufferedHttpEntity;->buffer:[B

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/http/entity/BufferedHttpEntity;->buffer:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 86
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->getContent()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/http/entity/BufferedHttpEntity;->buffer:[B

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lorg/apache/http/entity/BufferedHttpEntity;->buffer:[B

    array-length v0, v0

    int-to-long v0, v0

    .line 77
    :goto_0
    return-wide v0

    :cond_0
    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->getContentLength()J

    move-result-wide v0

    goto :goto_0
.end method

.method public isChunked()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/http/entity/BufferedHttpEntity;->buffer:[B

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->isChunked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/http/entity/BufferedHttpEntity;->buffer:[B

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    const-string v0, "Output stream"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lorg/apache/http/entity/BufferedHttpEntity;->buffer:[B

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lorg/apache/http/entity/BufferedHttpEntity;->buffer:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_0
.end method
