.class public final Lcom/squareup/okhttp/internal/http/HttpConnection;
.super Ljava/lang/Object;
.source "HttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/http/HttpConnection$UnknownLengthSource;,
        Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSource;,
        Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;,
        Lcom/squareup/okhttp/internal/http/HttpConnection$AbstractSource;,
        Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSink;,
        Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSink;
    }
.end annotation


# static fields
.field private static final ON_IDLE_CLOSE:I = 0x2

.field private static final ON_IDLE_HOLD:I = 0x0

.field private static final ON_IDLE_POOL:I = 0x1

.field private static final STATE_CLOSED:I = 0x6

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_OPEN_REQUEST_BODY:I = 0x1

.field private static final STATE_OPEN_RESPONSE_BODY:I = 0x4

.field private static final STATE_READING_RESPONSE_BODY:I = 0x5

.field private static final STATE_READ_RESPONSE_HEADERS:I = 0x3

.field private static final STATE_WRITING_REQUEST_BODY:I = 0x2


# instance fields
.field private final connection:Lcom/squareup/okhttp/Connection;

.field private onIdle:I

.field private final pool:Lcom/squareup/okhttp/ConnectionPool;

.field private final sink:Lokio/BufferedSink;

.field private final socket:Ljava/net/Socket;

.field private final source:Lokio/BufferedSource;

.field private state:I


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/ConnectionPool;Lcom/squareup/okhttp/Connection;Ljava/net/Socket;)V
    .locals 1
    .param p1, "pool"    # Lcom/squareup/okhttp/ConnectionPool;
    .param p2, "connection"    # Lcom/squareup/okhttp/Connection;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    .line 83
    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->onIdle:I

    .line 87
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->pool:Lcom/squareup/okhttp/ConnectionPool;

    .line 88
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->connection:Lcom/squareup/okhttp/Connection;

    .line 89
    iput-object p3, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    .line 90
    invoke-static {p3}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->source:Lokio/BufferedSource;

    .line 91
    invoke-static {p3}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->sink:Lokio/BufferedSink;

    .line 92
    return-void
.end method

.method static synthetic access$300(Lcom/squareup/okhttp/internal/http/HttpConnection;)Lokio/BufferedSink;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/HttpConnection;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->sink:Lokio/BufferedSink;

    return-object v0
.end method

.method static synthetic access$400(Lcom/squareup/okhttp/internal/http/HttpConnection;Lokio/ForwardingTimeout;)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/HttpConnection;
    .param p1, "x1"    # Lokio/ForwardingTimeout;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/HttpConnection;->detachTimeout(Lokio/ForwardingTimeout;)V

    return-void
.end method

.method static synthetic access$500(Lcom/squareup/okhttp/internal/http/HttpConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/HttpConnection;

    .prologue
    .line 63
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    return v0
.end method

.method static synthetic access$502(Lcom/squareup/okhttp/internal/http/HttpConnection;I)I
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/HttpConnection;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    return p1
.end method

.method static synthetic access$600(Lcom/squareup/okhttp/internal/http/HttpConnection;)Lokio/BufferedSource;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/HttpConnection;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->source:Lokio/BufferedSource;

    return-object v0
.end method

.method static synthetic access$700(Lcom/squareup/okhttp/internal/http/HttpConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/HttpConnection;

    .prologue
    .line 63
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->onIdle:I

    return v0
.end method

.method static synthetic access$702(Lcom/squareup/okhttp/internal/http/HttpConnection;I)I
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/HttpConnection;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->onIdle:I

    return p1
.end method

.method static synthetic access$800(Lcom/squareup/okhttp/internal/http/HttpConnection;)Lcom/squareup/okhttp/ConnectionPool;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/HttpConnection;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->pool:Lcom/squareup/okhttp/ConnectionPool;

    return-object v0
.end method

.method static synthetic access$900(Lcom/squareup/okhttp/internal/http/HttpConnection;)Lcom/squareup/okhttp/Connection;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/HttpConnection;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->connection:Lcom/squareup/okhttp/Connection;

    return-object v0
.end method

.method private detachTimeout(Lokio/ForwardingTimeout;)V
    .locals 2
    .param p1, "timeout"    # Lokio/ForwardingTimeout;

    .prologue
    .line 275
    invoke-virtual {p1}, Lokio/ForwardingTimeout;->delegate()Lokio/Timeout;

    move-result-object v0

    .line 276
    .local v0, "oldDelegate":Lokio/Timeout;
    sget-object v1, Lokio/Timeout;->NONE:Lokio/Timeout;

    invoke-virtual {p1, v1}, Lokio/ForwardingTimeout;->setDelegate(Lokio/Timeout;)Lokio/ForwardingTimeout;

    .line 277
    invoke-virtual {v0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 278
    invoke-virtual {v0}, Lokio/Timeout;->clearTimeout()Lokio/Timeout;

    .line 279
    return-void
.end method


# virtual methods
.method public bufferSize()J
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public closeIfOwnedBy(Ljava/lang/Object;)V
    .locals 2
    .param p1, "owner"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    sget-object v0, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/internal/Internal;->closeIfOwnedBy(Lcom/squareup/okhttp/Connection;Ljava/lang/Object;)V

    .line 138
    return-void
.end method

.method public closeOnIdle()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x2

    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->onIdle:I

    .line 125
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x6

    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    .line 127
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 129
    :cond_0
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
    .line 141
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    .line 142
    return-void
.end method

.method public isClosed()Z
    .locals 2

    .prologue
    .line 133
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadable()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 152
    :try_start_0
    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 154
    .local v2, "readTimeout":I
    :try_start_1
    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 155
    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->source:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->exhausted()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    .line 160
    :try_start_2
    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v5, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 165
    .end local v2    # "readTimeout":I
    :goto_0
    return v3

    .line 160
    .restart local v2    # "readTimeout":I
    :cond_0
    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v5, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    move v3, v4

    goto :goto_0

    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v6, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v5
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 162
    .end local v2    # "readTimeout":I
    :catch_0
    move-exception v1

    .local v1, "ignored":Ljava/net/SocketTimeoutException;
    move v3, v4

    .line 163
    goto :goto_0

    .line 164
    .end local v1    # "ignored":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v0

    .line 165
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public newChunkedSink()Lokio/Sink;
    .locals 3

    .prologue
    .line 226
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    .line 228
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSink;-><init>(Lcom/squareup/okhttp/internal/http/HttpConnection;Lcom/squareup/okhttp/internal/http/HttpConnection$1;)V

    return-object v0
.end method

.method public newChunkedSource(Lcom/squareup/okhttp/internal/http/HttpEngine;)Lokio/Source;
    .locals 3
    .param p1, "httpEngine"    # Lcom/squareup/okhttp/internal/http/HttpEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    .line 252
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSource;

    invoke-direct {v0, p0, p1}, Lcom/squareup/okhttp/internal/http/HttpConnection$ChunkedSource;-><init>(Lcom/squareup/okhttp/internal/http/HttpConnection;Lcom/squareup/okhttp/internal/http/HttpEngine;)V

    return-object v0
.end method

.method public newFixedLengthSink(J)Lokio/Sink;
    .locals 3
    .param p1, "contentLength"    # J

    .prologue
    .line 232
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    .line 234
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSink;-><init>(Lcom/squareup/okhttp/internal/http/HttpConnection;JLcom/squareup/okhttp/internal/http/HttpConnection$1;)V

    return-object v0
.end method

.method public newFixedLengthSource(J)Lokio/Source;
    .locals 3
    .param p1, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    .line 246
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;

    invoke-direct {v0, p0, p1, p2}, Lcom/squareup/okhttp/internal/http/HttpConnection$FixedLengthSource;-><init>(Lcom/squareup/okhttp/internal/http/HttpConnection;J)V

    return-object v0
.end method

.method public newUnknownLengthSource()Lokio/Source;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    .line 258
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpConnection$UnknownLengthSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/http/HttpConnection$UnknownLengthSource;-><init>(Lcom/squareup/okhttp/internal/http/HttpConnection;Lcom/squareup/okhttp/internal/http/HttpConnection$1;)V

    return-object v0
.end method

.method public poolOnIdle()V
    .locals 3

    .prologue
    .line 108
    const/4 v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->onIdle:I

    .line 111
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    if-nez v0, :cond_0

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->onIdle:I

    .line 113
    sget-object v0, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->pool:Lcom/squareup/okhttp/ConnectionPool;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/internal/Internal;->recycle(Lcom/squareup/okhttp/ConnectionPool;Lcom/squareup/okhttp/Connection;)V

    .line 115
    :cond_0
    return-void
.end method

.method public rawSink()Lokio/BufferedSink;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->sink:Lokio/BufferedSink;

    return-object v0
.end method

.method public rawSource()Lokio/BufferedSource;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->source:Lokio/BufferedSource;

    return-object v0
.end method

.method public readHeaders(Lcom/squareup/okhttp/Headers$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/squareup/okhttp/Headers$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    :goto_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    sget-object v1, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    invoke-virtual {v1, p1, v0}, Lcom/squareup/okhttp/internal/Internal;->addLenient(Lcom/squareup/okhttp/Headers$Builder;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_0
    return-void
.end method

.method public readResponse()Lcom/squareup/okhttp/Response$Builder;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    iget v5, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    iget v5, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    .line 186
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 191
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->source:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/squareup/okhttp/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/StatusLine;

    move-result-object v4

    .line 193
    .local v4, "statusLine":Lcom/squareup/okhttp/internal/http/StatusLine;
    new-instance v5, Lcom/squareup/okhttp/Response$Builder;

    invoke-direct {v5}, Lcom/squareup/okhttp/Response$Builder;-><init>()V

    iget-object v6, v4, Lcom/squareup/okhttp/internal/http/StatusLine;->protocol:Lcom/squareup/okhttp/Protocol;

    .line 194
    invoke-virtual {v5, v6}, Lcom/squareup/okhttp/Response$Builder;->protocol(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v5

    iget v6, v4, Lcom/squareup/okhttp/internal/http/StatusLine;->code:I

    .line 195
    invoke-virtual {v5, v6}, Lcom/squareup/okhttp/Response$Builder;->code(I)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v5

    iget-object v6, v4, Lcom/squareup/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 196
    invoke-virtual {v5, v6}, Lcom/squareup/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v3

    .line 198
    .local v3, "responseBuilder":Lcom/squareup/okhttp/Response$Builder;
    new-instance v2, Lcom/squareup/okhttp/Headers$Builder;

    invoke-direct {v2}, Lcom/squareup/okhttp/Headers$Builder;-><init>()V

    .line 199
    .local v2, "headersBuilder":Lcom/squareup/okhttp/Headers$Builder;
    invoke-virtual {p0, v2}, Lcom/squareup/okhttp/internal/http/HttpConnection;->readHeaders(Lcom/squareup/okhttp/Headers$Builder;)V

    .line 200
    sget-object v5, Lcom/squareup/okhttp/internal/http/OkHeaders;->SELECTED_PROTOCOL:Ljava/lang/String;

    iget-object v6, v4, Lcom/squareup/okhttp/internal/http/StatusLine;->protocol:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {v6}, Lcom/squareup/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/squareup/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    .line 201
    invoke-virtual {v2}, Lcom/squareup/okhttp/Headers$Builder;->build()Lcom/squareup/okhttp/Headers;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/squareup/okhttp/Response$Builder;->headers(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Response$Builder;

    .line 203
    iget v5, v4, Lcom/squareup/okhttp/internal/http/StatusLine;->code:I

    const/16 v6, 0x64

    if-eq v5, v6, :cond_0

    .line 204
    const/4 v5, 0x4

    iput v5, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    return-object v3

    .line 208
    .end local v2    # "headersBuilder":Lcom/squareup/okhttp/Headers$Builder;
    .end local v3    # "responseBuilder":Lcom/squareup/okhttp/Response$Builder;
    .end local v4    # "statusLine":Lcom/squareup/okhttp/internal/http/StatusLine;
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unexpected end of stream on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " (recycle count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->connection:Lcom/squareup/okhttp/Connection;

    .line 211
    invoke-virtual {v6, v7}, Lcom/squareup/okhttp/internal/Internal;->recycleCount(Lcom/squareup/okhttp/Connection;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 212
    .local v1, "exception":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 213
    throw v1
.end method

.method public setTimeouts(II)V
    .locals 4
    .param p1, "readTimeoutMillis"    # I
    .param p2, "writeTimeoutMillis"    # I

    .prologue
    .line 95
    if-eqz p1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    int-to-long v2, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 98
    :cond_0
    if-eqz p2, :cond_1

    .line 99
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->timeout()Lokio/Timeout;

    move-result-object v0

    int-to-long v2, p2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 101
    :cond_1
    return-void
.end method

.method public writeRequest(Lcom/squareup/okhttp/Headers;Ljava/lang/String;)V
    .locals 5
    .param p1, "headers"    # Lcom/squareup/okhttp/Headers;
    .param p2, "requestLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    iget v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 172
    :cond_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->sink:Lokio/BufferedSink;

    invoke-interface {v2, p2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 173
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 174
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->sink:Lokio/BufferedSink;

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    const-string/jumbo v3, ": "

    .line 175
    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    .line 176
    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    .line 177
    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_1
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->sink:Lokio/BufferedSink;

    const-string/jumbo v3, "\r\n"

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 180
    const/4 v2, 0x1

    iput v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    .line 181
    return-void
.end method

.method public writeRequestBody(Lcom/squareup/okhttp/internal/http/RetryableSink;)V
    .locals 3
    .param p1, "requestBody"    # Lcom/squareup/okhttp/internal/http/RetryableSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->state:I

    .line 240
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection;->sink:Lokio/BufferedSink;

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/http/RetryableSink;->writeToSocket(Lokio/Sink;)V

    .line 241
    return-void
.end method
