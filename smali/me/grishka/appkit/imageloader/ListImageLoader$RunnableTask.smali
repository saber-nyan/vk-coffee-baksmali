.class Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;
.super Ljava/lang/Object;
.source "ListImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/grishka/appkit/imageloader/ListImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunnableTask"
.end annotation


# instance fields
.field public canceled:Z

.field public context:Landroid/content/Context;

.field public image:I

.field public item:I

.field private reqWrapper:Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;

.field public set:Z

.field final synthetic this$0:Lme/grishka/appkit/imageloader/ListImageLoader;

.field public url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lme/grishka/appkit/imageloader/ListImageLoader;)V
    .locals 1

    .prologue
    .line 236
    iput-object p1, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->this$0:Lme/grishka/appkit/imageloader/ListImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->canceled:Z

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->set:Z

    return-void
.end method

.method synthetic constructor <init>(Lme/grishka/appkit/imageloader/ListImageLoader;Lme/grishka/appkit/imageloader/ListImageLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lme/grishka/appkit/imageloader/ListImageLoader;
    .param p2, "x1"    # Lme/grishka/appkit/imageloader/ListImageLoader$1;

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;-><init>(Lme/grishka/appkit/imageloader/ListImageLoader;)V

    return-void
.end method

.method static synthetic access$100(Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;)Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;
    .locals 1
    .param p0, "x0"    # Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;

    .prologue
    .line 236
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->reqWrapper:Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->canceled:Z

    .line 246
    new-instance v0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask$1;

    invoke-direct {v0, p0}, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask$1;-><init>(Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;)V

    invoke-static {v0}, Lme/grishka/appkit/imageloader/ImageLoaderThreadPool;->enqueueCancellation(Ljava/lang/Runnable;)V

    .line 257
    return-void
.end method

.method public run()V
    .locals 12

    .prologue
    .line 260
    iget-boolean v7, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->canceled:Z

    if-eqz v7, :cond_1

    .line 261
    iget-object v7, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->this$0:Lme/grishka/appkit/imageloader/ListImageLoader;

    invoke-static {v7}, Lme/grishka/appkit/imageloader/ListImageLoader;->access$200(Lme/grishka/appkit/imageloader/ListImageLoader;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 262
    iget-object v7, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->this$0:Lme/grishka/appkit/imageloader/ListImageLoader;

    invoke-static {v7}, Lme/grishka/appkit/imageloader/ListImageLoader;->access$200(Lme/grishka/appkit/imageloader/ListImageLoader;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    :try_start_0
    new-instance v7, Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;

    invoke-direct {v7}, Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;-><init>()V

    iput-object v7, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->reqWrapper:Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;

    .line 268
    const/4 v0, 0x0

    .line 280
    .local v0, "_bmp":Landroid/graphics/Bitmap;
    iget-object v7, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->url:Ljava/lang/String;

    const-string/jumbo v8, "A"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 281
    iget-object v7, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->url:Ljava/lang/String;

    const-string/jumbo v8, "\\|"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, "parts":[Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    array-length v7, v3

    if-ge v2, v7, :cond_2

    .line 283
    iget-object v7, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->context:Landroid/content/Context;

    invoke-static {v7}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v7

    aget-object v8, v3, v2

    iget-object v9, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->reqWrapper:Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;

    const/4 v10, 0x0

    iget-boolean v11, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->set:Z

    invoke-virtual {v7, v8, v9, v10, v11}, Lme/grishka/appkit/imageloader/ImageCache;->get(Ljava/lang/String;Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;Lme/grishka/appkit/imageloader/ImageCache$ProgressCallback;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 285
    if-nez v0, :cond_2

    iget-boolean v7, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->set:Z

    if-nez v7, :cond_4

    .line 299
    .end local v2    # "i":I
    .end local v3    # "parts":[Ljava/lang/String;
    :cond_2
    :goto_2
    iget-boolean v7, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->canceled:Z

    if-eqz v7, :cond_7

    .line 301
    iget-object v7, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->this$0:Lme/grishka/appkit/imageloader/ListImageLoader;

    invoke-static {v7}, Lme/grishka/appkit/imageloader/ListImageLoader;->access$200(Lme/grishka/appkit/imageloader/ListImageLoader;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 302
    iget-object v7, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->this$0:Lme/grishka/appkit/imageloader/ListImageLoader;

    invoke-static {v7}, Lme/grishka/appkit/imageloader/ListImageLoader;->access$200(Lme/grishka/appkit/imageloader/ListImageLoader;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 331
    .end local v0    # "_bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v6

    .line 332
    .local v6, "x":Ljava/lang/Exception;
    const-string/jumbo v7, "appkit-img-loader"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 334
    .end local v6    # "x":Ljava/lang/Exception;
    :cond_3
    :goto_3
    iget-object v8, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->this$0:Lme/grishka/appkit/imageloader/ListImageLoader;

    monitor-enter v8

    .line 335
    :try_start_1
    iget-object v7, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->this$0:Lme/grishka/appkit/imageloader/ListImageLoader;

    invoke-static {v7}, Lme/grishka/appkit/imageloader/ListImageLoader;->access$800(Lme/grishka/appkit/imageloader/ListImageLoader;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 336
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 282
    .restart local v0    # "_bmp":Landroid/graphics/Bitmap;
    .restart local v2    # "i":I
    .restart local v3    # "parts":[Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 287
    .end local v2    # "i":I
    .end local v3    # "parts":[Ljava/lang/String;
    :cond_5
    :try_start_2
    iget-object v7, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->url:Ljava/lang/String;

    const-string/jumbo v8, "B"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 288
    iget-object v7, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->url:Ljava/lang/String;

    const-string/jumbo v8, "\\|"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 289
    .restart local v3    # "parts":[Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 290
    .local v4, "radius":I
    iget-object v7, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->context:Landroid/content/Context;

    invoke-static {v7}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v8, v3, v8

    invoke-virtual {v7, v8}, Lme/grishka/appkit/imageloader/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 292
    .local v5, "tmp":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v0, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 293
    move-object v0, v5

    .line 294
    invoke-static {v0, v4}, Lme/grishka/appkit/imageloader/StackBlur;->blurBitmap(Landroid/graphics/Bitmap;I)V

    .line 295
    iget-object v7, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->context:Landroid/content/Context;

    invoke-static {v7}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v7

    iget-object v8, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->url:Ljava/lang/String;

    invoke-virtual {v7, v8, v0}, Lme/grishka/appkit/imageloader/ImageCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 297
    .end local v3    # "parts":[Ljava/lang/String;
    .end local v4    # "radius":I
    .end local v5    # "tmp":Landroid/graphics/Bitmap;
    :cond_6
    iget-object v7, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->context:Landroid/content/Context;

    invoke-static {v7}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v7

    iget-object v8, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->url:Ljava/lang/String;

    iget-object v9, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->reqWrapper:Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;

    const/4 v10, 0x0

    iget-boolean v11, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->set:Z

    invoke-virtual {v7, v8, v9, v10, v11}, Lme/grishka/appkit/imageloader/ImageCache;->get(Ljava/lang/String;Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;Lme/grishka/appkit/imageloader/ImageCache$ProgressCallback;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_2

    .line 306
    :cond_7
    iget-boolean v7, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->set:Z

    if-eqz v7, :cond_8

    if-eqz v0, :cond_8

    iget-boolean v7, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->canceled:Z

    if-nez v7, :cond_8

    .line 307
    move-object v1, v0

    .line 308
    .local v1, "bmp":Landroid/graphics/Bitmap;
    iget-object v7, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->this$0:Lme/grishka/appkit/imageloader/ListImageLoader;

    invoke-static {v7}, Lme/grishka/appkit/imageloader/ListImageLoader;->access$700(Lme/grishka/appkit/imageloader/ListImageLoader;)Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask$2;

    invoke-direct {v8, p0, v1}, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask$2;-><init>(Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 327
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    :cond_8
    iget-object v7, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->this$0:Lme/grishka/appkit/imageloader/ListImageLoader;

    invoke-static {v7}, Lme/grishka/appkit/imageloader/ListImageLoader;->access$200(Lme/grishka/appkit/imageloader/ListImageLoader;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 328
    iget-object v7, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->this$0:Lme/grishka/appkit/imageloader/ListImageLoader;

    invoke-static {v7}, Lme/grishka/appkit/imageloader/ListImageLoader;->access$200(Lme/grishka/appkit/imageloader/ListImageLoader;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3
.end method

.method public setDecode(Z)V
    .locals 1
    .param p1, "decode"    # Z

    .prologue
    .line 340
    iput-boolean p1, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->set:Z

    .line 341
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->reqWrapper:Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->reqWrapper:Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;

    iput-boolean p1, v0, Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;->decode:Z

    .line 343
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->item:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->image:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
