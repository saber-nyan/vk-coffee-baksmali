.class public abstract Lcom/loopj/android/http/DataAsyncHttpResponseHandler;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "DataAsyncHttpResponseHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DataAsyncHttpResponseHandler"

.field protected static final PROGRESS_DATA_MESSAGE:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 40
    return-void
.end method

.method public static copyOfRange([BII)[B
    .locals 5
    .param p0, "original"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 138
    if-le p1, p2, :cond_0

    .line 139
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 141
    :cond_0
    array-length v1, p0

    .line 142
    .local v1, "originalLength":I
    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    .line 143
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 145
    :cond_2
    sub-int v3, p2, p1

    .line 146
    .local v3, "resultLength":I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 147
    .local v0, "copyLength":I
    new-array v2, v3, [B

    .line 148
    .local v2, "result":[B
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    return-object v2
.end method


# virtual methods
.method getResponseData(Lorg/apache/http/HttpEntity;)[B
    .locals 10
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    const/4 v6, 0x0

    .line 89
    .local v6, "responseBody":[B
    if-eqz p1, :cond_3

    .line 90
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 91
    .local v4, "instream":Ljava/io/InputStream;
    if-eqz v4, :cond_3

    .line 92
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    .line 93
    .local v2, "contentLength":J
    const-wide/32 v8, 0x7fffffff

    cmp-long v8, v2, v8

    if-lez v8, :cond_0

    .line 94
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "HTTP entity too large to be buffered in memory"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 96
    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-gez v8, :cond_1

    .line 97
    const-wide/16 v2, 0x1000

    .line 100
    :cond_1
    :try_start_0
    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    long-to-int v8, v2

    invoke-direct {v0, v8}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .local v0, "buffer":Lorg/apache/http/util/ByteArrayBuffer;
    const/16 v8, 0x1000

    :try_start_1
    new-array v7, v8, [B

    .line 105
    .local v7, "tmp":[B
    :goto_0
    invoke-virtual {v4, v7}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "l":I
    const/4 v8, -0x1

    if-eq v5, v8, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v8

    if-nez v8, :cond_2

    .line 106
    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, v5}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 107
    const/4 v8, 0x0

    invoke-static {v7, v8, v5}, Lcom/loopj/android/http/DataAsyncHttpResponseHandler;->copyOfRange([BII)[B

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/loopj/android/http/DataAsyncHttpResponseHandler;->sendProgressDataMessage([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 110
    .end local v5    # "l":I
    .end local v7    # "tmp":[B
    :catchall_0
    move-exception v8

    :try_start_2
    invoke-static {v4}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    throw v8
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    .line 113
    .end local v0    # "buffer":Lorg/apache/http/util/ByteArrayBuffer;
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 115
    new-instance v8, Ljava/io/IOException;

    const-string v9, "File too large to fit into available memory"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 110
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v0    # "buffer":Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v5    # "l":I
    .restart local v7    # "tmp":[B
    :cond_2
    :try_start_3
    invoke-static {v4}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 112
    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v6

    .line 119
    .end local v0    # "buffer":Lorg/apache/http/util/ByteArrayBuffer;
    .end local v2    # "contentLength":J
    .end local v4    # "instream":Ljava/io/InputStream;
    .end local v5    # "l":I
    .end local v7    # "tmp":[B
    :cond_3
    return-object v6
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    .line 62
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 76
    :goto_0
    return-void

    .line 64
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    .line 65
    .local v0, "response":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 67
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v0, v2

    check-cast v2, [B

    check-cast v2, [B

    invoke-virtual {p0, v2}, Lcom/loopj/android/http/DataAsyncHttpResponseHandler;->onProgressData([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "DataAsyncHttpResponseHandler"

    const-string v3, "custom onProgressData contains an error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 72
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    const-string v2, "DataAsyncHttpResponseHandler"

    const-string v3, "PROGRESS_DATA_MESSAGE didn\'t got enough params"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public onProgressData([B)V
    .locals 2
    .param p1, "responseBody"    # [B

    .prologue
    .line 48
    const-string v0, "DataAsyncHttpResponseHandler"

    const-string v1, "onProgressData(byte[]) was not overriden, but callback was received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method

.method public final sendProgressDataMessage([B)V
    .locals 3
    .param p1, "responseBytes"    # [B

    .prologue
    .line 53
    const/4 v0, 0x6

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/loopj/android/http/DataAsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/DataAsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 54
    return-void
.end method
