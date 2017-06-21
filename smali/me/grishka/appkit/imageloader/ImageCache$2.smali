.class Lme/grishka/appkit/imageloader/ImageCache$2;
.super Ljava/lang/Object;
.source "ImageCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/grishka/appkit/imageloader/ImageCache;->open()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/grishka/appkit/imageloader/ImageCache;


# direct methods
.method constructor <init>(Lme/grishka/appkit/imageloader/ImageCache;)V
    .locals 0
    .param p1, "this$0"    # Lme/grishka/appkit/imageloader/ImageCache;

    .prologue
    .line 163
    iput-object p1, p0, Lme/grishka/appkit/imageloader/ImageCache$2;->this$0:Lme/grishka/appkit/imageloader/ImageCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 166
    iget-object v2, p0, Lme/grishka/appkit/imageloader/ImageCache$2;->this$0:Lme/grishka/appkit/imageloader/ImageCache;

    invoke-static {v2}, Lme/grishka/appkit/imageloader/ImageCache;->access$200(Lme/grishka/appkit/imageloader/ImageCache;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 168
    :try_start_0
    iget-object v2, p0, Lme/grishka/appkit/imageloader/ImageCache$2;->this$0:Lme/grishka/appkit/imageloader/ImageCache;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lme/grishka/appkit/imageloader/ImageCache$2;->this$0:Lme/grishka/appkit/imageloader/ImageCache;

    invoke-static {v5}, Lme/grishka/appkit/imageloader/ImageCache;->access$400(Lme/grishka/appkit/imageloader/ImageCache;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    const-string/jumbo v6, "images"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {}, Lme/grishka/appkit/imageloader/ImageCache;->access$500()Lme/grishka/appkit/imageloader/ImageCache$Parameters;

    move-result-object v7

    iget v7, v7, Lme/grishka/appkit/imageloader/ImageCache$Parameters;->diskCacheSize:I

    int-to-long v8, v7

    invoke-static {v4, v5, v6, v8, v9}, Lcom/jakewharton/disklrucache/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/jakewharton/disklrucache/DiskLruCache;

    move-result-object v4

    invoke-static {v2, v4}, Lme/grishka/appkit/imageloader/ImageCache;->access$302(Lme/grishka/appkit/imageloader/ImageCache;Lcom/jakewharton/disklrucache/DiskLruCache;)Lcom/jakewharton/disklrucache/DiskLruCache;

    .line 169
    iget-object v2, p0, Lme/grishka/appkit/imageloader/ImageCache$2;->this$0:Lme/grishka/appkit/imageloader/ImageCache;

    invoke-static {v2}, Lme/grishka/appkit/imageloader/ImageCache;->access$100(Lme/grishka/appkit/imageloader/ImageCache;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 170
    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 171
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-virtual {v2}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->updateImages()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 174
    .end local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;>;"
    :catch_0
    move-exception v1

    .line 175
    .local v1, "x":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v2, "AppKit_ImageCache"

    const-string/jumbo v4, "Error opening disk cache"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    .end local v1    # "x":Ljava/lang/Exception;
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    return-void

    .line 173
    :cond_1
    :try_start_2
    iget-object v2, p0, Lme/grishka/appkit/imageloader/ImageCache$2;->this$0:Lme/grishka/appkit/imageloader/ImageCache;

    invoke-static {v2}, Lme/grishka/appkit/imageloader/ImageCache;->access$200(Lme/grishka/appkit/imageloader/ImageCache;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 177
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method
