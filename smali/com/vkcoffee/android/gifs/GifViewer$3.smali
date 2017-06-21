.class Lcom/vkcoffee/android/gifs/GifViewer$3;
.super Lcom/vkcoffee/android/background/AsyncTask;
.source "GifViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/gifs/GifViewer;->obtainData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/background/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lcom/vkontakte/android/ui/animation/MovieDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/vkcoffee/android/gifs/GifViewer;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/gifs/GifViewer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/gifs/GifViewer$3;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    .line 479
    invoke-direct {p0}, Lcom/vkcoffee/android/background/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/vkontakte/android/ui/animation/MovieDrawable;
    .locals 28
    .param p1, "var1"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 484
    const/16 v24, 0x0

    aget-object v5, p1, v24

    .line 485
    .local v5, "var11":Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/vkcoffee/android/gifs/GifViewer$3;->mUrl:Ljava/lang/String;

    .line 486
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "doc"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$3;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mOwnerId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "_"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$3;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mDocumentId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 488
    .local v4, "var10":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$3;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mAccessKey:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 489
    new-instance v24, Ljava/lang/StringBuilder;

    const/16 v25, 0x5f

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$3;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mAccessKey:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 494
    .local v7, "var13":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer$3;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->ignoreCache:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1

    .line 496
    const-string v7, "_nocache"

    .line 501
    :goto_1
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 502
    .local v6, "var12":Ljava/lang/String;
    sget-object v24, Lcom/vkcoffee/android/gifs/GifViewer;->sGifs:Lcom/vkcoffee/android/cache/Gifs;

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Lcom/vkcoffee/android/cache/Gifs;->get(Ljava/lang/String;)Lcom/vkcoffee/android/cache/FileLruCache$Entry;

    move-result-object v11

    .line 503
    .local v11, "var17":Lcom/vkcoffee/android/cache/FileLruCache$Entry;
    move-object v8, v11

    .line 504
    .local v8, "var14":Lcom/vkcoffee/android/cache/FileLruCache$Entry;
    if-nez v11, :cond_7

    .line 505
    sget-object v24, Lcom/vkcoffee/android/Global;->httpclient:Lcom/squareup/okhttp/OkHttpClient;

    new-instance v25, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct/range {v25 .. v25}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/squareup/okhttp/Request$Builder;->get()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v12

    .line 506
    .local v12, "var18":Lcom/squareup/okhttp/Response;
    invoke-virtual {v12}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v9

    .line 507
    .local v9, "var15":Lcom/squareup/okhttp/ResponseBody;
    invoke-virtual {v9}, Lcom/squareup/okhttp/ResponseBody;->contentLength()J

    move-result-wide v22

    .line 508
    .local v22, "var8":J
    invoke-virtual {v12}, Lcom/squareup/okhttp/Response;->code()I

    move-result v21

    .line 509
    .local v21, "var7":I
    div-int/lit8 v20, v21, 0x64

    .line 510
    .local v20, "var6":I
    const-wide/32 v24, 0x3200000

    cmp-long v24, v22, v24

    if-lez v24, :cond_2

    .line 511
    new-instance v24, Ljava/io/IOException;

    const-string v25, "File is too big"

    invoke-direct/range {v24 .. v25}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 491
    .end local v6    # "var12":Ljava/lang/String;
    .end local v7    # "var13":Ljava/lang/String;
    .end local v8    # "var14":Lcom/vkcoffee/android/cache/FileLruCache$Entry;
    .end local v9    # "var15":Lcom/squareup/okhttp/ResponseBody;
    .end local v11    # "var17":Lcom/vkcoffee/android/cache/FileLruCache$Entry;
    .end local v12    # "var18":Lcom/squareup/okhttp/Response;
    .end local v20    # "var6":I
    .end local v21    # "var7":I
    .end local v22    # "var8":J
    :cond_0
    const-string v7, ""

    .restart local v7    # "var13":Ljava/lang/String;
    goto :goto_0

    .line 498
    :cond_1
    const-string v7, ""

    goto :goto_1

    .line 514
    .restart local v6    # "var12":Ljava/lang/String;
    .restart local v8    # "var14":Lcom/vkcoffee/android/cache/FileLruCache$Entry;
    .restart local v9    # "var15":Lcom/squareup/okhttp/ResponseBody;
    .restart local v11    # "var17":Lcom/vkcoffee/android/cache/FileLruCache$Entry;
    .restart local v12    # "var18":Lcom/squareup/okhttp/Response;
    .restart local v20    # "var6":I
    .restart local v21    # "var7":I
    .restart local v22    # "var8":J
    :cond_2
    const-wide/16 v24, 0x0

    cmp-long v24, v22, v24

    if-gez v24, :cond_3

    .line 515
    new-instance v24, Ljava/io/IOException;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "Content-length is "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 518
    :cond_3
    const/16 v24, 0x1

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    const/16 v24, 0x2

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    const/16 v24, 0x3

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    .line 519
    new-instance v24, Ljava/io/IOException;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "Invalid response code "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 522
    :cond_4
    sget-object v24, Lcom/vkcoffee/android/gifs/GifViewer;->sGifs:Lcom/vkcoffee/android/cache/Gifs;

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Lcom/vkcoffee/android/cache/Gifs;->insert(Ljava/lang/String;)Lcom/vkcoffee/android/cache/FileLruCache$Editor;

    move-result-object v16

    .line 523
    .local v16, "var20":Lcom/vkcoffee/android/cache/FileLruCache$Editor;
    invoke-virtual/range {v16 .. v16}, Lcom/vkcoffee/android/cache/FileLruCache$Editor;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    .line 524
    .local v13, "var19":Ljava/io/OutputStream;
    invoke-virtual {v9}, Lcom/squareup/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v17

    .line 525
    .local v17, "var21":Ljava/io/InputStream;
    const/16 v24, 0x800

    move/from16 v0, v24

    new-array v10, v0, [B

    .line 526
    .local v10, "var16":[B
    const-wide/16 v14, 0x0

    .line 527
    .local v14, "var2":D
    const/16 v20, -0x80

    .line 530
    :cond_5
    :goto_2
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/io/InputStream;->read([B)I

    move-result v21

    .line 531
    if-gtz v21, :cond_8

    .line 532
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    .line 533
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 534
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/gifs/GifViewer$3;->isCanceled()Z

    move-result v24

    if-eqz v24, :cond_6

    .line 535
    new-instance v24, Ljava/lang/InterruptedException;

    invoke-direct/range {v24 .. v24}, Ljava/lang/InterruptedException;-><init>()V

    throw v24

    .line 538
    :cond_6
    invoke-virtual/range {v16 .. v16}, Lcom/vkcoffee/android/cache/FileLruCache$Editor;->commit()Lcom/vkcoffee/android/cache/FileLruCache$Entry;

    move-result-object v8

    .line 554
    .end local v9    # "var15":Lcom/squareup/okhttp/ResponseBody;
    .end local v10    # "var16":[B
    .end local v12    # "var18":Lcom/squareup/okhttp/Response;
    .end local v13    # "var19":Ljava/io/OutputStream;
    .end local v14    # "var2":D
    .end local v16    # "var20":Lcom/vkcoffee/android/cache/FileLruCache$Editor;
    .end local v17    # "var21":Ljava/io/InputStream;
    .end local v20    # "var6":I
    .end local v21    # "var7":I
    .end local v22    # "var8":J
    :cond_7
    new-instance v24, Lcom/vkontakte/android/ui/animation/MovieDrawable;

    iget-object v0, v8, Lcom/vkcoffee/android/cache/FileLruCache$Entry;->file:Ljava/io/File;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Lcom/vkontakte/android/ui/animation/MovieDrawable;-><init>(Ljava/lang/String;)V

    return-object v24

    .line 542
    .restart local v9    # "var15":Lcom/squareup/okhttp/ResponseBody;
    .restart local v10    # "var16":[B
    .restart local v12    # "var18":Lcom/squareup/okhttp/Response;
    .restart local v13    # "var19":Ljava/io/OutputStream;
    .restart local v14    # "var2":D
    .restart local v16    # "var20":Lcom/vkcoffee/android/cache/FileLruCache$Editor;
    .restart local v17    # "var21":Ljava/io/InputStream;
    .restart local v20    # "var6":I
    .restart local v21    # "var7":I
    .restart local v22    # "var8":J
    :cond_8
    const/16 v24, 0x0

    move/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v13, v10, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 543
    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v24, v0

    add-double v18, v14, v24

    .line 544
    .local v18, "var4":D
    const-wide v24, 0x406fe00000000000L    # 255.0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v26, v18, v26

    mul-double v24, v24, v26

    const-wide v26, 0x405fc00000000000L    # 127.0

    sub-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v21, v0

    .line 545
    move-wide/from16 v14, v18

    .line 546
    sub-int v24, v21, v20

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_5

    .line 547
    move/from16 v20, v21

    .line 548
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/gifs/GifViewer$3;->publishProgress(Ljava/lang/Object;)V

    .line 549
    move-wide/from16 v14, v18

    .line 529
    goto :goto_2
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/gifs/GifViewer$3;->doInBackground([Ljava/lang/String;)Lcom/vkontakte/android/ui/animation/MovieDrawable;

    move-result-object v0

    return-object v0
.end method

.method lambda$onPostExecute$638(Lcom/vkontakte/android/ui/animation/MovieDrawable;)V
    .locals 3
    .param p1, "var1"    # Lcom/vkontakte/android/ui/animation/MovieDrawable;

    .prologue
    .line 558
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer$3;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    invoke-virtual {p1}, Lcom/vkontakte/android/ui/animation/MovieDrawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/vkontakte/android/ui/animation/MovieDrawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->setImageRatio(F)V

    .line 559
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer$3;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 560
    sget-object v0, Lcom/vkcoffee/android/gifs/GifViewer;->sGifs:Lcom/vkcoffee/android/cache/Gifs;

    iget-object v1, p0, Lcom/vkcoffee/android/gifs/GifViewer$3;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    iget v1, v1, Lcom/vkcoffee/android/gifs/GifViewer;->mDocumentId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/cache/Gifs;->trackPlayEvent(IZ)V

    .line 561
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer$3;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    invoke-virtual {v0}, Lcom/vkcoffee/android/gifs/GifViewer;->invalidateMenu()V

    .line 562
    return-void
.end method

.method protected onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "var1"    # Ljava/lang/Throwable;

    .prologue
    .line 564
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer$3;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mProgress:Lcom/vkcoffee/android/ui/CircularProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/CircularProgressBar;->setVisibility(I)V

    .line 565
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer$3;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    const/high16 v1, -0x78000000

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->setColorFilter(I)V

    .line 566
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer$3;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mErrorLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 567
    return-void
.end method

.method protected onPostExecute(Lcom/vkontakte/android/ui/animation/MovieDrawable;)V
    .locals 2
    .param p1, "var1"    # Lcom/vkontakte/android/ui/animation/MovieDrawable;

    .prologue
    const/16 v1, 0x8

    .line 569
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer$3;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mProgress:Lcom/vkcoffee/android/ui/CircularProgressBar;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/CircularProgressBar;->setVisibility(I)V

    .line 570
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer$3;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mErrorLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 571
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer$3;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 572
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer$3;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mDrawable:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer$3;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mDrawable:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/animation/MovieDrawable;->recycle()V

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer$3;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    iput-object p1, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mDrawable:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    .line 577
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer$3;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mDrawable:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    iget-object v1, p0, Lcom/vkcoffee/android/gifs/GifViewer$3;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    invoke-static {v1}, Lcom/vkcoffee/android/gifs/GifViewer$GifViewer$3$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/gifs/GifViewer;)Lcom/vkcoffee/android/functions/VoidF1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/animation/MovieDrawable;->setReadyCallback(Lcom/vkcoffee/android/functions/VoidF1;)V

    .line 578
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer$3;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mDrawable:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/animation/MovieDrawable;->start()V

    .line 579
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkontakte/android/ui/animation/MovieDrawable;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/gifs/GifViewer$3;->onPostExecute(Lcom/vkontakte/android/ui/animation/MovieDrawable;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 581
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer$3;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mProgress:Lcom/vkcoffee/android/ui/CircularProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/CircularProgressBar;->setVisibility(I)V

    .line 582
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer$3;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mProgress:Lcom/vkcoffee/android/ui/CircularProgressBar;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/vkcoffee/android/ui/CircularProgressBar;->setProgress(D)V

    .line 583
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer$3;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    iget-object v0, v0, Lcom/vkcoffee/android/gifs/GifViewer;->mErrorLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 584
    return-void
.end method

.method protected onProgressUpdate(Ljava/lang/Integer;)V
    .locals 6
    .param p1, "var1"    # Ljava/lang/Integer;

    .prologue
    .line 586
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x7f

    int-to-double v2, v2

    const-wide/high16 v4, 0x4070000000000000L    # 256.0

    div-double v0, v2, v4

    .line 587
    .local v0, "var2":D
    iget-object v2, p0, Lcom/vkcoffee/android/gifs/GifViewer$3;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    iget-object v2, v2, Lcom/vkcoffee/android/gifs/GifViewer;->mProgress:Lcom/vkcoffee/android/ui/CircularProgressBar;

    invoke-virtual {v2, v0, v1}, Lcom/vkcoffee/android/ui/CircularProgressBar;->setProgress(D)V

    .line 588
    return-void
.end method

.method protected bridge synthetic onProgressUpdate(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/gifs/GifViewer$3;->onProgressUpdate(Ljava/lang/Integer;)V

    return-void
.end method
