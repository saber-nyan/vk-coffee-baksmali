.class Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;
.super Ljava/lang/Object;
.source "LowLevelAudioPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Downloader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;
    .param p2, "x1"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$1;

    .prologue
    .line 382
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;-><init>(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 385
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v13}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$900(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Ljava/util/concurrent/Semaphore;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v13

    if-nez v13, :cond_0

    .line 483
    :goto_0
    return-void

    .line 389
    :cond_0
    :try_start_0
    sget-object v13, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v13}, Lcom/vkcoffee/android/AudioPlayerService;->getCurrentFile()Lcom/vkcoffee/android/AudioFile;

    move-result-object v5

    .line 390
    .local v5, "file":Lcom/vkcoffee/android/AudioFile;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v5}, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;->cancel(Lcom/vkcoffee/android/AudioFile;)Z

    move-result v14

    invoke-static {v13, v14}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$1002(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;Z)Z

    .line 391
    new-instance v13, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v13}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    .line 392
    invoke-static {v14}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$1100(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v13

    const-string/jumbo v14, "User-Agent"

    sget-object v15, Lcom/vkcoffee/android/api/APIController;->USER_AGENT:Ljava/lang/String;

    .line 393
    invoke-virtual {v13, v14, v15}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v2

    .line 394
    .local v2, "bldr":Lcom/squareup/okhttp/Request$Builder;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v13}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$1200(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I

    move-result v13

    if-eqz v13, :cond_1

    .line 395
    const-string/jumbo v13, "vk"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Downloading from offset "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v15}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$1200(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " [file size "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v15}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$600(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v13}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$700(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Lcom/vkcoffee/android/media/audio/FileMediaBuffer;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v14}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$1200(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->getLoadedOffsetAfter(I)I

    move-result v7

    .line 397
    .local v7, "loaded":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "bytes="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v14}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$1200(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const v13, 0x7fffffff

    if-ne v7, v13, :cond_2

    const-string/jumbo v13, ""

    :goto_1
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 398
    .local v8, "rangeHeader":Ljava/lang/String;
    const-string/jumbo v13, "vk"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "range header = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string/jumbo v13, "Range"

    invoke-virtual {v2, v13, v8}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 400
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v13}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$700(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Lcom/vkcoffee/android/media/audio/FileMediaBuffer;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v14}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$1200(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->setWriteOffset(I)V

    .line 402
    .end local v7    # "loaded":I
    .end local v8    # "rangeHeader":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v10

    .line 403
    .local v10, "req":Lcom/squareup/okhttp/Request;
    sget-object v13, Lcom/vkcoffee/android/Global;->httpclient:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v13}, Lcom/squareup/okhttp/OkHttpClient;->clone()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v4

    .line 404
    .local v4, "client":Lcom/squareup/okhttp/OkHttpClient;
    const/4 v13, 0x1

    new-array v13, v13, [Lcom/squareup/okhttp/Protocol;

    const/4 v14, 0x0

    sget-object v15, Lcom/squareup/okhttp/Protocol;->HTTP_1_1:Lcom/squareup/okhttp/Protocol;

    aput-object v15, v13, v14

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/squareup/okhttp/OkHttpClient;->setProtocols(Ljava/util/List;)Lcom/squareup/okhttp/OkHttpClient;

    .line 405
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-virtual {v4, v10}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$1302(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;Lcom/squareup/okhttp/Call;)Lcom/squareup/okhttp/Call;

    .line 406
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v13}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$1300(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Lcom/squareup/okhttp/Call;

    move-result-object v13

    invoke-virtual {v13}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v11

    .line 407
    .local v11, "resp":Lcom/squareup/okhttp/Response;
    invoke-virtual {v11}, Lcom/squareup/okhttp/Response;->code()I

    move-result v13

    const/16 v14, 0x194

    if-ne v13, v14, :cond_3

    .line 408
    invoke-virtual {v11}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v13

    invoke-virtual {v13}, Lcom/squareup/okhttp/ResponseBody;->close()V

    .line 409
    new-instance v13, Lcom/vkcoffee/android/api/audio/AudioGetById;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v5, Lcom/vkcoffee/android/AudioFile;->oid:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v5, Lcom/vkcoffee/android/AudioFile;->aid:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/vkcoffee/android/api/audio/AudioGetById;-><init>(Ljava/util/List;)V

    new-instance v14, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader$1;-><init>(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;)V

    .line 410
    invoke-virtual {v13, v14}, Lcom/vkcoffee/android/api/audio/AudioGetById;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v13

    .line 428
    invoke-virtual {v13}, Lcom/vkcoffee/android/api/VKAPIRequest;->execSync()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v13}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$900(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Ljava/util/concurrent/Semaphore;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_0

    .line 397
    .end local v4    # "client":Lcom/squareup/okhttp/OkHttpClient;
    .end local v10    # "req":Lcom/squareup/okhttp/Request;
    .end local v11    # "resp":Lcom/squareup/okhttp/Response;
    .restart local v7    # "loaded":I
    :cond_2
    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto/16 :goto_1

    .line 431
    .end local v7    # "loaded":I
    .restart local v4    # "client":Lcom/squareup/okhttp/OkHttpClient;
    .restart local v10    # "req":Lcom/squareup/okhttp/Request;
    .restart local v11    # "resp":Lcom/squareup/okhttp/Response;
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$1602(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;I)I

    .line 432
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v13}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$600(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I

    move-result v13

    if-nez v13, :cond_4

    .line 433
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v14}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$700(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Lcom/vkcoffee/android/media/audio/FileMediaBuffer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->getFileSize()I

    move-result v14

    invoke-static {v13, v14}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$602(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;I)I

    .line 434
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v13}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$600(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I

    move-result v13

    if-nez v13, :cond_4

    .line 435
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-virtual {v11}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v14

    invoke-virtual {v14}, Lcom/squareup/okhttp/ResponseBody;->contentLength()J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v13, v14}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$602(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;I)I

    .line 436
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v13}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$700(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Lcom/vkcoffee/android/media/audio/FileMediaBuffer;

    move-result-object v13

    instance-of v13, v13, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;

    if-eqz v13, :cond_4

    .line 437
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v13}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$700(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Lcom/vkcoffee/android/media/audio/FileMediaBuffer;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v14}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$600(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->setFileSize(I)V

    .line 441
    :cond_4
    invoke-virtual {v11}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v13

    invoke-virtual {v13}, Lcom/squareup/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v6

    .line 442
    .local v6, "in":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$1702(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;Z)Z

    .line 443
    const/16 v13, 0x2800

    new-array v3, v13, [B

    .line 444
    .local v3, "buf":[B
    const/4 v9, 0x0

    .line 445
    .local v9, "read":I
    :goto_2
    invoke-virtual {v6, v3}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-lez v9, :cond_5

    .line 446
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v13}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$700(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Lcom/vkcoffee/android/media/audio/FileMediaBuffer;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v3, v14, v9}, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 458
    .end local v2    # "bldr":Lcom/squareup/okhttp/Request$Builder;
    .end local v3    # "buf":[B
    .end local v4    # "client":Lcom/squareup/okhttp/OkHttpClient;
    .end local v5    # "file":Lcom/vkcoffee/android/AudioFile;
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v9    # "read":I
    .end local v10    # "req":Lcom/squareup/okhttp/Request;
    .end local v11    # "resp":Lcom/squareup/okhttp/Response;
    :catch_0
    move-exception v12

    .line 459
    .local v12, "x":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v13, "vk"

    invoke-static {v13, v12}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 460
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$1402(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 461
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v13}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$1900(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 462
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$1902(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 481
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v13}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$900(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Ljava/util/concurrent/Semaphore;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_0

    .line 448
    .end local v12    # "x":Ljava/lang/Exception;
    .restart local v2    # "bldr":Lcom/squareup/okhttp/Request$Builder;
    .restart local v3    # "buf":[B
    .restart local v4    # "client":Lcom/squareup/okhttp/OkHttpClient;
    .restart local v5    # "file":Lcom/vkcoffee/android/AudioFile;
    .restart local v6    # "in":Ljava/io/InputStream;
    .restart local v9    # "read":I
    .restart local v10    # "req":Lcom/squareup/okhttp/Request;
    .restart local v11    # "resp":Lcom/squareup/okhttp/Response;
    :cond_5
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 449
    invoke-virtual {v11}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v13

    invoke-virtual {v13}, Lcom/squareup/okhttp/ResponseBody;->close()V

    .line 450
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$1402(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 451
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$1302(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;Lcom/squareup/okhttp/Call;)Lcom/squareup/okhttp/Call;

    .line 452
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v13}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$700(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Lcom/vkcoffee/android/media/audio/FileMediaBuffer;

    move-result-object v13

    invoke-virtual {v13}, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->isFullyLoaded()Z

    move-result v13

    if-nez v13, :cond_7

    .line 453
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v13}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$100(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 481
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v13}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$900(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Ljava/util/concurrent/Semaphore;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_0

    .line 454
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v13}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$1000(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Z

    move-result v13

    if-nez v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v13}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$1800(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I

    move-result v13

    sget v14, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v13, v14, :cond_6

    .line 455
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v13}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$600(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I

    move-result v13

    iput v13, v5, Lcom/vkcoffee/android/AudioFile;->fileSize:I

    .line 456
    const/4 v13, 0x1

    invoke-static {v13, v5}, Lcom/vkcoffee/android/cache/AudioCache;->saveFile(ZLcom/vkcoffee/android/AudioFile;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 481
    .end local v2    # "bldr":Lcom/squareup/okhttp/Request$Builder;
    .end local v3    # "buf":[B
    .end local v4    # "client":Lcom/squareup/okhttp/OkHttpClient;
    .end local v5    # "file":Lcom/vkcoffee/android/AudioFile;
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v9    # "read":I
    .end local v10    # "req":Lcom/squareup/okhttp/Request;
    .end local v11    # "resp":Lcom/squareup/okhttp/Response;
    :catchall_0
    move-exception v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v14}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$900(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Ljava/util/concurrent/Semaphore;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/concurrent/Semaphore;->release()V

    throw v13

    .line 465
    .restart local v12    # "x":Ljava/lang/Exception;
    :cond_9
    :try_start_5
    instance-of v13, v12, Ljava/io/IOException;

    if-eqz v13, :cond_c

    .line 466
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v13}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$700(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Lcom/vkcoffee/android/media/audio/FileMediaBuffer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v13

    if-nez v13, :cond_a

    .line 481
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v13}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$900(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Ljava/util/concurrent/Semaphore;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_0

    .line 469
    :cond_a
    :try_start_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v14}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$700(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Lcom/vkcoffee/android/media/audio/FileMediaBuffer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->getWriteOffset()I

    move-result v14

    invoke-static {v13, v14}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$1202(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;I)I

    .line 470
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v13}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$1600(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I

    move-result v13

    invoke-static {}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$2000()[I

    move-result-object v14

    array-length v14, v14

    if-lt v13, v14, :cond_b

    .line 471
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$1500(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 481
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v13}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$900(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Ljava/util/concurrent/Semaphore;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_0

    .line 473
    :cond_b
    :try_start_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$2000()[I

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v15}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$1608(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I

    move-result v15

    aget v14, v14, v15

    invoke-static {v13, v14}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$2100(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;I)V

    goto :goto_4

    .line 477
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v13}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$300(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Z

    move-result v13

    if-nez v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    iget-object v13, v13, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->errorListener:Lcom/vkcoffee/android/media/audio/AudioPlayer$ErrorListener;

    if-eqz v13, :cond_d

    .line 478
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$1500(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 481
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v13}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$900(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Ljava/util/concurrent/Semaphore;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_0
.end method
