.class Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageLoadTask"
.end annotation


# instance fields
.field canceled:Z

.field index:I

.field loader:Lcom/vkcoffee/android/ui/PhotoView$RunnableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/ui/PhotoView$RunnableFuture",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field onlyIfCached:Z

.field tex:Lcom/vkcoffee/android/ui/PhotoView$Texture;

.field final synthetic this$0:Lcom/vkcoffee/android/ui/PhotoView;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/ui/PhotoView;IZLcom/vkcoffee/android/ui/PhotoView$Texture;)V
    .locals 0
    .param p2, "_index"    # I
    .param p3, "_onlyIfCached"    # Z
    .param p4, "_texture"    # Lcom/vkcoffee/android/ui/PhotoView$Texture;

    .prologue
    .line 1513
    iput-object p1, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1514
    iput p2, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->index:I

    .line 1515
    iput-boolean p3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->onlyIfCached:Z

    .line 1516
    iput-object p4, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->tex:Lcom/vkcoffee/android/ui/PhotoView$Texture;

    .line 1517
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 1520
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->canceled:Z

    .line 1521
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/PhotoView;->access$3700(Lcom/vkcoffee/android/ui/PhotoView;)Lme/grishka/appkit/utils/WorkerThread;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$1;-><init>(Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lme/grishka/appkit/utils/WorkerThread;->postRunnable(Ljava/lang/Runnable;I)V

    .line 1529
    return-void
.end method

.method public preRun()V
    .locals 4

    .prologue
    .line 1532
    iget-object v1, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/PhotoView;->access$3800(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/PhotoView$PhotoViewerAdapter;

    move-result-object v1

    iget v2, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->index:I

    invoke-interface {v1, v2}, Lcom/vkcoffee/android/ui/PhotoView$PhotoViewerAdapter;->getThumb(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1533
    .local v0, "thumb":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 1534
    const-string/jumbo v1, "vk_photoview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Set thumb "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    iget-object v1, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->tex:Lcom/vkcoffee/android/ui/PhotoView$Texture;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/vkcoffee/android/ui/PhotoView$Texture;->thumb:Z

    .line 1536
    iget-object v1, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->tex:Lcom/vkcoffee/android/ui/PhotoView$Texture;

    iput-object v0, v1, Lcom/vkcoffee/android/ui/PhotoView$Texture;->data:Landroid/graphics/Bitmap;

    .line 1537
    iget-object v1, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->tex:Lcom/vkcoffee/android/ui/PhotoView$Texture;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v1, Lcom/vkcoffee/android/ui/PhotoView$Texture;->cropWidth:I

    .line 1538
    iget-object v1, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->tex:Lcom/vkcoffee/android/ui/PhotoView$Texture;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v1, Lcom/vkcoffee/android/ui/PhotoView$Texture;->cropHeight:I

    .line 1539
    iget-object v1, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkcoffee/android/ui/PhotoView;->access$400(Lcom/vkcoffee/android/ui/PhotoView;Z)V

    .line 1540
    iget-object v1, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/PhotoView;->postInvalidate()V

    .line 1542
    :cond_0
    return-void
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1551
    :try_start_0
    iget-boolean v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->canceled:Z

    if-eqz v3, :cond_0

    .line 1552
    const-string/jumbo v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Load task for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->index:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " canceled before load"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1682
    :try_start_1
    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/PhotoView;->access$4300(Lcom/vkcoffee/android/ui/PhotoView;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 1685
    :goto_0
    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/PhotoView;->access$3500(Lcom/vkcoffee/android/ui/PhotoView;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1686
    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/PhotoView;->access$4300(Lcom/vkcoffee/android/ui/PhotoView;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1688
    :goto_1
    return-void

    .line 1555
    :cond_0
    :try_start_2
    iget v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->index:I

    if-ltz v3, :cond_1

    iget v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->index:I

    iget-object v6, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v6}, Lcom/vkcoffee/android/ui/PhotoView;->access$3800(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/PhotoView$PhotoViewerAdapter;

    move-result-object v6

    invoke-interface {v6}, Lcom/vkcoffee/android/ui/PhotoView$PhotoViewerAdapter;->getCount()I

    move-result v6

    if-lt v3, v6, :cond_2

    .line 1556
    :cond_1
    const-string/jumbo v3, "vk_photoview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->index:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " out of adapter bounds, canceled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1682
    :try_start_3
    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/PhotoView;->access$4300(Lcom/vkcoffee/android/ui/PhotoView;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 1685
    :goto_2
    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/PhotoView;->access$3500(Lcom/vkcoffee/android/ui/PhotoView;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1686
    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/PhotoView;->access$4300(Lcom/vkcoffee/android/ui/PhotoView;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_1

    .line 1559
    :cond_2
    :try_start_4
    iget-boolean v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->onlyIfCached:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/PhotoView;->access$3800(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/PhotoView$PhotoViewerAdapter;

    move-result-object v3

    iget v6, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->index:I

    invoke-interface {v3, v6}, Lcom/vkcoffee/android/ui/PhotoView$PhotoViewerAdapter;->isCached(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1560
    const-string/jumbo v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Image "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->index:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is not cached"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1682
    :try_start_5
    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/PhotoView;->access$4300(Lcom/vkcoffee/android/ui/PhotoView;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 1685
    :goto_3
    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/PhotoView;->access$3500(Lcom/vkcoffee/android/ui/PhotoView;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1686
    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/PhotoView;->access$4300(Lcom/vkcoffee/android/ui/PhotoView;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_1

    .line 1564
    :cond_3
    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/PhotoView;->access$1900(Lcom/vkcoffee/android/ui/PhotoView;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/PhotoView;->access$2000(Lcom/vkcoffee/android/ui/PhotoView;)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-gez v3, :cond_4

    .line 1565
    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/PhotoView;->access$2000(Lcom/vkcoffee/android/ui/PhotoView;)J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/PhotoView;->access$1900(Lcom/vkcoffee/android/ui/PhotoView;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x64

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 1567
    :cond_4
    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/PhotoView;->access$3800(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/PhotoView$PhotoViewerAdapter;

    move-result-object v3

    iget v6, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->index:I

    invoke-interface {v3, v6}, Lcom/vkcoffee/android/ui/PhotoView$PhotoViewerAdapter;->getThumb(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1568
    .local v1, "thumb":Landroid/graphics/Bitmap;
    iget v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->index:I

    iget-object v6, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v6}, Lcom/vkcoffee/android/ui/PhotoView;->access$3900(Lcom/vkcoffee/android/ui/PhotoView;)I

    move-result v6

    if-ne v3, v6, :cond_5

    .line 1569
    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    new-instance v6, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$2;

    invoke-direct {v6, p0, v1}, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$2;-><init>(Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1600
    :cond_5
    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->tex:Lcom/vkcoffee/android/ui/PhotoView$Texture;

    iput-object v1, v3, Lcom/vkcoffee/android/ui/PhotoView$Texture;->data:Landroid/graphics/Bitmap;

    .line 1601
    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->tex:Lcom/vkcoffee/android/ui/PhotoView$Texture;

    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/vkcoffee/android/ui/PhotoView$Texture;->thumb:Z

    .line 1602
    if-eqz v1, :cond_6

    .line 1603
    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->tex:Lcom/vkcoffee/android/ui/PhotoView$Texture;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iput v6, v3, Lcom/vkcoffee/android/ui/PhotoView$Texture;->cropWidth:I

    .line 1604
    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->tex:Lcom/vkcoffee/android/ui/PhotoView$Texture;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iput v6, v3, Lcom/vkcoffee/android/ui/PhotoView$Texture;->cropHeight:I

    .line 1606
    :cond_6
    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/PhotoView;->access$3800(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/PhotoView$PhotoViewerAdapter;

    move-result-object v3

    iget v6, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->index:I

    invoke-interface {v3, v6}, Lcom/vkcoffee/android/ui/PhotoView$PhotoViewerAdapter;->getPhoto(I)Lcom/vkcoffee/android/ui/PhotoView$RunnableFuture;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->loader:Lcom/vkcoffee/android/ui/PhotoView$RunnableFuture;

    .line 1607
    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->loader:Lcom/vkcoffee/android/ui/PhotoView$RunnableFuture;

    new-instance v6, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$3;

    invoke-direct {v6, p0}, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$3;-><init>(Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;)V

    invoke-interface {v3, v6}, Lcom/vkcoffee/android/ui/PhotoView$RunnableFuture;->setProgressCallback(Lme/grishka/appkit/imageloader/ImageCache$ProgressCallback;)V

    .line 1620
    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->loader:Lcom/vkcoffee/android/ui/PhotoView$RunnableFuture;

    invoke-interface {v3}, Lcom/vkcoffee/android/ui/PhotoView$RunnableFuture;->run()V

    .line 1621
    iget-boolean v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->canceled:Z

    if-eqz v3, :cond_7

    .line 1622
    const-string/jumbo v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Load task for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->index:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " canceled after load"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1682
    :try_start_7
    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/PhotoView;->access$4300(Lcom/vkcoffee/android/ui/PhotoView;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 1685
    :goto_4
    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/PhotoView;->access$3500(Lcom/vkcoffee/android/ui/PhotoView;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1686
    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/PhotoView;->access$4300(Lcom/vkcoffee/android/ui/PhotoView;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_1

    .line 1625
    :cond_7
    :try_start_8
    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->loader:Lcom/vkcoffee/android/ui/PhotoView$RunnableFuture;

    invoke-interface {v3}, Lcom/vkcoffee/android/ui/PhotoView$RunnableFuture;->isDone()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->loader:Lcom/vkcoffee/android/ui/PhotoView$RunnableFuture;

    invoke-interface {v3}, Lcom/vkcoffee/android/ui/PhotoView$RunnableFuture;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_8

    .line 1626
    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->loader:Lcom/vkcoffee/android/ui/PhotoView$RunnableFuture;

    invoke-interface {v3}, Lcom/vkcoffee/android/ui/PhotoView$RunnableFuture;->run()V

    .line 1628
    :cond_8
    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->loader:Lcom/vkcoffee/android/ui/PhotoView$RunnableFuture;

    invoke-interface {v3}, Lcom/vkcoffee/android/ui/PhotoView$RunnableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1629
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_10

    .line 1630
    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->tex:Lcom/vkcoffee/android/ui/PhotoView$Texture;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iput v6, v3, Lcom/vkcoffee/android/ui/PhotoView$Texture;->cropWidth:I

    .line 1631
    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->tex:Lcom/vkcoffee/android/ui/PhotoView$Texture;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iput v6, v3, Lcom/vkcoffee/android/ui/PhotoView$Texture;->cropHeight:I

    .line 1632
    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->tex:Lcom/vkcoffee/android/ui/PhotoView$Texture;

    iput-object v0, v3, Lcom/vkcoffee/android/ui/PhotoView$Texture;->data:Landroid/graphics/Bitmap;

    .line 1633
    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->tex:Lcom/vkcoffee/android/ui/PhotoView$Texture;

    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/vkcoffee/android/ui/PhotoView$Texture;->loaded:Z

    .line 1634
    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->tex:Lcom/vkcoffee/android/ui/PhotoView$Texture;

    const/4 v6, 0x0

    iput-boolean v6, v3, Lcom/vkcoffee/android/ui/PhotoView$Texture;->thumb:Z

    .line 1635
    const-string/jumbo v6, "vk_photoview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Loaded bitmap "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->index:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, " into texture "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->tex:Lcom/vkcoffee/android/ui/PhotoView$Texture;

    iget-object v8, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v8}, Lcom/vkcoffee/android/ui/PhotoView;->access$4100(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/PhotoView$Texture;

    move-result-object v8

    if-ne v3, v8, :cond_b

    const-string/jumbo v3, "NEXT"

    :goto_5
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, " (cur "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v7}, Lcom/vkcoffee/android/ui/PhotoView;->access$3900(Lcom/vkcoffee/android/ui/PhotoView;)I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, ")"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    iget-object v6, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    iget v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->index:I

    iget-object v7, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v7}, Lcom/vkcoffee/android/ui/PhotoView;->access$3900(Lcom/vkcoffee/android/ui/PhotoView;)I

    move-result v7

    if-ne v3, v7, :cond_d

    move v3, v4

    :goto_6
    invoke-static {v6, v3}, Lcom/vkcoffee/android/ui/PhotoView;->access$400(Lcom/vkcoffee/android/ui/PhotoView;Z)V

    .line 1637
    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    iget-object v4, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/PhotoView;->access$500(Lcom/vkcoffee/android/ui/PhotoView;)F

    move-result v4

    invoke-static {v3, v4}, Lcom/vkcoffee/android/ui/PhotoView;->access$600(Lcom/vkcoffee/android/ui/PhotoView;F)V

    .line 1638
    iget v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->index:I

    iget-object v4, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/PhotoView;->access$3900(Lcom/vkcoffee/android/ui/PhotoView;)I

    move-result v4

    if-ne v3, v4, :cond_f

    .line 1639
    :goto_7
    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/PhotoView;->getWidth()I

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/PhotoView;->access$1700(Lcom/vkcoffee/android/ui/PhotoView;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 1640
    :cond_9
    const-wide/16 v4, 0xa

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_7

    .line 1677
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "thumb":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 1678
    .local v2, "x":Ljava/lang/Exception;
    :try_start_9
    const-string/jumbo v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error loading photo at position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->index:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1682
    .end local v2    # "x":Ljava/lang/Exception;
    :cond_a
    :goto_8
    :try_start_a
    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/PhotoView;->access$4300(Lcom/vkcoffee/android/ui/PhotoView;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 1685
    :goto_9
    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/PhotoView;->access$3500(Lcom/vkcoffee/android/ui/PhotoView;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1686
    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/PhotoView;->access$4300(Lcom/vkcoffee/android/ui/PhotoView;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_1

    .line 1635
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    .restart local v1    # "thumb":Landroid/graphics/Bitmap;
    :cond_b
    :try_start_b
    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->tex:Lcom/vkcoffee/android/ui/PhotoView$Texture;

    iget-object v8, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v8}, Lcom/vkcoffee/android/ui/PhotoView;->access$4200(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/PhotoView$Texture;

    move-result-object v8

    if-ne v3, v8, :cond_c

    const-string/jumbo v3, "PREV"

    goto/16 :goto_5

    :cond_c
    const-string/jumbo v3, "CURRENT"

    goto/16 :goto_5

    :cond_d
    move v3, v5

    .line 1636
    goto :goto_6

    .line 1642
    :cond_e
    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    new-instance v4, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$4;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$4;-><init>(Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1655
    :cond_f
    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/PhotoView;->postInvalidate()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_8

    .line 1681
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "thumb":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    .line 1682
    :try_start_c
    iget-object v4, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/PhotoView;->access$4300(Lcom/vkcoffee/android/ui/PhotoView;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 1685
    :goto_a
    iget-object v4, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/PhotoView;->access$3500(Lcom/vkcoffee/android/ui/PhotoView;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1686
    iget-object v4, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/PhotoView;->access$4300(Lcom/vkcoffee/android/ui/PhotoView;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    throw v3

    .line 1657
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    .restart local v1    # "thumb":Landroid/graphics/Bitmap;
    :cond_10
    :try_start_d
    iget v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->index:I

    iget-object v4, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/PhotoView;->access$3900(Lcom/vkcoffee/android/ui/PhotoView;)I

    move-result v4

    if-ne v3, v4, :cond_a

    iget-boolean v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->canceled:Z

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->loader:Lcom/vkcoffee/android/ui/PhotoView$RunnableFuture;

    invoke-interface {v3}, Lcom/vkcoffee/android/ui/PhotoView$RunnableFuture;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_a

    .line 1658
    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    new-instance v4, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$5;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$5;-><init>(Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_8

    .line 1683
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "thumb":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v4

    goto :goto_a

    :catch_2
    move-exception v3

    goto/16 :goto_9

    .restart local v1    # "thumb":Landroid/graphics/Bitmap;
    :catch_3
    move-exception v3

    goto/16 :goto_4

    .end local v1    # "thumb":Landroid/graphics/Bitmap;
    :catch_4
    move-exception v3

    goto/16 :goto_3

    :catch_5
    move-exception v3

    goto/16 :goto_2

    :catch_6
    move-exception v3

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ImageLoadTask{index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", canceled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->canceled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ifCached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->onlyIfCached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
