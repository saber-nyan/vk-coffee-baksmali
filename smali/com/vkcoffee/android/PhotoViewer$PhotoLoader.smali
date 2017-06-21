.class Lcom/vkcoffee/android/PhotoViewer$PhotoLoader;
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
    name = "PhotoLoader"
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

.field private photo:Lcom/vkcoffee/android/Photo;

.field private progr:Lme/grishka/appkit/imageloader/ImageCache$ProgressCallback;

.field final synthetic this$0:Lcom/vkcoffee/android/PhotoViewer;

.field private wrapper:Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/PhotoViewer;Lcom/vkcoffee/android/Photo;)V
    .locals 1
    .param p2, "p"    # Lcom/vkcoffee/android/Photo;

    .prologue
    .line 1282
    iput-object p1, p0, Lcom/vkcoffee/android/PhotoViewer$PhotoLoader;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1278
    new-instance v0, Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;

    invoke-direct {v0}, Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$PhotoLoader;->wrapper:Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;

    .line 1280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/PhotoViewer$PhotoLoader;->canceled:Z

    .line 1283
    iput-object p2, p0, Lcom/vkcoffee/android/PhotoViewer$PhotoLoader;->photo:Lcom/vkcoffee/android/Photo;

    .line 1284
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1295
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$PhotoLoader;->wrapper:Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;

    if-eqz v0, :cond_0

    .line 1296
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$PhotoLoader;->wrapper:Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;

    invoke-virtual {v0}, Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;->cancel()V

    .line 1297
    iput-boolean v1, p0, Lcom/vkcoffee/android/PhotoViewer$PhotoLoader;->canceled:Z

    .line 1299
    :cond_0
    return v1
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
    .line 1304
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$PhotoLoader;->bmp:Landroid/graphics/Bitmap;

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
    .line 1312
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
    .line 1274
    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$PhotoLoader;->get()Landroid/graphics/Bitmap;

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
    .line 1274
    invoke-virtual {p0, p1, p2, p3}, Lcom/vkcoffee/android/PhotoViewer$PhotoLoader;->get(JLjava/util/concurrent/TimeUnit;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 1317
    iget-boolean v0, p0, Lcom/vkcoffee/android/PhotoViewer$PhotoLoader;->canceled:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$PhotoLoader;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    const/16 v3, 0x78

    .line 1288
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vkcoffee/android/PhotoViewer$PhotoLoader;->canceled:Z

    .line 1289
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer$PhotoLoader;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    iget-boolean v1, v1, Lcom/vkcoffee/android/PhotoViewer;->useSmall:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer$PhotoLoader;->photo:Lcom/vkcoffee/android/Photo;

    invoke-virtual {v1, v3}, Lcom/vkcoffee/android/Photo;->getImage(C)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v1

    iget-object v0, v1, Lcom/vkcoffee/android/Photo$Image;->url:Ljava/lang/String;

    .line 1290
    .local v0, "url":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer$PhotoLoader;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v1}, Lcom/vkcoffee/android/PhotoViewer;->access$1500(Lcom/vkcoffee/android/PhotoViewer;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer$PhotoLoader;->wrapper:Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;

    iget-object v3, p0, Lcom/vkcoffee/android/PhotoViewer$PhotoLoader;->progr:Lme/grishka/appkit/imageloader/ImageCache$ProgressCallback;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v3, v4}, Lme/grishka/appkit/imageloader/ImageCache;->get(Ljava/lang/String;Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;Lme/grishka/appkit/imageloader/ImageCache$ProgressCallback;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/PhotoViewer$PhotoLoader;->bmp:Landroid/graphics/Bitmap;

    .line 1291
    return-void

    .line 1289
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer$PhotoLoader;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    iget-boolean v1, v1, Lcom/vkcoffee/android/PhotoViewer;->useBig:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer$PhotoLoader;->photo:Lcom/vkcoffee/android/Photo;

    const/4 v2, 0x3

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/Photo;->getImage([C)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v1

    iget-object v0, v1, Lcom/vkcoffee/android/Photo$Image;->url:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer$PhotoLoader;->photo:Lcom/vkcoffee/android/Photo;

    const/16 v2, 0x79

    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/Photo;->getImage(CC)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v1

    iget-object v0, v1, Lcom/vkcoffee/android/Photo$Image;->url:Ljava/lang/String;

    goto :goto_0

    nop

    :array_0
    .array-data 2
        0x7as
        0x79s
        0x78s
    .end array-data
.end method

.method public setProgressCallback(Lme/grishka/appkit/imageloader/ImageCache$ProgressCallback;)V
    .locals 0
    .param p1, "c"    # Lme/grishka/appkit/imageloader/ImageCache$ProgressCallback;

    .prologue
    .line 1327
    iput-object p1, p0, Lcom/vkcoffee/android/PhotoViewer$PhotoLoader;->progr:Lme/grishka/appkit/imageloader/ImageCache$ProgressCallback;

    .line 1328
    return-void
.end method
