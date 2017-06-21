.class public final Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
.super Ljava/lang/Object;
.source "SpdyConnection.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;,
        Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final OKHTTP_CLIENT_WINDOW_SIZE:I = 0x1000000

.field private static final executor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field bytesLeftInWriteWindow:J

.field final client:Z

.field private final currentPushRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final frameWriter:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

.field private final handler:Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;

.field private final hostName:Ljava/lang/String;

.field private idleStartTimeNs:J

.field private lastGoodStreamId:I

.field private nextPingId:I

.field private nextStreamId:I

.field final okHttpSettings:Lcom/squareup/okhttp/internal/spdy/Settings;

.field final peerSettings:Lcom/squareup/okhttp/internal/spdy/Settings;

.field private pings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/squareup/okhttp/internal/spdy/Ping;",
            ">;"
        }
    .end annotation
.end field

.field final protocol:Lcom/squareup/okhttp/Protocol;

.field private final pushExecutor:Ljava/util/concurrent/ExecutorService;

.field private final pushObserver:Lcom/squareup/okhttp/internal/spdy/PushObserver;

.field final readerRunnable:Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;

.field private receivedInitialPeerSettings:Z

.field private shutdown:Z

.field final socket:Ljava/net/Socket;

.field private final streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/squareup/okhttp/internal/spdy/SpdyStream;",
            ">;"
        }
    .end annotation
.end field

.field unacknowledgedBytesRead:J

.field final variant:Lcom/squareup/okhttp/internal/spdy/Variant;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 54
    const-class v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    :goto_0
    sput-boolean v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->$assertionsDisabled:Z

    .line 68
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string/jumbo v0, "OkHttp SpdyConnection"

    .line 70
    invoke-static {v0, v8}, Lcom/squareup/okhttp/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->executor:Ljava/util/concurrent/ExecutorService;

    .line 68
    return-void

    :cond_0
    move v0, v2

    .line 54
    goto :goto_0
.end method

.method private constructor <init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)V
    .locals 12
    .param p1, "builder"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x7

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    .line 88
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->idleStartTimeNs:J

    .line 104
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->unacknowledgedBytesRead:J

    .line 115
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/Settings;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/spdy/Settings;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->okHttpSettings:Lcom/squareup/okhttp/internal/spdy/Settings;

    .line 121
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/Settings;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/spdy/Settings;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->peerSettings:Lcom/squareup/okhttp/internal/spdy/Settings;

    .line 123
    iput-boolean v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->receivedInitialPeerSettings:Z

    .line 800
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->currentPushRequests:Ljava/util/Set;

    .line 132
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->access$000(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)Lcom/squareup/okhttp/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->protocol:Lcom/squareup/okhttp/Protocol;

    .line 133
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->access$100(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)Lcom/squareup/okhttp/internal/spdy/PushObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pushObserver:Lcom/squareup/okhttp/internal/spdy/PushObserver;

    .line 134
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->access$200(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->client:Z

    .line 135
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->access$300(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->handler:Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;

    .line 137
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->access$200(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    :goto_0
    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->nextStreamId:I

    .line 138
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->access$200(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->protocol:Lcom/squareup/okhttp/Protocol;

    sget-object v4, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v0, v4, :cond_0

    .line 139
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->nextStreamId:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->nextStreamId:I

    .line 142
    :cond_0
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->access$200(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v3

    :cond_1
    iput v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->nextPingId:I

    .line 148
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->access$200(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->okHttpSettings:Lcom/squareup/okhttp/internal/spdy/Settings;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v10, v2, v1}, Lcom/squareup/okhttp/internal/spdy/Settings;->set(III)Lcom/squareup/okhttp/internal/spdy/Settings;

    .line 152
    :cond_2
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->access$400(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->protocol:Lcom/squareup/okhttp/Protocol;

    sget-object v1, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v0, v1, :cond_4

    .line 155
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/Http2;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/spdy/Http2;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->variant:Lcom/squareup/okhttp/internal/spdy/Variant;

    .line 157
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string/jumbo v0, "OkHttp %s Push Observer"

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    aput-object v9, v8, v2

    .line 159
    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/squareup/okhttp/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    .line 161
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->peerSettings:Lcom/squareup/okhttp/internal/spdy/Settings;

    const v1, 0xffff

    invoke-virtual {v0, v10, v2, v1}, Lcom/squareup/okhttp/internal/spdy/Settings;->set(III)Lcom/squareup/okhttp/internal/spdy/Settings;

    .line 162
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->peerSettings:Lcom/squareup/okhttp/internal/spdy/Settings;

    const/4 v1, 0x5

    const/16 v3, 0x4000

    invoke-virtual {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/spdy/Settings;->set(III)Lcom/squareup/okhttp/internal/spdy/Settings;

    .line 169
    :goto_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->peerSettings:Lcom/squareup/okhttp/internal/spdy/Settings;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Settings;->getInitialWindowSize(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->bytesLeftInWriteWindow:J

    .line 170
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->access$500(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->socket:Ljava/net/Socket;

    .line 171
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->variant:Lcom/squareup/okhttp/internal/spdy/Variant;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->access$500(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)Ljava/net/Socket;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v1

    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->client:Z

    invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/Variant;->newWriter(Lokio/BufferedSink;Z)Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    .line 173
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;

    invoke-direct {v0, p0, v11}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Lcom/squareup/okhttp/internal/spdy/SpdyConnection$1;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->readerRunnable:Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;

    .line 174
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->readerRunnable:Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 175
    return-void

    :cond_3
    move v0, v1

    .line 137
    goto/16 :goto_0

    .line 163
    :cond_4
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->protocol:Lcom/squareup/okhttp/Protocol;

    sget-object v1, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    if-ne v0, v1, :cond_5

    .line 164
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/Spdy3;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/spdy/Spdy3;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->variant:Lcom/squareup/okhttp/internal/spdy/Variant;

    .line 165
    iput-object v11, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    goto :goto_1

    .line 167
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->protocol:Lcom/squareup/okhttp/Protocol;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;Lcom/squareup/okhttp/internal/spdy/SpdyConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;
    .param p2, "x1"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    .param p1, "x1"    # Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    .param p2, "x2"    # Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->close(Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pushedStream(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;ILokio/BufferedSource;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lokio/BufferedSource;
    .param p3, "x3"    # I
    .param p4, "x4"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pushDataLater(ILokio/BufferedSource;IZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;ILjava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pushHeadersLater(ILjava/util/List;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->shutdown:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->shutdown:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    .prologue
    .line 54
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->lastGoodStreamId:I

    return v0
.end method

.method static synthetic access$1502(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;I)I
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->lastGoodStreamId:I

    return p1
.end method

.method static synthetic access$1600(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    .prologue
    .line 54
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->nextStreamId:I

    return v0
.end method

.method static synthetic access$1700(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->handler:Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;

    return-object v0
.end method

.method static synthetic access$1900()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pushResetLater(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->receivedInitialPeerSettings:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->receivedInitialPeerSettings:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;I)Lcom/squareup/okhttp/internal/spdy/Ping;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->removePing(I)Lcom/squareup/okhttp/internal/spdy/Ping;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;ZIILcom/squareup/okhttp/internal/spdy/Ping;)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/squareup/okhttp/internal/spdy/Ping;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->writePingLater(ZIILcom/squareup/okhttp/internal/spdy/Ping;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;ILjava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pushRequestLater(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Lcom/squareup/okhttp/internal/spdy/PushObserver;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pushObserver:Lcom/squareup/okhttp/internal/spdy/PushObserver;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->currentPushRequests:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$700(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;ZIILcom/squareup/okhttp/internal/spdy/Ping;)V
    .locals 0
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/squareup/okhttp/internal/spdy/Ping;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->writePing(ZIILcom/squareup/okhttp/internal/spdy/Ping;)V

    return-void
.end method

.method static synthetic access$900(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method private close(Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 10
    .param p1, "connectionCode"    # Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    .param p2, "streamCode"    # Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 450
    sget-boolean v7, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 451
    :cond_0
    const/4 v6, 0x0

    .line 453
    .local v6, "thrown":Ljava/io/IOException;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->shutdown(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :goto_0
    const/4 v5, 0x0

    .line 459
    .local v5, "streamsToClose":[Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    const/4 v3, 0x0

    .line 460
    .local v3, "pingsToCancel":[Lcom/squareup/okhttp/internal/spdy/Ping;
    monitor-enter p0

    .line 461
    :try_start_1
    iget-object v7, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 462
    iget-object v7, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    iget-object v9, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    new-array v9, v9, [Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-interface {v7, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, [Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    move-object v5, v0

    .line 463
    iget-object v7, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 464
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->setIdle(Z)V

    .line 466
    :cond_1
    iget-object v7, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    if-eqz v7, :cond_2

    .line 467
    iget-object v7, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    iget-object v9, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    new-array v9, v9, [Lcom/squareup/okhttp/internal/spdy/Ping;

    invoke-interface {v7, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, [Lcom/squareup/okhttp/internal/spdy/Ping;

    move-object v3, v0

    .line 468
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    .line 470
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 472
    if-eqz v5, :cond_4

    .line 473
    array-length v9, v5

    move v7, v8

    :goto_1
    if-ge v7, v9, :cond_4

    aget-object v4, v5, v7

    .line 475
    .local v4, "stream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    :try_start_2
    invoke-virtual {v4, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->close(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 473
    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 454
    .end local v3    # "pingsToCancel":[Lcom/squareup/okhttp/internal/spdy/Ping;
    .end local v4    # "stream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    .end local v5    # "streamsToClose":[Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    :catch_0
    move-exception v1

    .line 455
    .local v1, "e":Ljava/io/IOException;
    move-object v6, v1

    goto :goto_0

    .line 470
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "pingsToCancel":[Lcom/squareup/okhttp/internal/spdy/Ping;
    .restart local v5    # "streamsToClose":[Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 476
    .restart local v4    # "stream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    :catch_1
    move-exception v1

    .line 477
    .restart local v1    # "e":Ljava/io/IOException;
    if-eqz v6, :cond_3

    move-object v6, v1

    goto :goto_2

    .line 482
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "stream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    :cond_4
    if-eqz v3, :cond_5

    .line 483
    array-length v9, v3

    move v7, v8

    :goto_3
    if-ge v7, v9, :cond_5

    aget-object v2, v3, v7

    .line 484
    .local v2, "ping":Lcom/squareup/okhttp/internal/spdy/Ping;
    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/spdy/Ping;->cancel()V

    .line 483
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 490
    .end local v2    # "ping":Lcom/squareup/okhttp/internal/spdy/Ping;
    :cond_5
    :try_start_4
    iget-object v7, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    invoke-interface {v7}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 497
    :cond_6
    :goto_4
    :try_start_5
    iget-object v7, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 502
    :goto_5
    if-eqz v6, :cond_7

    throw v6

    .line 491
    :catch_2
    move-exception v1

    .line 492
    .restart local v1    # "e":Ljava/io/IOException;
    if-nez v6, :cond_6

    move-object v6, v1

    goto :goto_4

    .line 498
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 499
    .restart local v1    # "e":Ljava/io/IOException;
    move-object v6, v1

    goto :goto_5

    .line 503
    .end local v1    # "e":Ljava/io/IOException;
    :cond_7
    return-void
.end method

.method private newStream(ILjava/util/List;ZZ)Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    .locals 9
    .param p1, "associatedStreamId"    # I
    .param p3, "out"    # Z
    .param p4, "in"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;ZZ)",
            "Lcom/squareup/okhttp/internal/spdy/SpdyStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 250
    if-nez p3, :cond_0

    move v3, v4

    .line 251
    .local v3, "outFinished":Z
    :goto_0
    if-nez p4, :cond_1

    .line 255
    .local v4, "inFinished":Z
    :goto_1
    iget-object v8, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    monitor-enter v8

    .line 256
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 257
    :try_start_1
    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->shutdown:Z

    if-eqz v2, :cond_2

    .line 258
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v5, "shutdown"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 267
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    .line 276
    :catchall_1
    move-exception v2

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .end local v3    # "outFinished":Z
    .end local v4    # "inFinished":Z
    :cond_0
    move v3, v2

    .line 250
    goto :goto_0

    .restart local v3    # "outFinished":Z
    :cond_1
    move v4, v2

    .line 251
    goto :goto_1

    .line 260
    .restart local v4    # "inFinished":Z
    :cond_2
    :try_start_3
    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->nextStreamId:I

    .line 261
    .local v1, "streamId":I
    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->nextStreamId:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->nextStreamId:I

    .line 262
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;-><init>(ILcom/squareup/okhttp/internal/spdy/SpdyConnection;ZZLjava/util/List;)V

    .line 263
    .local v0, "stream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 264
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->setIdle(Z)V

    .line 267
    :cond_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 268
    if-nez p1, :cond_5

    .line 269
    :try_start_4
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    move v5, v1

    move v6, p1

    move-object v7, p2

    invoke-interface/range {v2 .. v7}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->synStream(ZZIILjava/util/List;)V

    .line 276
    :goto_2
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 278
    if-nez p3, :cond_4

    .line 279
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    invoke-interface {v2}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->flush()V

    .line 282
    :cond_4
    return-object v0

    .line 271
    :cond_5
    :try_start_5
    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->client:Z

    if-eqz v2, :cond_6

    .line 272
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 274
    :cond_6
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    invoke-interface {v2, p1, v1, p2}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->pushPromise(IILjava/util/List;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2
.end method

.method private pushDataLater(ILokio/BufferedSource;IZ)V
    .locals 9
    .param p1, "streamId"    # I
    .param p2, "source"    # Lokio/BufferedSource;
    .param p3, "byteCount"    # I
    .param p4, "inFinished"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 850
    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    .line 851
    .local v5, "buffer":Lokio/Buffer;
    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lokio/BufferedSource;->require(J)V

    .line 852
    int-to-long v0, p3

    invoke-interface {p2, v5, v0, v1}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    .line 853
    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v0

    int-to-long v2, p3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 854
    :cond_0
    iget-object v8, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$6;

    const-string/jumbo v2, "OkHttp %s Push Data[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$6;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ILokio/Buffer;IZ)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 868
    return-void
.end method

.method private pushHeadersLater(ILjava/util/List;Z)V
    .locals 8
    .param p1, "streamId"    # I
    .param p3, "inFinished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 828
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    iget-object v7, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$5;

    const-string/jumbo v2, "OkHttp %s Push Headers[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$5;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 842
    return-void
.end method

.method private pushRequestLater(ILjava/util/List;)V
    .locals 7
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 803
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    monitor-enter p0

    .line 804
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {p0, p1, v0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->writeSynResetLater(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 806
    monitor-exit p0

    .line 824
    :goto_0
    return-void

    .line 808
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 809
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 810
    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$4;

    const-string/jumbo v2, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$4;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 809
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private pushResetLater(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 7
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    .prologue
    .line 871
    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$7;

    const-string/jumbo v2, "OkHttp %s Push Reset[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$7;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 879
    return-void
.end method

.method private pushedStream(I)Z
    .locals 2
    .param p1, "streamId"    # I

    .prologue
    .line 796
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->protocol:Lcom/squareup/okhttp/Protocol;

    sget-object v1, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized removePing(I)Lcom/squareup/okhttp/internal/spdy/Ping;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 412
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/Ping;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setIdle(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 204
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->idleStartTimeNs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit p0

    return-void

    .line 204
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private writePing(ZIILcom/squareup/okhttp/internal/spdy/Ping;)V
    .locals 2
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .param p4, "ping"    # Lcom/squareup/okhttp/internal/spdy/Ping;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    monitor-enter v1

    .line 406
    if-eqz p4, :cond_0

    :try_start_0
    invoke-virtual {p4}, Lcom/squareup/okhttp/internal/spdy/Ping;->send()V

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    invoke-interface {v0, p1, p2, p3}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->ping(ZII)V

    .line 408
    monitor-exit v1

    .line 409
    return-void

    .line 408
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private writePingLater(ZIILcom/squareup/okhttp/internal/spdy/Ping;)V
    .locals 9
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .param p4, "ping"    # Lcom/squareup/okhttp/internal/spdy/Ping;

    .prologue
    .line 392
    sget-object v8, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$3;

    const-string/jumbo v2, "OkHttp %s ping %08x%08x"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    .line 393
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$3;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ZIILcom/squareup/okhttp/internal/spdy/Ping;)V

    .line 392
    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 401
    return-void
.end method


# virtual methods
.method addBytesToWriteWindow(J)V
    .locals 3
    .param p1, "delta"    # J

    .prologue
    .line 340
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->bytesLeftInWriteWindow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->bytesLeftInWriteWindow:J

    .line 341
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 342
    :cond_0
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 446
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->NO_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-direct {p0, v0, v1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->close(Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 447
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
    .line 416
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->flush()V

    .line 417
    return-void
.end method

.method public declared-synchronized getIdleStartTimeNs()J
    .locals 2

    .prologue
    .line 217
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->idleStartTimeNs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProtocol()Lcom/squareup/okhttp/Protocol;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->protocol:Lcom/squareup/okhttp/Protocol;

    return-object v0
.end method

.method declared-synchronized getStream(I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isIdle()Z
    .locals 4

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->idleStartTimeNs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public newStream(Ljava/util/List;ZZ)Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    .locals 1
    .param p2, "out"    # Z
    .param p3, "in"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;ZZ)",
            "Lcom/squareup/okhttp/internal/spdy/SpdyStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    .local p1, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->newStream(ILjava/util/List;ZZ)Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized openStreamCount()I
    .locals 1

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ping()Lcom/squareup/okhttp/internal/spdy/Ping;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/Ping;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/spdy/Ping;-><init>()V

    .line 377
    .local v0, "ping":Lcom/squareup/okhttp/internal/spdy/Ping;
    monitor-enter p0

    .line 378
    :try_start_0
    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->shutdown:Z

    if-eqz v2, :cond_0

    .line 379
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "shutdown"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 385
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 381
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->nextPingId:I

    .line 382
    .local v1, "pingId":I
    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->nextPingId:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->nextPingId:I

    .line 383
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    .line 384
    :cond_1
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    const/4 v2, 0x0

    const v3, 0x4f4b6f6b

    invoke-direct {p0, v2, v1, v3, v0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->writePing(ZIILcom/squareup/okhttp/internal/spdy/Ping;)V

    .line 387
    return-object v0
.end method

.method public pushStream(ILjava/util/List;Z)Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    .locals 2
    .param p1, "associatedStreamId"    # I
    .param p3, "out"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;Z)",
            "Lcom/squareup/okhttp/internal/spdy/SpdyStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->client:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Client cannot push requests."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->protocol:Lcom/squareup/okhttp/Protocol;

    sget-object v1, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "protocol != HTTP_2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->newStream(ILjava/util/List;ZZ)Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized removeStream(I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    .locals 3
    .param p1, "streamId"    # I

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    .line 196
    .local v0, "stream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->setIdle(Z)V

    .line 199
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit p0

    return-object v0

    .line 195
    .end local v0    # "stream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public sendConnectionPreface()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v3, 0x10000

    .line 510
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    invoke-interface {v1}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->connectionPreface()V

    .line 511
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->okHttpSettings:Lcom/squareup/okhttp/internal/spdy/Settings;

    invoke-interface {v1, v2}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->settings(Lcom/squareup/okhttp/internal/spdy/Settings;)V

    .line 512
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->okHttpSettings:Lcom/squareup/okhttp/internal/spdy/Settings;

    invoke-virtual {v1, v3}, Lcom/squareup/okhttp/internal/spdy/Settings;->getInitialWindowSize(I)I

    move-result v0

    .line 513
    .local v0, "windowSize":I
    if-eq v0, v3, :cond_0

    .line 514
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    const/4 v2, 0x0

    sub-int v3, v0, v3

    int-to-long v4, v3

    invoke-interface {v1, v2, v4, v5}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->windowUpdate(IJ)V

    .line 516
    :cond_0
    return-void
.end method

.method public shutdown(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 4
    .param p1, "statusCode"    # Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    monitor-enter v2

    .line 428
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    :try_start_1
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->shutdown:Z

    if-eqz v1, :cond_0

    .line 430
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 438
    :goto_0
    return-void

    .line 432
    :cond_0
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->shutdown:Z

    .line 433
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->lastGoodStreamId:I

    .line 434
    .local v0, "lastGoodStreamId":I
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 436
    :try_start_4
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    sget-object v3, Lcom/squareup/okhttp/internal/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-interface {v1, v0, p1, v3}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->goAway(ILcom/squareup/okhttp/internal/spdy/ErrorCode;[B)V

    .line 437
    monitor-exit v2

    goto :goto_0

    .end local v0    # "lastGoodStreamId":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 434
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public writeData(IZLokio/Buffer;J)V
    .locals 10
    .param p1, "streamId"    # I
    .param p2, "outFinished"    # Z
    .param p3, "buffer"    # Lokio/Buffer;
    .param p4, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-wide/16 v8, 0x0

    .line 304
    cmp-long v2, p4, v8

    if-nez v2, :cond_2

    .line 305
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    invoke-interface {v2, p2, p1, p3, v3}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->data(ZILokio/Buffer;I)V

    .line 333
    :cond_0
    return-void

    .line 325
    :cond_1
    :try_start_0
    iget-wide v4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->bytesLeftInWriteWindow:J

    invoke-static {p4, p5, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    .line 326
    .local v1, "toWrite":I
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    invoke-interface {v2}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->maxDataLength()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 327
    iget-wide v4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->bytesLeftInWriteWindow:J

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->bytesLeftInWriteWindow:J

    .line 328
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    int-to-long v4, v1

    sub-long/2addr p4, v4

    .line 331
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    if-eqz p2, :cond_4

    cmp-long v2, p4, v8

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v4, v2, p1, p3, v1}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->data(ZILokio/Buffer;I)V

    .line 309
    .end local v1    # "toWrite":I
    :cond_2
    cmp-long v2, p4, v8

    if-lez v2, :cond_0

    .line 311
    monitor-enter p0

    .line 313
    :goto_1
    :try_start_1
    iget-wide v4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->bytesLeftInWriteWindow:J

    cmp-long v2, v4, v8

    if-gtz v2, :cond_1

    .line 316
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 317
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "stream closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v2, Ljava/io/InterruptedIOException;

    invoke-direct {v2}, Ljava/io/InterruptedIOException;-><init>()V

    throw v2

    .line 328
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 319
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .restart local v1    # "toWrite":I
    :cond_4
    move v2, v3

    .line 331
    goto :goto_0
.end method

.method writeSynReply(IZLjava/util/List;)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "outFinished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    .local p3, "alternating":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    invoke-interface {v0, p2, p1, p3}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->synReply(ZILjava/util/List;)V

    .line 288
    return-void
.end method

.method writeSynReset(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "statusCode"    # Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    invoke-interface {v0, p1, p2}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->rstStream(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 357
    return-void
.end method

.method writeSynResetLater(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 7
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    .prologue
    .line 345
    sget-object v6, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$1;

    const-string/jumbo v2, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$1;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 353
    return-void
.end method

.method writeWindowUpdateLater(IJ)V
    .locals 8
    .param p1, "streamId"    # I
    .param p2, "unacknowledgedBytesRead"    # J

    .prologue
    .line 360
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$2;

    const-string/jumbo v3, "OkHttp Window Update %s stream %d"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$2;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 368
    return-void
.end method
