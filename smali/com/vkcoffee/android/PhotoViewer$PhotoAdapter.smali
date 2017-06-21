.class Lcom/vkcoffee/android/PhotoViewer$PhotoAdapter;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/PhotoView$PhotoViewerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/PhotoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/PhotoViewer;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/PhotoViewer;)V
    .locals 0

    .prologue
    .line 1201
    iput-object p1, p0, Lcom/vkcoffee/android/PhotoViewer$PhotoAdapter;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/PhotoViewer;Lcom/vkcoffee/android/PhotoViewer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/PhotoViewer;
    .param p2, "x1"    # Lcom/vkcoffee/android/PhotoViewer$1;

    .prologue
    .line 1201
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/PhotoViewer$PhotoAdapter;-><init>(Lcom/vkcoffee/android/PhotoViewer;)V

    return-void
.end method


# virtual methods
.method public allowZoom(I)Z
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 1241
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$PhotoAdapter;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v0}, Lcom/vkcoffee/android/PhotoViewer;->access$2700(Lcom/vkcoffee/android/PhotoViewer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1205
    const/4 v0, 0x1

    .line 1207
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$PhotoAdapter;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v0}, Lcom/vkcoffee/android/PhotoViewer;->access$1700(Lcom/vkcoffee/android/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getPhoto(I)Lcom/vkcoffee/android/ui/PhotoView$RunnableFuture;
    .locals 3
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/vkcoffee/android/ui/PhotoView$RunnableFuture",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$PhotoAdapter;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v0}, Lcom/vkcoffee/android/PhotoViewer;->access$2700(Lcom/vkcoffee/android/PhotoViewer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1218
    new-instance v0, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;

    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer$PhotoAdapter;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;-><init>(Lcom/vkcoffee/android/PhotoViewer;)V

    .line 1220
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/vkcoffee/android/PhotoViewer$PhotoLoader;

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer$PhotoAdapter;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$PhotoAdapter;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v0}, Lcom/vkcoffee/android/PhotoViewer;->access$1700(Lcom/vkcoffee/android/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/Photo;

    invoke-direct {v1, v2, v0}, Lcom/vkcoffee/android/PhotoViewer$PhotoLoader;-><init>(Lcom/vkcoffee/android/PhotoViewer;Lcom/vkcoffee/android/Photo;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getPhotoLoadProgress(I)F
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 1230
    const/4 v0, 0x0

    return v0
.end method

.method public getThumb(I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "num"    # I

    .prologue
    const/4 v2, 0x0

    .line 1247
    iget-object v3, p0, Lcom/vkcoffee/android/PhotoViewer$PhotoAdapter;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v3}, Lcom/vkcoffee/android/PhotoViewer;->access$2700(Lcom/vkcoffee/android/PhotoViewer;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1259
    :cond_0
    :goto_0
    return-object v2

    .line 1250
    :cond_1
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$PhotoAdapter;->getCount()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 1253
    iget-object v3, p0, Lcom/vkcoffee/android/PhotoViewer$PhotoAdapter;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v3}, Lcom/vkcoffee/android/PhotoViewer;->access$1700(Lcom/vkcoffee/android/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/Photo;

    .line 1254
    .local v1, "ph":Lcom/vkcoffee/android/Photo;
    iget-object v3, v1, Lcom/vkcoffee/android/Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/Photo$Image;

    .line 1255
    .local v0, "im":Lcom/vkcoffee/android/Photo$Image;
    iget-object v4, p0, Lcom/vkcoffee/android/PhotoViewer$PhotoAdapter;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v4}, Lcom/vkcoffee/android/PhotoViewer;->access$1500(Lcom/vkcoffee/android/PhotoViewer;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v4

    iget-object v5, v0, Lcom/vkcoffee/android/Photo$Image;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lme/grishka/appkit/imageloader/ImageCache;->isInCache(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1256
    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer$PhotoAdapter;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v2}, Lcom/vkcoffee/android/PhotoViewer;->access$1500(Lcom/vkcoffee/android/PhotoViewer;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v2

    iget-object v3, v0, Lcom/vkcoffee/android/Photo$Image;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lme/grishka/appkit/imageloader/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method public isCached(I)Z
    .locals 4
    .param p1, "num"    # I

    .prologue
    const/16 v3, 0x78

    .line 1265
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer$PhotoAdapter;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v2}, Lcom/vkcoffee/android/PhotoViewer;->access$1700(Lcom/vkcoffee/android/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 1266
    :cond_0
    const/4 v2, 0x0

    .line 1270
    :goto_0
    return v2

    .line 1268
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer$PhotoAdapter;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v2}, Lcom/vkcoffee/android/PhotoViewer;->access$1700(Lcom/vkcoffee/android/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/Photo;

    .line 1269
    .local v0, "photo":Lcom/vkcoffee/android/Photo;
    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer$PhotoAdapter;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    iget-boolean v2, v2, Lcom/vkcoffee/android/PhotoViewer;->useSmall:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0, v3}, Lcom/vkcoffee/android/Photo;->getImage(C)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v2

    iget-object v1, v2, Lcom/vkcoffee/android/Photo$Image;->url:Ljava/lang/String;

    .line 1270
    .local v1, "url":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer$PhotoAdapter;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v2}, Lcom/vkcoffee/android/PhotoViewer;->access$1500(Lcom/vkcoffee/android/PhotoViewer;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v2

    invoke-virtual {v2, v1}, Lme/grishka/appkit/imageloader/ImageCache;->isInCache(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 1269
    .end local v1    # "url":Ljava/lang/String;
    :cond_2
    const/16 v2, 0x79

    invoke-virtual {v0, v2, v3}, Lcom/vkcoffee/android/Photo;->getImage(CC)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v2

    iget-object v1, v2, Lcom/vkcoffee/android/Photo$Image;->url:Ljava/lang/String;

    goto :goto_1
.end method

.method public isPhotoLoaded(I)Z
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 1212
    const/4 v0, 0x0

    return v0
.end method

.method public requestPhotoDownload(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 1226
    return-void
.end method

.method public shouldPreload()Z
    .locals 1

    .prologue
    .line 1235
    invoke-static {}, Lcom/vkcoffee/android/NetworkStateReceiver;->isMobile()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
