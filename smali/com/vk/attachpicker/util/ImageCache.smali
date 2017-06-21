.class public Lcom/vk/attachpicker/util/ImageCache;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;
    }
.end annotation


# static fields
.field private static final IMAGE_CACHE_HEAP_PERCENTAGE:F = 0.16666667f


# instance fields
.field private filteredImageCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private imageCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const v1, 0x3e2aaaab

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-direct {p0, v1}, Lcom/vk/attachpicker/util/ImageCache;->createImageCache(F)Landroid/util/LruCache;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/util/ImageCache;->filteredImageCache:Landroid/util/LruCache;

    .line 17
    invoke-direct {p0, v1}, Lcom/vk/attachpicker/util/ImageCache;->createImageCache(F)Landroid/util/LruCache;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/util/ImageCache;->imageCache:Landroid/util/LruCache;

    .line 18
    return-void
.end method

.method private createImageCache(F)Landroid/util/LruCache;
    .locals 8
    .param p1, "memoryPart"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Landroid/util/LruCache",
            "<",
            "Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    long-to-int v1, v4

    .line 45
    .local v1, "maxMemory":I
    int-to-float v3, v1

    mul-float/2addr v3, p1

    float-to-int v0, v3

    .line 46
    .local v0, "cacheSize":I
    new-instance v2, Lcom/vk/attachpicker/util/ImageCache$1;

    invoke-direct {v2, p0, v0}, Lcom/vk/attachpicker/util/ImageCache$1;-><init>(Lcom/vk/attachpicker/util/ImageCache;I)V

    .line 52
    .local v2, "newImageCache":Landroid/util/LruCache;, "Landroid/util/LruCache<Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;Landroid/graphics/Bitmap;>;"
    return-object v2
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vk/attachpicker/util/ImageCache;->filteredImageCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 40
    iget-object v0, p0, Lcom/vk/attachpicker/util/ImageCache;->imageCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 41
    return-void
.end method

.method public get(Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "key"    # Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;

    .prologue
    .line 21
    invoke-virtual {p1}, Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;->isStyled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/vk/attachpicker/util/ImageCache;->filteredImageCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 24
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/util/ImageCache;->imageCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public put(Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "key"    # Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/util/ImageCache;->get(Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;->isStyled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    iget-object v0, p0, Lcom/vk/attachpicker/util/ImageCache;->filteredImageCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/vk/attachpicker/util/ImageCache;->imageCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
