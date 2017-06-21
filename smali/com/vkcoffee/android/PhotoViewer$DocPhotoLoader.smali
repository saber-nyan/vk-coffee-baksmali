.class Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/PhotoView$RunnableFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/PhotoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DocPhotoLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/ui/PhotoView$RunnableFuture",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private bmp:Landroid/graphics/Bitmap;

.field private canceled:Z

.field in:Ljava/io/InputStream;

.field private progr:Lme/grishka/appkit/imageloader/ImageCache$ProgressCallback;

.field final synthetic this$0:Lcom/vkcoffee/android/PhotoViewer;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/PhotoViewer;)V
    .locals 1

    .prologue
    .line 1338
    iput-object p1, p0, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1335
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->canceled:Z

    .line 1336
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->in:Ljava/io/InputStream;

    .line 1340
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1434
    iput-boolean v1, p0, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->canceled:Z

    .line 1435
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 1437
    :try_start_0
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1442
    :cond_0
    :goto_0
    return v1

    .line 1438
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public get()Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->bmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 1455
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 1331
    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 1331
    invoke-virtual {p0, p1, p2, p3}, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->get(JLjava/util/concurrent/TimeUnit;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 1460
    iget-boolean v0, p0, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->canceled:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 1465
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 20

    .prologue
    .line 1344
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->canceled:Z

    .line 1345
    const/4 v12, 0x0

    .line 1348
    .local v12, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/PhotoViewer;->access$1500(Lcom/vkcoffee/android/PhotoViewer;)Landroid/app/Activity;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v17

    const-string/jumbo v18, "temp_doc"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1349
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 1350
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1351
    .end local v12    # "out":Ljava/io/FileOutputStream;
    .local v13, "out":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v15, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/PhotoViewer;->access$2700(Lcom/vkcoffee/android/PhotoViewer;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1352
    .local v15, "url":Ljava/net/URL;
    invoke-virtual {v15}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 1353
    .local v4, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 1354
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->in:Ljava/io/InputStream;

    .line 1355
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v8

    .line 1358
    .local v8, "len":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->progr:Lme/grishka/appkit/imageloader/ImageCache$ProgressCallback;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->progr:Lme/grishka/appkit/imageloader/ImageCache$ProgressCallback;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v0, v1, v8}, Lme/grishka/appkit/imageloader/ImageCache$ProgressCallback;->onProgressChanged(II)V

    .line 1361
    :cond_0
    const/4 v14, 0x0

    .line 1362
    .local v14, "read":I
    const/4 v10, 0x0

    .local v10, "loaded":I
    const/4 v3, 0x0

    .line 1363
    .local v3, "c":I
    const/16 v17, 0x2800

    move/from16 v0, v17

    new-array v2, v0, [B

    .line 1364
    .local v2, "buf":[B
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->in:Ljava/io/InputStream;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v14

    if-lez v14, :cond_5

    .line 1365
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v2, v0, v14}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1366
    add-int/2addr v10, v14

    .line 1367
    add-int/lit8 v3, v3, 0x1

    .line 1368
    rem-int/lit8 v17, v3, 0x5

    if-nez v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->progr:Lme/grishka/appkit/imageloader/ImageCache$ProgressCallback;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->progr:Lme/grishka/appkit/imageloader/ImageCache$ProgressCallback;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v10, v8}, Lme/grishka/appkit/imageloader/ImageCache$ProgressCallback;->onProgressChanged(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1403
    .end local v2    # "buf":[B
    .end local v3    # "c":I
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    .end local v8    # "len":I
    .end local v10    # "loaded":I
    .end local v14    # "read":I
    .end local v15    # "url":Ljava/net/URL;
    :catch_0
    move-exception v16

    move-object v12, v13

    .line 1404
    .end local v7    # "file":Ljava/io/File;
    .end local v13    # "out":Ljava/io/FileOutputStream;
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    .local v16, "x":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string/jumbo v17, "vk"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1405
    const-string/jumbo v17, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 1406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/PhotoViewer;->access$1500(Lcom/vkcoffee/android/PhotoViewer;)Landroid/app/Activity;

    move-result-object v17

    if-eqz v17, :cond_2

    .line 1407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/PhotoViewer;->access$1500(Lcom/vkcoffee/android/PhotoViewer;)Landroid/app/Activity;

    move-result-object v17

    new-instance v18, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader$2;-><init>(Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;)V

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1418
    :cond_2
    if-eqz v12, :cond_3

    .line 1419
    :try_start_3
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 1424
    :cond_3
    :goto_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->in:Ljava/io/InputStream;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 1425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->in:Ljava/io/InputStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 1430
    .end local v16    # "x":Ljava/lang/Exception;
    :cond_4
    :goto_3
    return-void

    .line 1372
    .end local v12    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "buf":[B
    .restart local v3    # "c":I
    .restart local v4    # "conn":Ljava/net/HttpURLConnection;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v8    # "len":I
    .restart local v10    # "loaded":I
    .restart local v13    # "out":Ljava/io/FileOutputStream;
    .restart local v14    # "read":I
    .restart local v15    # "url":Ljava/net/URL;
    :cond_5
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->in:Ljava/io/InputStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    .line 1373
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 1374
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1377
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1378
    .local v11, "opts":Landroid/graphics/BitmapFactory$Options;
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1379
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1380
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v17, v0

    if-lez v17, :cond_6

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v17, v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-gtz v17, :cond_9

    .line 1418
    :cond_6
    if-eqz v13, :cond_7

    .line 1419
    :try_start_6
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 1424
    :cond_7
    :goto_4
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->in:Ljava/io/InputStream;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 1425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->in:Ljava/io/InputStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a

    :cond_8
    :goto_5
    move-object v12, v13

    .line 1381
    .end local v13    # "out":Ljava/io/FileOutputStream;
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 1383
    .end local v12    # "out":Ljava/io/FileOutputStream;
    .restart local v13    # "out":Ljava/io/FileOutputStream;
    :cond_9
    :try_start_8
    sget-object v17, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 1384
    .local v5, "display":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/vkcoffee/android/PhotoViewer;->useSmall:Z

    move/from16 v17, v0

    if-eqz v17, :cond_f

    const/16 v17, 0x400

    :goto_6
    iget v0, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    iget v0, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1385
    .local v9, "limit":I
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1386
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-gt v0, v9, :cond_a

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v0, v9, :cond_b

    .line 1387
    :cond_a
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v17, v0

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v9

    move/from16 v18, v0

    div-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v17

    move/from16 v0, v17

    iput v0, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1390
    :cond_b
    :try_start_9
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->bmp:Landroid/graphics/Bitmap;
    :try_end_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1395
    :goto_7
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lcom/vkcoffee/android/PhotoViewer;->access$2802(Lcom/vkcoffee/android/PhotoViewer;Z)Z

    .line 1396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/PhotoViewer;->access$1500(Lcom/vkcoffee/android/PhotoViewer;)Landroid/app/Activity;

    move-result-object v17

    if-eqz v17, :cond_c

    .line 1397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkcoffee/android/PhotoViewer;->access$1500(Lcom/vkcoffee/android/PhotoViewer;)Landroid/app/Activity;

    move-result-object v17

    new-instance v18, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader$1;-><init>(Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;)V

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1418
    :cond_c
    if-eqz v13, :cond_d

    .line 1419
    :try_start_b
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 1424
    :cond_d
    :goto_8
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->in:Ljava/io/InputStream;

    move-object/from16 v17, v0

    if-eqz v17, :cond_e

    .line 1425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->in:Ljava/io/InputStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    :cond_e
    move-object v12, v13

    .line 1428
    .end local v13    # "out":Ljava/io/FileOutputStream;
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 1384
    .end local v9    # "limit":I
    .end local v12    # "out":Ljava/io/FileOutputStream;
    .restart local v13    # "out":Ljava/io/FileOutputStream;
    :cond_f
    const/16 v17, 0x800

    goto/16 :goto_6

    .line 1391
    .restart local v9    # "limit":I
    :catch_1
    move-exception v6

    .line 1392
    .local v6, "e":Ljava/lang/OutOfMemoryError;
    :try_start_d
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    iput v0, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1393
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->bmp:Landroid/graphics/Bitmap;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_7

    .line 1417
    .end local v2    # "buf":[B
    .end local v3    # "c":I
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "display":Landroid/util/DisplayMetrics;
    .end local v6    # "e":Ljava/lang/OutOfMemoryError;
    .end local v8    # "len":I
    .end local v9    # "limit":I
    .end local v10    # "loaded":I
    .end local v11    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v14    # "read":I
    .end local v15    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v17

    move-object v12, v13

    .line 1418
    .end local v7    # "file":Ljava/io/File;
    .end local v13    # "out":Ljava/io/FileOutputStream;
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    :goto_9
    if-eqz v12, :cond_10

    .line 1419
    :try_start_e
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 1424
    :cond_10
    :goto_a
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->in:Ljava/io/InputStream;

    move-object/from16 v18, v0

    if-eqz v18, :cond_11

    .line 1425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->in:Ljava/io/InputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    .line 1428
    :cond_11
    :goto_b
    throw v17

    .line 1427
    .end local v12    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "buf":[B
    .restart local v3    # "c":I
    .restart local v4    # "conn":Ljava/net/HttpURLConnection;
    .restart local v5    # "display":Landroid/util/DisplayMetrics;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v8    # "len":I
    .restart local v9    # "limit":I
    .restart local v10    # "loaded":I
    .restart local v11    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v13    # "out":Ljava/io/FileOutputStream;
    .restart local v14    # "read":I
    .restart local v15    # "url":Ljava/net/URL;
    :catch_2
    move-exception v17

    move-object v12, v13

    .line 1429
    .end local v13    # "out":Ljava/io/FileOutputStream;
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 1421
    .end local v5    # "display":Landroid/util/DisplayMetrics;
    .end local v9    # "limit":I
    .end local v12    # "out":Ljava/io/FileOutputStream;
    .restart local v13    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v17

    goto/16 :goto_4

    .restart local v5    # "display":Landroid/util/DisplayMetrics;
    .restart local v9    # "limit":I
    :catch_4
    move-exception v17

    goto :goto_8

    .end local v2    # "buf":[B
    .end local v3    # "c":I
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "display":Landroid/util/DisplayMetrics;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "len":I
    .end local v9    # "limit":I
    .end local v10    # "loaded":I
    .end local v11    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v13    # "out":Ljava/io/FileOutputStream;
    .end local v14    # "read":I
    .end local v15    # "url":Ljava/net/URL;
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    .restart local v16    # "x":Ljava/lang/Exception;
    :catch_5
    move-exception v17

    goto/16 :goto_2

    .end local v16    # "x":Ljava/lang/Exception;
    :catch_6
    move-exception v18

    goto :goto_a

    .line 1427
    :catch_7
    move-exception v18

    goto :goto_b

    .line 1417
    :catchall_1
    move-exception v17

    goto :goto_9

    .line 1427
    .restart local v16    # "x":Ljava/lang/Exception;
    :catch_8
    move-exception v17

    goto/16 :goto_3

    .line 1403
    .end local v16    # "x":Ljava/lang/Exception;
    :catch_9
    move-exception v16

    goto/16 :goto_1

    .line 1427
    .end local v12    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "buf":[B
    .restart local v3    # "c":I
    .restart local v4    # "conn":Ljava/net/HttpURLConnection;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v8    # "len":I
    .restart local v10    # "loaded":I
    .restart local v11    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v13    # "out":Ljava/io/FileOutputStream;
    .restart local v14    # "read":I
    .restart local v15    # "url":Ljava/net/URL;
    :catch_a
    move-exception v17

    goto/16 :goto_5
.end method

.method public setProgressCallback(Lme/grishka/appkit/imageloader/ImageCache$ProgressCallback;)V
    .locals 0
    .param p1, "c"    # Lme/grishka/appkit/imageloader/ImageCache$ProgressCallback;

    .prologue
    .line 1470
    iput-object p1, p0, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->progr:Lme/grishka/appkit/imageloader/ImageCache$ProgressCallback;

    .line 1471
    return-void
.end method
