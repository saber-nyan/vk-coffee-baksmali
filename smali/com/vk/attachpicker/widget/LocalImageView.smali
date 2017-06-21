.class public Lcom/vk/attachpicker/widget/LocalImageView;
.super Landroid/widget/ImageView;
.source "LocalImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/widget/LocalImageView$ImageDisplayListener;,
        Lcom/vk/attachpicker/widget/LocalImageView$PhotoLoadRunnable;
    }
.end annotation


# static fields
.field private static final defaultPlaceholder:Landroid/graphics/drawable/ColorDrawable;

.field private static final handler:Landroid/os/Handler;


# instance fields
.field private currentMediaStoreEntry:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

.field private currentRunnable:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private final imageCorruptedStub:Lcom/vk/attachpicker/widget/CorruptedFileDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/vk/attachpicker/widget/LocalImageView;->handler:Landroid/os/Handler;

    .line 24
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0xf0e0e

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/vk/attachpicker/widget/LocalImageView;->defaultPlaceholder:Landroid/graphics/drawable/ColorDrawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vk/attachpicker/widget/LocalImageView;->currentMediaStoreEntry:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    .line 27
    new-instance v0, Lcom/vk/attachpicker/widget/CorruptedFileDrawable;

    invoke-direct {v0}, Lcom/vk/attachpicker/widget/CorruptedFileDrawable;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/LocalImageView;->imageCorruptedStub:Lcom/vk/attachpicker/widget/CorruptedFileDrawable;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vk/attachpicker/widget/LocalImageView;->currentMediaStoreEntry:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    .line 27
    new-instance v0, Lcom/vk/attachpicker/widget/CorruptedFileDrawable;

    invoke-direct {v0}, Lcom/vk/attachpicker/widget/CorruptedFileDrawable;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/LocalImageView;->imageCorruptedStub:Lcom/vk/attachpicker/widget/CorruptedFileDrawable;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vk/attachpicker/widget/LocalImageView;->currentMediaStoreEntry:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    .line 27
    new-instance v0, Lcom/vk/attachpicker/widget/CorruptedFileDrawable;

    invoke-direct {v0}, Lcom/vk/attachpicker/widget/CorruptedFileDrawable;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/LocalImageView;->imageCorruptedStub:Lcom/vk/attachpicker/widget/CorruptedFileDrawable;

    .line 39
    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/vk/attachpicker/widget/LocalImageView;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vk/attachpicker/widget/LocalImageView;)Lcom/vk/attachpicker/widget/CorruptedFileDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/LocalImageView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/vk/attachpicker/widget/LocalImageView;->imageCorruptedStub:Lcom/vk/attachpicker/widget/CorruptedFileDrawable;

    return-object v0
.end method

.method private cancelRequest()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vk/attachpicker/widget/LocalImageView;->currentRunnable:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/vk/attachpicker/widget/LocalImageView;->currentRunnable:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vk/attachpicker/widget/LocalImageView;->currentRunnable:Ljava/util/concurrent/Future;

    .line 56
    :cond_0
    return-void
.end method

.method public static computeBounds(IIIIZ)Landroid/graphics/RectF;
    .locals 10
    .param p0, "viewWidth"    # I
    .param p1, "viewHeight"    # I
    .param p2, "bitmapWidth"    # I
    .param p3, "bitmapHeight"    # I
    .param p4, "isAspectFit"    # Z

    .prologue
    const/4 v9, 0x0

    .line 167
    move v1, p2

    .line 168
    .local v1, "bitmapW":I
    move v0, p3

    .line 170
    .local v0, "bitmapH":I
    int-to-float v6, v1

    int-to-float v7, p0

    div-float v5, v6, v7

    .line 171
    .local v5, "scaleW":F
    int-to-float v6, v0

    int-to-float v7, p1

    div-float v4, v6, v7

    .line 173
    .local v4, "scaleH":F
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 175
    .local v2, "drawRegion":Landroid/graphics/RectF;
    if-eqz p4, :cond_0

    .line 176
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 177
    .local v3, "scale":F
    int-to-float v6, v1

    div-float/2addr v6, v3

    float-to-int v1, v6

    .line 178
    int-to-float v6, v0

    div-float/2addr v6, v3

    float-to-int v0, v6

    .line 179
    sub-int v6, p0, v1

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-int v7, p1, v0

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-int v8, p0, v1

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-int v9, p1, v0

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 194
    .end local v3    # "scale":F
    :goto_0
    return-object v2

    .line 181
    :cond_0
    sub-float v6, v5, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3727c5ac    # 1.0E-5f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 182
    int-to-float v6, v1

    div-float/2addr v6, v4

    int-to-float v7, p0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 183
    int-to-float v6, v1

    div-float/2addr v6, v4

    float-to-int v1, v6

    .line 184
    sub-int v6, v1, p0

    neg-int v6, v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-int v7, v1, p0

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    int-to-float v8, p1

    invoke-virtual {v2, v6, v9, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 186
    :cond_1
    int-to-float v6, v0

    div-float/2addr v6, v5

    float-to-int v0, v6

    .line 187
    sub-int v6, v0, p1

    neg-int v6, v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    int-to-float v7, p0

    add-int v8, v0, p1

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {v2, v9, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 190
    :cond_2
    int-to-float v6, p0

    int-to-float v7, p1

    invoke-virtual {v2, v9, v9, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/LocalImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 157
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 158
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 160
    :goto_0
    return-object v1

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentMediaStoreEntry()Lcom/vk/attachpicker/mediastore/MediaStoreEntry;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/vk/attachpicker/widget/LocalImageView;->currentMediaStoreEntry:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    return-object v0
.end method

.method public setImage(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;Z)V
    .locals 2
    .param p1, "image"    # Lcom/vk/attachpicker/mediastore/MediaStoreEntry;
    .param p2, "fullSize"    # Z

    .prologue
    .line 59
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/vk/attachpicker/widget/LocalImageView;->setImage(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;ZLcom/vk/attachpicker/widget/LocalImageView$ImageDisplayListener;Z)V

    .line 60
    return-void
.end method

.method public setImage(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;ZLcom/vk/attachpicker/widget/LocalImageView$ImageDisplayListener;Z)V
    .locals 5
    .param p1, "image"    # Lcom/vk/attachpicker/mediastore/MediaStoreEntry;
    .param p2, "fullSize"    # Z
    .param p3, "listener"    # Lcom/vk/attachpicker/widget/LocalImageView$ImageDisplayListener;
    .param p4, "usePlaceholder"    # Z

    .prologue
    const/4 v4, 0x0

    .line 63
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/LocalImageView;->cancelRequest()V

    .line 64
    if-eqz p4, :cond_0

    .line 65
    sget-object v2, Lcom/vk/attachpicker/widget/LocalImageView;->defaultPlaceholder:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, v2}, Lcom/vk/attachpicker/widget/LocalImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    :cond_0
    iput-object p1, p0, Lcom/vk/attachpicker/widget/LocalImageView;->currentMediaStoreEntry:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    .line 69
    iget-object v2, p0, Lcom/vk/attachpicker/widget/LocalImageView;->currentMediaStoreEntry:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    if-nez v2, :cond_2

    .line 102
    :cond_1
    :goto_0
    return-void

    .line 73
    :cond_2
    iget-object v2, p0, Lcom/vk/attachpicker/widget/LocalImageView;->currentMediaStoreEntry:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    invoke-virtual {v2}, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->isCorrupted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 74
    iget-object v2, p0, Lcom/vk/attachpicker/widget/LocalImageView;->imageCorruptedStub:Lcom/vk/attachpicker/widget/CorruptedFileDrawable;

    invoke-virtual {p0, v2}, Lcom/vk/attachpicker/widget/LocalImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 78
    :cond_3
    const/4 v0, 0x0

    .line 79
    .local v0, "img":Landroid/graphics/Bitmap;
    sget-object v1, Lcom/vk/attachpicker/Picker;->imageCache:Lcom/vk/attachpicker/util/ImageCache;

    .line 80
    .local v1, "lruCache":Lcom/vk/attachpicker/util/ImageCache;
    if-nez p2, :cond_5

    .line 81
    invoke-virtual {p1}, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->getThumbnailImageKey()Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/util/ImageCache;->get(Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 82
    if-nez v0, :cond_4

    .line 83
    iget-boolean v2, p1, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->isVideo:Z

    invoke-static {v2}, Lcom/vk/attachpicker/Picker;->executor(Z)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/vk/attachpicker/widget/LocalImageView$PhotoLoadRunnable;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/vk/attachpicker/widget/LocalImageView$PhotoLoadRunnable;-><init>(Lcom/vk/attachpicker/widget/LocalImageView;Lcom/vk/attachpicker/mediastore/MediaStoreEntry;ZLcom/vk/attachpicker/widget/LocalImageView$ImageDisplayListener;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/vk/attachpicker/widget/LocalImageView;->currentRunnable:Ljava/util/concurrent/Future;

    .line 95
    :cond_4
    :goto_1
    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/vk/attachpicker/widget/LocalImageView;->setPadding(IIII)V

    .line 97
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, p2}, Lcom/vk/attachpicker/widget/LocalImageView;->setImageBitmap(Landroid/graphics/Bitmap;ZZ)V

    .line 98
    if-eqz p3, :cond_1

    .line 99
    invoke-interface {p3, v0}, Lcom/vk/attachpicker/widget/LocalImageView$ImageDisplayListener;->onImageDisplayed(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 86
    :cond_5
    if-eqz p1, :cond_4

    .line 87
    invoke-virtual {p1}, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->getDisplayImageKey()Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/util/ImageCache;->get(Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 88
    if-nez v0, :cond_4

    .line 89
    invoke-virtual {p1}, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->getThumbnailImageKey()Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/util/ImageCache;->get(Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 90
    iget-boolean v2, p1, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->isVideo:Z

    invoke-static {v2}, Lcom/vk/attachpicker/Picker;->executor(Z)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/vk/attachpicker/widget/LocalImageView$PhotoLoadRunnable;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/vk/attachpicker/widget/LocalImageView$PhotoLoadRunnable;-><init>(Lcom/vk/attachpicker/widget/LocalImageView;Lcom/vk/attachpicker/mediastore/MediaStoreEntry;ZLcom/vk/attachpicker/widget/LocalImageView$ImageDisplayListener;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/vk/attachpicker/widget/LocalImageView;->currentRunnable:Ljava/util/concurrent/Future;

    goto :goto_1
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;ZZ)V
    .locals 4
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "fromMemory"    # Z
    .param p3, "fullSize"    # Z

    .prologue
    .line 42
    if-eqz p3, :cond_0

    .line 43
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    new-instance v1, Lcom/vk/attachpicker/widget/FastTransitionDrawable;

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/LocalImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/vk/attachpicker/widget/LocalImageView;->defaultPlaceholder:Landroid/graphics/drawable/ColorDrawable;

    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-direct {v1, v2, p1, v3, v0}, Lcom/vk/attachpicker/widget/FastTransitionDrawable;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V

    invoke-super {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
