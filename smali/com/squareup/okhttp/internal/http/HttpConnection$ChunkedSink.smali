.class final Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSink;
.super Ljava/lang/Object;
.source "HttpConnection.java"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/http/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ChunkedSink"
.end annotation


# instance fields
.field private closed:Z

.field final synthetic this$0:Lcom/squareup/okhttp/internal/http/HttpConnection;

.field private final timeout:Lokio/ForwardingTimeout;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/http/HttpConnection;)V
    .locals 2

    .prologue
    .line 325
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSink;->this$0:Lcom/squareup/okhttp/internal/http/HttpConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    new-instance v0, Lokio/ForwardingTimeout;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSink;->this$0:Lcom/squareup/okhttp/internal/http/HttpConnection;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/http/HttpConnection;->access$300(Lcom/squareup/okhttp/internal/http/HttpConnection;)Lokio/BufferedSink;

    move-result-object v1

    invoke-interface {v1}, Lokio/BufferedSink;->timeout()Lokio/Timeout;

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ForwardingTimeout;-><init>(Lokio/Timeout;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSink;->timeout:Lokio/ForwardingTimeout;

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/http/HttpConnection;Lcom/squareup/okhttp/internal/http/HttpConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/squareup/okhttp/internal/http/HttpConnection;
    .param p2, "x1"    # Lcom/squareup/okhttp/internal/http/HttpConnection$1;

    .prologue
    .line 325
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSink;-><init>(Lcom/squareup/okhttp/internal/http/HttpConnection;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSink;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 354
    :goto_0
    monitor-exit p0

    return-void

    .line 350
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSink;->closed:Z

    .line 351
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSink;->this$0:Lcom/squareup/okhttp/internal/http/HttpConnection;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpConnection;->access$300(Lcom/squareup/okhttp/internal/http/HttpConnection;)Lokio/BufferedSink;

    move-result-object v0

    const-string/jumbo v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 352
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSink;->this$0:Lcom/squareup/okhttp/internal/http/HttpConnection;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSink;->timeout:Lokio/ForwardingTimeout;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/HttpConnection;->access$400(Lcom/squareup/okhttp/internal/http/HttpConnection;Lokio/ForwardingTimeout;)V

    .line 353
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSink;->this$0:Lcom/squareup/okhttp/internal/http/HttpConnection;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/HttpConnection;->access$502(Lcom/squareup/okhttp/internal/http/HttpConnection;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSink;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 346
    :goto_0
    monitor-exit p0

    return-void

    .line 345
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSink;->this$0:Lcom/squareup/okhttp/internal/http/HttpConnection;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpConnection;->access$300(Lcom/squareup/okhttp/internal/http/HttpConnection;)Lokio/BufferedSink;

    move-result-object v0

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSink;->timeout:Lokio/ForwardingTimeout;

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 2
    .param p1, "source"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 341
    :goto_0
    return-void

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSink;->this$0:Lcom/squareup/okhttp/internal/http/HttpConnection;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpConnection;->access$300(Lcom/squareup/okhttp/internal/http/HttpConnection;)Lokio/BufferedSink;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lokio/BufferedSink;->writeHexadecimalUnsignedLong(J)Lokio/BufferedSink;

    .line 338
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSink;->this$0:Lcom/squareup/okhttp/internal/http/HttpConnection;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpConnection;->access$300(Lcom/squareup/okhttp/internal/http/HttpConnection;)Lokio/BufferedSink;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 339
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSink;->this$0:Lcom/squareup/okhttp/internal/http/HttpConnection;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpConnection;->access$300(Lcom/squareup/okhttp/internal/http/HttpConnection;)Lokio/BufferedSink;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    .line 340
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSink;->this$0:Lcom/squareup/okhttp/internal/http/HttpConnection;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpConnection;->access$300(Lcom/squareup/okhttp/internal/http/HttpConnection;)Lokio/BufferedSink;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    goto :goto_0
.end method
