.class Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4;
.super Lcom/vkcoffee/android/background/AsyncTask;
.source "DocumentAttachment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->start(Z)V
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

.field final synthetic this$0:Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

.field final synthetic val$autoplay:Z


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4;->this$0:Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

    iput-boolean p2, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4;->val$autoplay:Z

    invoke-direct {p0}, Lcom/vkcoffee/android/background/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/vkontakte/android/ui/animation/MovieDrawable;
    .locals 25
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 459
    const/16 v22, 0x0

    aget-object v19, p1, v22

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4;->mUrl:Ljava/lang/String;

    .line 460
    .local v19, "url":Ljava/lang/String;
    const/16 v22, 0x1

    aget-object v6, p1, v22

    .line 461
    .local v6, "documentId":Ljava/lang/String;
    sget-object v22, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->sGifs:Lcom/vkcoffee/android/cache/Gifs;

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lcom/vkcoffee/android/cache/Gifs;->get(Ljava/lang/String;)Lcom/vkcoffee/android/cache/FileLruCache$Entry;

    move-result-object v8

    .line 462
    .local v8, "entry":Lcom/vkcoffee/android/cache/FileLruCache$Entry;
    if-nez v8, :cond_5

    .line 472
    sget-object v22, Lcom/vkcoffee/android/Global;->httpclient:Lcom/squareup/okhttp/OkHttpClient;

    new-instance v23, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct/range {v23 .. v23}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/squareup/okhttp/Request$Builder;->get()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v15

    .line 473
    .local v15, "response":Lcom/squareup/okhttp/Response;
    invoke-virtual {v15}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v2

    .line 474
    .local v2, "body":Lcom/squareup/okhttp/ResponseBody;
    invoke-virtual {v2}, Lcom/squareup/okhttp/ResponseBody;->contentLength()J

    move-result-wide v4

    .line 475
    .local v4, "contentLength":J
    invoke-virtual {v15}, Lcom/squareup/okhttp/Response;->code()I

    move-result v16

    .line 476
    .local v16, "responseCode":I
    div-int/lit8 v17, v16, 0x64

    .line 477
    .local v17, "shortCode":I
    const-wide/32 v22, 0x3200000

    cmp-long v22, v4, v22

    if-lez v22, :cond_0

    .line 478
    new-instance v22, Ljava/io/IOException;

    const-string/jumbo v23, "File is too big"

    invoke-direct/range {v22 .. v23}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 480
    :cond_0
    const-wide/16 v22, 0x0

    cmp-long v22, v4, v22

    if-gez v22, :cond_1

    .line 481
    new-instance v22, Ljava/io/IOException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Content-length is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 483
    :cond_1
    const/16 v22, 0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    const/16 v22, 0x2

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    const/16 v22, 0x3

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 484
    new-instance v22, Ljava/io/IOException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Invalid response code "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 487
    :cond_2
    sget-object v22, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->sGifs:Lcom/vkcoffee/android/cache/Gifs;

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lcom/vkcoffee/android/cache/Gifs;->insert(Ljava/lang/String;)Lcom/vkcoffee/android/cache/FileLruCache$Editor;

    move-result-object v7

    .line 488
    .local v7, "editor":Lcom/vkcoffee/android/cache/FileLruCache$Editor;
    invoke-virtual {v7}, Lcom/vkcoffee/android/cache/FileLruCache$Editor;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    .line 489
    .local v11, "out":Ljava/io/OutputStream;
    invoke-virtual {v2}, Lcom/squareup/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v9

    .line 490
    .local v9, "in":Ljava/io/InputStream;
    const/16 v22, 0x400

    move/from16 v0, v22

    new-array v3, v0, [B

    .line 492
    .local v3, "buffer":[B
    const-wide/16 v20, 0x0

    .line 493
    .local v20, "transferred":D
    const/4 v10, 0x0

    .line 494
    .local v10, "lastSentProgress":I
    :cond_3
    :goto_0
    invoke-virtual {v9, v3}, Ljava/io/InputStream;->read([B)I

    move-result v14

    .local v14, "read":I
    if-lez v14, :cond_4

    .line 495
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v11, v3, v0, v14}, Ljava/io/OutputStream;->write([BII)V

    .line 496
    int-to-double v0, v14

    move-wide/from16 v22, v0

    add-double v20, v20, v22

    .line 497
    long-to-double v0, v4

    move-wide/from16 v22, v0

    div-double v12, v20, v22

    .line 498
    .local v12, "normalizedProgress":D
    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    mul-double v22, v22, v12

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v18, v0

    .line 499
    .local v18, "signedProgress":I
    move/from16 v0, v18

    if-eq v0, v10, :cond_3

    .line 500
    move/from16 v10, v18

    .line 501
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4;->publishProgress(Ljava/lang/Object;)V

    goto :goto_0

    .line 504
    .end local v12    # "normalizedProgress":D
    .end local v18    # "signedProgress":I
    :cond_4
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 505
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    .line 506
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4;->isCanceled()Z

    move-result v22

    if-nez v22, :cond_6

    .line 507
    invoke-virtual {v7}, Lcom/vkcoffee/android/cache/FileLruCache$Editor;->commit()Lcom/vkcoffee/android/cache/FileLruCache$Entry;

    move-result-object v8

    .line 512
    .end local v2    # "body":Lcom/squareup/okhttp/ResponseBody;
    .end local v3    # "buffer":[B
    .end local v4    # "contentLength":J
    .end local v7    # "editor":Lcom/vkcoffee/android/cache/FileLruCache$Editor;
    .end local v9    # "in":Ljava/io/InputStream;
    .end local v10    # "lastSentProgress":I
    .end local v11    # "out":Ljava/io/OutputStream;
    .end local v14    # "read":I
    .end local v15    # "response":Lcom/squareup/okhttp/Response;
    .end local v16    # "responseCode":I
    .end local v17    # "shortCode":I
    .end local v20    # "transferred":D
    :cond_5
    new-instance v22, Lcom/vkontakte/android/ui/animation/MovieDrawable;

    iget-object v0, v8, Lcom/vkcoffee/android/cache/FileLruCache$Entry;->file:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lcom/vkontakte/android/ui/animation/MovieDrawable;-><init>(Ljava/lang/String;)V

    return-object v22

    .line 509
    .restart local v2    # "body":Lcom/squareup/okhttp/ResponseBody;
    .restart local v3    # "buffer":[B
    .restart local v4    # "contentLength":J
    .restart local v7    # "editor":Lcom/vkcoffee/android/cache/FileLruCache$Editor;
    .restart local v9    # "in":Ljava/io/InputStream;
    .restart local v10    # "lastSentProgress":I
    .restart local v11    # "out":Ljava/io/OutputStream;
    .restart local v14    # "read":I
    .restart local v15    # "response":Lcom/squareup/okhttp/Response;
    .restart local v16    # "responseCode":I
    .restart local v17    # "shortCode":I
    .restart local v20    # "transferred":D
    :cond_6
    new-instance v22, Ljava/lang/InterruptedException;

    invoke-direct/range {v22 .. v22}, Ljava/lang/InterruptedException;-><init>()V

    throw v22
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 445
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4;->doInBackground([Ljava/lang/String;)Lcom/vkontakte/android/ui/animation/MovieDrawable;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onPostExecute$197(ZLcom/vkontakte/android/ui/animation/MovieDrawable;)V
    .locals 2
    .param p2, "drawable"    # Lcom/vkontakte/android/ui/animation/MovieDrawable;

    .prologue
    .line 530
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4;->this$0:Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

    iget-object v0, v0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mImageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    invoke-virtual {v0, p2}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 531
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4;->this$0:Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

    iget-object v0, v0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mAttachment:Lcom/vkcoffee/android/attachments/DocumentAttachment;

    iget-boolean v0, v0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->wasPlayed:Z

    if-nez v0, :cond_0

    .line 532
    sget-object v0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->sGifs:Lcom/vkcoffee/android/cache/Gifs;

    iget-object v1, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4;->this$0:Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

    iget-object v1, v1, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mAttachment:Lcom/vkcoffee/android/attachments/DocumentAttachment;

    iget v1, v1, Lcom/vkcoffee/android/attachments/DocumentAttachment;->did:I

    invoke-virtual {v0, v1, p1}, Lcom/vkcoffee/android/cache/Gifs;->trackPlayEvent(IZ)V

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4;->this$0:Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

    iget-object v0, v0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mAttachment:Lcom/vkcoffee/android/attachments/DocumentAttachment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->wasPlayed:Z

    .line 535
    return-void
.end method

.method protected onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4;->this$0:Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->failed:Z

    .line 545
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4;->this$0:Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

    invoke-virtual {v0}, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->showError()V

    .line 546
    return-void
.end method

.method protected onPostExecute(Lcom/vkontakte/android/ui/animation/MovieDrawable;)V
    .locals 2
    .param p1, "movieDrawable"    # Lcom/vkontakte/android/ui/animation/MovieDrawable;

    .prologue
    .line 522
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4;->this$0:Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->failed:Z

    .line 523
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4;->this$0:Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

    invoke-virtual {v0}, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->showDone()V

    .line 524
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4;->this$0:Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

    iget-object v0, v0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mDrawable:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4;->this$0:Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

    iget-object v0, v0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mDrawable:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/animation/MovieDrawable;->recycle()V

    .line 526
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4;->this$0:Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mDrawable:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4;->this$0:Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

    iput-object p1, v0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mDrawable:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    .line 529
    iget-boolean v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4;->val$autoplay:Z

    invoke-static {p0, v0}, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4;Z)Lcom/vkcoffee/android/functions/VoidF1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vkontakte/android/ui/animation/MovieDrawable;->setReadyCallback(Lcom/vkcoffee/android/functions/VoidF1;)V

    .line 536
    invoke-virtual {p1}, Lcom/vkontakte/android/ui/animation/MovieDrawable;->start()V

    .line 537
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 445
    check-cast p1, Lcom/vkontakte/android/ui/animation/MovieDrawable;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4;->onPostExecute(Lcom/vkontakte/android/ui/animation/MovieDrawable;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4;->this$0:Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

    iget-object v0, v0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mAttachment:Lcom/vkcoffee/android/attachments/DocumentAttachment;

    iget-boolean v0, v0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->wasPlayed:Z

    if-nez v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4;->this$0:Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

    invoke-virtual {v0}, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->showProgress()V

    .line 454
    :cond_0
    return-void
.end method

.method protected onProgressUpdate(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "progress"    # Ljava/lang/Integer;

    .prologue
    .line 517
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4;->this$0:Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->setProgress(I)V

    .line 518
    return-void
.end method

.method protected bridge synthetic onProgressUpdate(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 445
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder$4;->onProgressUpdate(Ljava/lang/Integer;)V

    return-void
.end method
