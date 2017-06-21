.class public Lme/grishka/appkit/imageloader/HTTPImageDownloader;
.super Lme/grishka/appkit/imageloader/ImageDownloader;
.source "HTTPImageDownloader.java"


# instance fields
.field private httpClient:Lcom/squareup/okhttp/OkHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lme/grishka/appkit/imageloader/ImageDownloader;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadFile(Ljava/lang/String;Ljava/io/OutputStream;Lme/grishka/appkit/imageloader/ImageCache$ProgressCallback;Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;)Z
    .locals 16
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "callback"    # Lme/grishka/appkit/imageloader/ImageCache$ProgressCallback;
    .param p4, "w"    # Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    move-object/from16 v0, p0

    iget-object v11, v0, Lme/grishka/appkit/imageloader/HTTPImageDownloader;->httpClient:Lcom/squareup/okhttp/OkHttpClient;

    if-nez v11, :cond_0

    .line 33
    new-instance v11, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v11}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lme/grishka/appkit/imageloader/HTTPImageDownloader;->httpClient:Lcom/squareup/okhttp/OkHttpClient;

    .line 34
    move-object/from16 v0, p0

    iget-object v11, v0, Lme/grishka/appkit/imageloader/HTTPImageDownloader;->httpClient:Lcom/squareup/okhttp/OkHttpClient;

    const-wide/16 v12, 0xf

    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v12, v13, v14}, Lcom/squareup/okhttp/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 35
    move-object/from16 v0, p0

    iget-object v11, v0, Lme/grishka/appkit/imageloader/HTTPImageDownloader;->httpClient:Lcom/squareup/okhttp/OkHttpClient;

    const-wide/16 v12, 0xf

    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v12, v13, v14}, Lcom/squareup/okhttp/OkHttpClient;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 36
    move-object/from16 v0, p0

    iget-object v11, v0, Lme/grishka/appkit/imageloader/HTTPImageDownloader;->httpClient:Lcom/squareup/okhttp/OkHttpClient;

    const-wide/16 v12, 0xf

    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v12, v13, v14}, Lcom/squareup/okhttp/OkHttpClient;->setWriteTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 37
    move-object/from16 v0, p0

    iget-object v11, v0, Lme/grishka/appkit/imageloader/HTTPImageDownloader;->httpClient:Lcom/squareup/okhttp/OkHttpClient;

    new-instance v12, Lcom/squareup/okhttp/ConnectionPool;

    const/16 v13, 0x14

    const-wide/32 v14, 0x2bf20

    invoke-direct {v12, v13, v14, v15}, Lcom/squareup/okhttp/ConnectionPool;-><init>(IJ)V

    invoke-virtual {v11, v12}, Lcom/squareup/okhttp/OkHttpClient;->setConnectionPool(Lcom/squareup/okhttp/ConnectionPool;)Lcom/squareup/okhttp/OkHttpClient;

    .line 38
    move-object/from16 v0, p0

    iget-object v11, v0, Lme/grishka/appkit/imageloader/HTTPImageDownloader;->httpClient:Lcom/squareup/okhttp/OkHttpClient;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/squareup/okhttp/OkHttpClient;->setCache(Lcom/squareup/okhttp/Cache;)Lcom/squareup/okhttp/OkHttpClient;

    .line 40
    :cond_0
    const/4 v3, 0x0

    .line 41
    .local v3, "is":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 43
    .local v7, "rb":Lcom/squareup/okhttp/ResponseBody;
    :try_start_0
    new-instance v11, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v11}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v11

    const-string/jumbo v12, "User-Agent"

    invoke-static {}, Lme/grishka/appkit/utils/NetworkUtils;->getUserAgent()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v9

    .line 44
    .local v9, "req":Lcom/squareup/okhttp/Request;
    move-object/from16 v0, p0

    iget-object v11, v0, Lme/grishka/appkit/imageloader/HTTPImageDownloader;->httpClient:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v11, v9}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v2

    .line 45
    .local v2, "call":Lcom/squareup/okhttp/Call;
    if-eqz p4, :cond_1

    move-object/from16 v0, p4

    iput-object v2, v0, Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;->call:Lcom/squareup/okhttp/Call;

    .line 46
    :cond_1
    invoke-virtual {v2}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v10

    .line 47
    .local v10, "resp":Lcom/squareup/okhttp/Response;
    invoke-virtual {v10}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v7

    .line 48
    invoke-virtual {v7}, Lcom/squareup/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v3

    .line 49
    invoke-virtual {v7}, Lcom/squareup/okhttp/ResponseBody;->contentLength()J

    move-result-wide v12

    long-to-int v5, v12

    .line 50
    .local v5, "len":I
    const/4 v6, 0x0

    .line 51
    .local v6, "loaded":I
    const/16 v11, 0x1400

    new-array v8, v11, [B

    .line 52
    .local v8, "rd":[B
    const/4 v4, 0x0

    .line 53
    .local v4, "l":I
    :cond_2
    :goto_0
    invoke-virtual {v3, v8}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_7

    .line 54
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v11, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 55
    add-int/2addr v6, v4

    .line 56
    if-eqz p3, :cond_2

    .line 57
    move-object/from16 v0, p3

    invoke-interface {v0, v6, v5}, Lme/grishka/appkit/imageloader/ImageCache$ProgressCallback;->onProgressChanged(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 62
    .end local v2    # "call":Lcom/squareup/okhttp/Call;
    .end local v4    # "l":I
    .end local v5    # "len":I
    .end local v6    # "loaded":I
    .end local v8    # "rd":[B
    .end local v9    # "req":Lcom/squareup/okhttp/Request;
    .end local v10    # "resp":Lcom/squareup/okhttp/Response;
    :catch_0
    move-exception v11

    .line 66
    if-eqz v3, :cond_3

    .line 68
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 71
    :cond_3
    :goto_1
    if-eqz v7, :cond_4

    .line 73
    :try_start_2
    invoke-virtual {v7}, Lcom/squareup/okhttp/ResponseBody;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 77
    :cond_4
    :goto_2
    if-eqz p4, :cond_5

    const/4 v11, 0x0

    move-object/from16 v0, p4

    iput-object v11, v0, Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;->call:Lcom/squareup/okhttp/Call;

    .line 78
    :cond_5
    const/4 v11, 0x0

    :cond_6
    :goto_3
    return v11

    .line 60
    .restart local v2    # "call":Lcom/squareup/okhttp/Call;
    .restart local v4    # "l":I
    .restart local v5    # "len":I
    .restart local v6    # "loaded":I
    .restart local v8    # "rd":[B
    .restart local v9    # "req":Lcom/squareup/okhttp/Request;
    .restart local v10    # "resp":Lcom/squareup/okhttp/Response;
    :cond_7
    if-eqz p4, :cond_8

    const/4 v11, 0x0

    :try_start_3
    move-object/from16 v0, p4

    iput-object v11, v0, Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;->call:Lcom/squareup/okhttp/Call;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 61
    :cond_8
    if-lez v5, :cond_9

    if-ne v6, v5, :cond_b

    :cond_9
    const/4 v11, 0x1

    .line 66
    :goto_4
    if-eqz v3, :cond_a

    .line 68
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 71
    :cond_a
    :goto_5
    if-eqz v7, :cond_6

    .line 73
    :try_start_5
    invoke-virtual {v7}, Lcom/squareup/okhttp/ResponseBody;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 74
    :catch_1
    move-exception v12

    goto :goto_3

    .line 61
    :cond_b
    const/4 v11, 0x0

    goto :goto_4

    .line 66
    .end local v2    # "call":Lcom/squareup/okhttp/Call;
    .end local v4    # "l":I
    .end local v5    # "len":I
    .end local v6    # "loaded":I
    .end local v8    # "rd":[B
    .end local v9    # "req":Lcom/squareup/okhttp/Request;
    .end local v10    # "resp":Lcom/squareup/okhttp/Response;
    :catchall_0
    move-exception v11

    if-eqz v3, :cond_c

    .line 68
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 71
    :cond_c
    :goto_6
    if-eqz v7, :cond_d

    .line 73
    :try_start_7
    invoke-virtual {v7}, Lcom/squareup/okhttp/ResponseBody;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 74
    :cond_d
    :goto_7
    throw v11

    .line 69
    .restart local v2    # "call":Lcom/squareup/okhttp/Call;
    .restart local v4    # "l":I
    .restart local v5    # "len":I
    .restart local v6    # "loaded":I
    .restart local v8    # "rd":[B
    .restart local v9    # "req":Lcom/squareup/okhttp/Request;
    .restart local v10    # "resp":Lcom/squareup/okhttp/Response;
    :catch_2
    move-exception v12

    goto :goto_5

    .end local v2    # "call":Lcom/squareup/okhttp/Call;
    .end local v4    # "l":I
    .end local v5    # "len":I
    .end local v6    # "loaded":I
    .end local v8    # "rd":[B
    .end local v9    # "req":Lcom/squareup/okhttp/Request;
    .end local v10    # "resp":Lcom/squareup/okhttp/Response;
    :catch_3
    move-exception v11

    goto :goto_1

    .line 74
    :catch_4
    move-exception v11

    goto :goto_2

    .line 69
    :catch_5
    move-exception v12

    goto :goto_6

    .line 74
    :catch_6
    move-exception v12

    goto :goto_7
.end method

.method public isFileBased()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    return v0
.end method
