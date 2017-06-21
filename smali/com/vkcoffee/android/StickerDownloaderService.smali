.class public Lcom/vkcoffee/android/StickerDownloaderService;
.super Landroid/app/IntentService;
.source "StickerDownloaderService.java"


# static fields
.field private static final EXTRA_SILENT:Ljava/lang/String; = "silent"

.field private static final EXTRA_STICKER:Ljava/lang/String; = "sticker_stock_item"

.field private static final NETWORK_ATTEMPTS_COUNT:I = 0x3

.field private static final NOTIFICATION_MASK:I = -0xa8c40b3

.field private static final TAG:Ljava/lang/String; = "StickerDownloader"

.field private static sInstance:Lcom/vkcoffee/android/StickerDownloaderService;


# instance fields
.field private mCurrentItem:Lcom/vkcoffee/android/data/orm/StickerStockItem;

.field private mDownloadBuffer:[B

.field private mDownloading:Z

.field private mHttpClient:Lcom/squareup/okhttp/OkHttpClient;

.field private mNotificationBuilder:Landroid/app/Notification$Builder;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPercent:F

.field private final mQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/vkcoffee/android/data/orm/StickerStockItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    const-string/jumbo v0, "StickerDownloader"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/StickerDownloaderService;->mQueue:Ljava/util/Queue;

    .line 37
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/StickerDownloaderService;->mHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    .line 38
    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/vkcoffee/android/StickerDownloaderService;->mDownloadBuffer:[B

    .line 58
    return-void
.end method

.method private checkQueue()V
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/vkcoffee/android/StickerDownloaderService;->mDownloading:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/StickerDownloaderService;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/vkcoffee/android/StickerDownloaderService;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/StickerDownloaderService;->download(Lcom/vkcoffee/android/data/orm/StickerStockItem;)V

    .line 80
    :cond_0
    return-void
.end method

.method public static download(Landroid/content/Context;Lcom/vkcoffee/android/data/orm/StickerStockItem;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/vkcoffee/android/StickerDownloaderService;->download(Landroid/content/Context;Lcom/vkcoffee/android/data/orm/StickerStockItem;Z)V

    .line 45
    return-void
.end method

.method public static download(Landroid/content/Context;Lcom/vkcoffee/android/data/orm/StickerStockItem;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/vkcoffee/android/data/orm/StickerStockItem;
    .param p2, "silent"    # Z

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkcoffee/android/StickerDownloaderService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "sticker_stock_item"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 50
    const-string/jumbo v1, "silent"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 51
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 52
    return-void
.end method

.method private download(Lcom/vkcoffee/android/data/orm/StickerStockItem;)V
    .locals 12
    .param p1, "item"    # Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 83
    iput-boolean v6, p0, Lcom/vkcoffee/android/StickerDownloaderService;->mDownloading:Z

    .line 84
    iput-object p1, p0, Lcom/vkcoffee/android/StickerDownloaderService;->mCurrentItem:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .line 85
    iget-object v6, p0, Lcom/vkcoffee/android/StickerDownloaderService;->mCurrentItem:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    invoke-virtual {v6}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 88
    .local v4, "silent":Z
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-virtual {p1}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getLocalPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 89
    iget-object v6, p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->sticker_ids:[I

    array-length v6, v6

    shl-int/lit8 v3, v6, 0x1

    .line 90
    .local v3, "imagesTasksCount":I
    add-int/lit8 v5, v3, 0x3

    .line 91
    .local v5, "total":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_6

    .line 92
    if-nez v4, :cond_0

    .line 93
    invoke-direct {p0, v1, v5}, Lcom/vkcoffee/android/StickerDownloaderService;->updateProgress(II)V

    .line 95
    :cond_0
    if-ge v1, v3, :cond_3

    .line 96
    iget-object v6, p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->sticker_ids:[I

    shr-int/lit8 v7, v1, 0x1

    aget v2, v6, v7

    .line 97
    .local v2, "id":I
    rem-int/lit8 v6, v1, 0x2

    if-nez v6, :cond_1

    .line 98
    invoke-virtual {p1, v2}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getServerStickerKeyboardURL(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v2}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getLocalStickerKeyboardURL(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/vkcoffee/android/StickerDownloaderService;->download(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .end local v2    # "id":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    .restart local v2    # "id":I
    :cond_1
    invoke-virtual {p1, v2}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getServerStickerViewURL(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v2}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getLocalStickerViewURL(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/vkcoffee/android/StickerDownloaderService;->download(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 121
    .end local v1    # "i":I
    .end local v2    # "id":I
    .end local v3    # "imagesTasksCount":I
    .end local v5    # "total":I
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 123
    if-nez v4, :cond_2

    .line 124
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/StickerDownloaderService;->showFailed(Lcom/vkcoffee/android/data/orm/StickerStockItem;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    :cond_2
    iput v10, p0, Lcom/vkcoffee/android/StickerDownloaderService;->mPercent:F

    .line 128
    iput-object v9, p0, Lcom/vkcoffee/android/StickerDownloaderService;->mCurrentItem:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .line 129
    iput-object v9, p0, Lcom/vkcoffee/android/StickerDownloaderService;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 130
    iput-boolean v11, p0, Lcom/vkcoffee/android/StickerDownloaderService;->mDownloading:Z

    .line 131
    invoke-direct {p0}, Lcom/vkcoffee/android/StickerDownloaderService;->checkQueue()V

    .line 133
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2
    return-void

    .line 102
    .restart local v1    # "i":I
    .restart local v3    # "imagesTasksCount":I
    .restart local v5    # "total":I
    :cond_3
    if-ne v1, v3, :cond_4

    .line 103
    :try_start_2
    invoke-virtual {p1}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getServerIconURL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getLocalIconURL()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/vkcoffee/android/StickerDownloaderService;->download(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 127
    .end local v1    # "i":I
    .end local v3    # "imagesTasksCount":I
    .end local v5    # "total":I
    :catchall_0
    move-exception v6

    iput v10, p0, Lcom/vkcoffee/android/StickerDownloaderService;->mPercent:F

    .line 128
    iput-object v9, p0, Lcom/vkcoffee/android/StickerDownloaderService;->mCurrentItem:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .line 129
    iput-object v9, p0, Lcom/vkcoffee/android/StickerDownloaderService;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 130
    iput-boolean v11, p0, Lcom/vkcoffee/android/StickerDownloaderService;->mDownloading:Z

    .line 131
    invoke-direct {p0}, Lcom/vkcoffee/android/StickerDownloaderService;->checkQueue()V

    throw v6

    .line 104
    .restart local v1    # "i":I
    .restart local v3    # "imagesTasksCount":I
    .restart local v5    # "total":I
    :cond_4
    add-int/lit8 v6, v3, 0x1

    if-ne v1, v6, :cond_5

    .line 105
    :try_start_3
    invoke-virtual {p1}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getServerThumbURL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getLocalThumbURL()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/vkcoffee/android/StickerDownloaderService;->download(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 107
    :cond_5
    invoke-virtual {p1}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getServerBackgroundURL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getLocalBackgroundURL()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/vkcoffee/android/StickerDownloaderService;->download(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 111
    :cond_6
    iget-boolean v6, p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->active:Z

    if-nez v6, :cond_7

    .line 112
    new-instance v6, Lcom/vkcoffee/android/api/store/StoreSetActive;

    iget v7, p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->id:I

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lcom/vkcoffee/android/api/store/StoreSetActive;-><init>(IZ)V

    invoke-virtual {v6}, Lcom/vkcoffee/android/api/store/StoreSetActive;->execSync()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 113
    invoke-static {}, Lcom/vkcoffee/android/stickers/Stickers;->get()Lcom/vkcoffee/android/stickers/Stickers;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, p1, v7}, Lcom/vkcoffee/android/stickers/Stickers;->setActive(Lcom/vkcoffee/android/data/orm/StickerStockItem;Z)V

    .line 117
    :cond_7
    invoke-static {p0}, Lcom/vkcoffee/android/stickers/Stickers;->get(Landroid/content/Context;)Lcom/vkcoffee/android/stickers/Stickers;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, p1, v7}, Lcom/vkcoffee/android/stickers/Stickers;->setDownloaded(Lcom/vkcoffee/android/data/orm/StickerStockItem;Z)V

    .line 118
    if-nez v4, :cond_8

    .line 119
    invoke-direct {p0}, Lcom/vkcoffee/android/StickerDownloaderService;->showDone()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 127
    :cond_8
    iput v10, p0, Lcom/vkcoffee/android/StickerDownloaderService;->mPercent:F

    .line 128
    iput-object v9, p0, Lcom/vkcoffee/android/StickerDownloaderService;->mCurrentItem:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .line 129
    iput-object v9, p0, Lcom/vkcoffee/android/StickerDownloaderService;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 130
    iput-boolean v11, p0, Lcom/vkcoffee/android/StickerDownloaderService;->mDownloading:Z

    .line 131
    invoke-direct {p0}, Lcom/vkcoffee/android/StickerDownloaderService;->checkQueue()V

    goto :goto_2
.end method

.method private download(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    new-instance v9, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v9}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    invoke-virtual {v9, p1}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v8

    .line 216
    .local v8, "request":Lcom/squareup/okhttp/Request;
    const/4 v1, 0x0

    .line 217
    .local v1, "in":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 218
    .local v4, "out":Ljava/io/OutputStream;
    const/4 v3, 0x0

    .line 219
    .local v3, "lastException":Ljava/io/IOException;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    const/4 v9, 0x3

    if-ge v2, v9, :cond_0

    .line 221
    :try_start_0
    iget-object v9, p0, Lcom/vkcoffee/android/StickerDownloaderService;->mHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v9, v8}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v9

    invoke-virtual {v9}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v9

    invoke-virtual {v9}, Lcom/squareup/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 228
    :cond_0
    if-nez v1, :cond_1

    .line 229
    new-instance v9, Ljava/io/IOException;

    const-string/jumbo v10, "Reached the limit of the number of attempts"

    invoke-direct {v9, v10, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/io/IOException;
    move-object v3, v0

    .line 219
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    .local v6, "outFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 236
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 238
    :cond_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    .end local v4    # "out":Ljava/io/OutputStream;
    .local v5, "out":Ljava/io/OutputStream;
    :goto_1
    :try_start_2
    iget-object v9, p0, Lcom/vkcoffee/android/StickerDownloaderService;->mDownloadBuffer:[B

    invoke-virtual {v1, v9}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "read":I
    if-lez v7, :cond_4

    .line 241
    iget-object v9, p0, Lcom/vkcoffee/android/StickerDownloaderService;->mDownloadBuffer:[B

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 243
    .end local v7    # "read":I
    :catch_1
    move-exception v0

    move-object v4, v5

    .line 244
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "outFile":Ljava/io/File;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "out":Ljava/io/OutputStream;
    :goto_2
    :try_start_3
    const-string/jumbo v9, "StickerDownloader"

    const-string/jumbo v10, "Sticker I/O exception: "

    invoke-static {v9, v10, v0}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unable save file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 247
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 248
    if-eqz v4, :cond_3

    .line 249
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_3
    throw v9

    .line 247
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "outFile":Ljava/io/File;
    .restart local v7    # "read":I
    :cond_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 248
    if-eqz v5, :cond_5

    .line 249
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 252
    :cond_5
    return-void

    .line 247
    .end local v7    # "read":I
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    goto :goto_3

    .line 243
    .end local v6    # "outFile":Ljava/io/File;
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method public static getCurrentPackId()I
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/vkcoffee/android/StickerDownloaderService;->sInstance:Lcom/vkcoffee/android/StickerDownloaderService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkcoffee/android/StickerDownloaderService;->sInstance:Lcom/vkcoffee/android/StickerDownloaderService;

    iget-object v0, v0, Lcom/vkcoffee/android/StickerDownloaderService;->mCurrentItem:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkcoffee/android/StickerDownloaderService;->sInstance:Lcom/vkcoffee/android/StickerDownloaderService;

    iget-object v0, v0, Lcom/vkcoffee/android/StickerDownloaderService;->mCurrentItem:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget v0, v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->id:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getCurrentProgress()F
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/vkcoffee/android/StickerDownloaderService;->sInstance:Lcom/vkcoffee/android/StickerDownloaderService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkcoffee/android/StickerDownloaderService;->sInstance:Lcom/vkcoffee/android/StickerDownloaderService;

    iget v0, v0, Lcom/vkcoffee/android/StickerDownloaderService;->mPercent:F

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method public static isInQueue(I)Z
    .locals 3
    .param p0, "id"    # I

    .prologue
    .line 150
    sget-object v1, Lcom/vkcoffee/android/StickerDownloaderService;->sInstance:Lcom/vkcoffee/android/StickerDownloaderService;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/vkcoffee/android/StickerDownloaderService;->sInstance:Lcom/vkcoffee/android/StickerDownloaderService;

    iget-object v1, v1, Lcom/vkcoffee/android/StickerDownloaderService;->mQueue:Ljava/util/Queue;

    if-eqz v1, :cond_1

    .line 151
    sget-object v1, Lcom/vkcoffee/android/StickerDownloaderService;->sInstance:Lcom/vkcoffee/android/StickerDownloaderService;

    iget-object v1, v1, Lcom/vkcoffee/android/StickerDownloaderService;->mQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .line 152
    .local v0, "item":Lcom/vkcoffee/android/data/orm/StickerStockItem;
    iget v2, v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->id:I

    if-ne v2, p0, :cond_0

    .line 153
    const/4 v1, 0x1

    .line 157
    .end local v0    # "item":Lcom/vkcoffee/android/data/orm/StickerStockItem;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notify(Landroid/app/Notification;)V
    .locals 3
    .param p1, "notification"    # Landroid/app/Notification;

    .prologue
    .line 207
    sget-boolean v0, Lcom/vkcoffee/android/VKApplication;->hasLollipop:Z

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/vkcoffee/android/StickerDownloaderService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p1, Landroid/app/Notification;->color:I

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/StickerDownloaderService;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, -0xa8c40b3

    iget-object v2, p0, Lcom/vkcoffee/android/StickerDownloaderService;->mCurrentItem:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget v2, v2, Lcom/vkcoffee/android/data/orm/StickerStockItem;->id:I

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 211
    return-void
.end method

.method private notifyProgress(IF)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "percent"    # F

    .prologue
    .line 174
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.vkcoffee.android.STICKERS_DOWNLOAD_PROGRESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "id"

    .line 175
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "progress"

    .line 176
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.vkcoffee.android.permission.ACCESS_DATA"

    .line 174
    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/StickerDownloaderService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method private showDone()V
    .locals 7

    .prologue
    const v6, 0x7f08051a

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 180
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    const-string/jumbo v2, "vkontakte://vk.com/stickers/settings"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 181
    .local v0, "content":Landroid/content/Intent;
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080074

    .line 182
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/StickerDownloaderService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/vkcoffee/android/StickerDownloaderService;->mCurrentItem:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget-object v3, v3, Lcom/vkcoffee/android/data/orm/StickerStockItem;->title:Ljava/lang/String;

    aput-object v3, v2, v4

    .line 183
    invoke-virtual {p0, v6, v2}, Lcom/vkcoffee/android/StickerDownloaderService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/vkcoffee/android/StickerDownloaderService;->mCurrentItem:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget-object v3, v3, Lcom/vkcoffee/android/data/orm/StickerStockItem;->title:Ljava/lang/String;

    aput-object v3, v2, v4

    .line 184
    invoke-virtual {p0, v6, v2}, Lcom/vkcoffee/android/StickerDownloaderService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x7f02021a

    .line 185
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 186
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const/high16 v2, 0x8000000

    .line 187
    invoke-static {p0, v4, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 188
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 181
    invoke-direct {p0, v1}, Lcom/vkcoffee/android/StickerDownloaderService;->notify(Landroid/app/Notification;)V

    .line 189
    return-void
.end method

.method private showFailed(Lcom/vkcoffee/android/data/orm/StickerStockItem;)V
    .locals 4
    .param p1, "item"    # Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .prologue
    const v3, 0x7f080518

    .line 192
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "sticker_stock_item"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 194
    const-string/jumbo v2, "silent"

    invoke-virtual {p1}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 196
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080074

    .line 197
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/StickerDownloaderService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 198
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/StickerDownloaderService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 199
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/StickerDownloaderService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x1080078

    .line 200
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    .line 201
    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 202
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 203
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 196
    invoke-direct {p0, v1}, Lcom/vkcoffee/android/StickerDownloaderService;->notify(Landroid/app/Notification;)V

    .line 204
    return-void
.end method

.method private updateProgress(II)V
    .locals 6
    .param p1, "loaded"    # I
    .param p2, "total"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 161
    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/vkcoffee/android/StickerDownloaderService;->mPercent:F

    .line 162
    iget-object v0, p0, Lcom/vkcoffee/android/StickerDownloaderService;->mCurrentItem:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget v0, v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->id:I

    iget v1, p0, Lcom/vkcoffee/android/StickerDownloaderService;->mPercent:F

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/StickerDownloaderService;->notifyProgress(IF)V

    .line 163
    iget-object v0, p0, Lcom/vkcoffee/android/StickerDownloaderService;->mNotificationBuilder:Landroid/app/Notification$Builder;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08051c

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/vkcoffee/android/StickerDownloaderService;->mCurrentItem:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget-object v3, v3, Lcom/vkcoffee/android/data/orm/StickerStockItem;->title:Ljava/lang/String;

    aput-object v3, v2, v4

    .line 165
    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/StickerDownloaderService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 166
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x1080081

    .line 167
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/StickerDownloaderService;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/StickerDownloaderService;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p2, p1, v4}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 170
    iget-object v0, p0, Lcom/vkcoffee/android/StickerDownloaderService;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/StickerDownloaderService;->notify(Landroid/app/Notification;)V

    .line 171
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 63
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/StickerDownloaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/vkcoffee/android/StickerDownloaderService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 64
    sput-object p0, Lcom/vkcoffee/android/StickerDownloaderService;->sInstance:Lcom/vkcoffee/android/StickerDownloaderService;

    .line 65
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 138
    const/4 v0, 0x0

    sput-object v0, Lcom/vkcoffee/android/StickerDownloaderService;->sInstance:Lcom/vkcoffee/android/StickerDownloaderService;

    .line 139
    return-void
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 69
    const-string/jumbo v1, "sticker_stock_item"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .line 70
    .local v0, "item":Lcom/vkcoffee/android/data/orm/StickerStockItem;
    const-string/jumbo v1, "silent"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->setTag(Ljava/lang/Object;)V

    .line 71
    iget-object v1, p0, Lcom/vkcoffee/android/StickerDownloaderService;->mQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 72
    iget v1, v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->id:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/vkcoffee/android/StickerDownloaderService;->notifyProgress(IF)V

    .line 73
    invoke-direct {p0}, Lcom/vkcoffee/android/StickerDownloaderService;->checkQueue()V

    .line 74
    return-void
.end method
