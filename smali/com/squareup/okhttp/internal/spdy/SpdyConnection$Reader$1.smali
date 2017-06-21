.class Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader$1;
.super Lcom/squareup/okhttp/internal/NamedRunnable;
.source "SpdyConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->headers(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/spdy/HeadersMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;

.field final synthetic val$newStream:Lcom/squareup/okhttp/internal/spdy/SpdyStream;


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lcom/squareup/okhttp/internal/spdy/SpdyStream;)V
    .locals 0
    .param p1, "this$1"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 644
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader$1;->this$1:Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;

    iput-object p4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader$1;->val$newStream:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .prologue
    .line 647
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader$1;->this$1:Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;

    iget-object v1, v1, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1800(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader$1;->val$newStream:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-interface {v1, v2}, Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;->receive(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    :goto_0
    return-void

    .line 648
    :catch_0
    move-exception v0

    .line 649
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/squareup/okhttp/internal/Internal;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "StreamHandler failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader$1;->this$1:Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;

    iget-object v4, v4, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    invoke-static {v4}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$900(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 651
    :try_start_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader$1;->val$newStream:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    sget-object v2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->close(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 652
    :catch_1
    move-exception v1

    goto :goto_0
.end method
