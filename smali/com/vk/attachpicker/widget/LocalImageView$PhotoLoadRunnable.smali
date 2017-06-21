.class final Lcom/vk/attachpicker/widget/LocalImageView$PhotoLoadRunnable;
.super Ljava/lang/Object;
.source "LocalImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/widget/LocalImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhotoLoadRunnable"
.end annotation


# instance fields
.field private final fullSize:Z

.field private final listener:Lcom/vk/attachpicker/widget/LocalImageView$ImageDisplayListener;

.field private final mediaStoreEntry:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

.field final synthetic this$0:Lcom/vk/attachpicker/widget/LocalImageView;


# direct methods
.method public constructor <init>(Lcom/vk/attachpicker/widget/LocalImageView;Lcom/vk/attachpicker/mediastore/MediaStoreEntry;ZLcom/vk/attachpicker/widget/LocalImageView$ImageDisplayListener;)V
    .locals 0
    .param p2, "image"    # Lcom/vk/attachpicker/mediastore/MediaStoreEntry;
    .param p3, "fullSize"    # Z
    .param p4, "listener"    # Lcom/vk/attachpicker/widget/LocalImageView$ImageDisplayListener;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/vk/attachpicker/widget/LocalImageView$PhotoLoadRunnable;->this$0:Lcom/vk/attachpicker/widget/LocalImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p2, p0, Lcom/vk/attachpicker/widget/LocalImageView$PhotoLoadRunnable;->mediaStoreEntry:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    .line 117
    iput-boolean p3, p0, Lcom/vk/attachpicker/widget/LocalImageView$PhotoLoadRunnable;->fullSize:Z

    .line 118
    iput-object p4, p0, Lcom/vk/attachpicker/widget/LocalImageView$PhotoLoadRunnable;->listener:Lcom/vk/attachpicker/widget/LocalImageView$ImageDisplayListener;

    .line 119
    return-void
.end method

.method private isInterrupted()Z
    .locals 1

    .prologue
    .line 151
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    return v0
.end method


# virtual methods
.method synthetic lambda$run$0(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, Lcom/vk/attachpicker/widget/LocalImageView$PhotoLoadRunnable;->this$0:Lcom/vk/attachpicker/widget/LocalImageView;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/vk/attachpicker/widget/LocalImageView;->setPadding(IIII)V

    .line 139
    iget-object v0, p0, Lcom/vk/attachpicker/widget/LocalImageView$PhotoLoadRunnable;->this$0:Lcom/vk/attachpicker/widget/LocalImageView;

    iget-boolean v1, p0, Lcom/vk/attachpicker/widget/LocalImageView$PhotoLoadRunnable;->fullSize:Z

    invoke-virtual {v0, p1, v2, v1}, Lcom/vk/attachpicker/widget/LocalImageView;->setImageBitmap(Landroid/graphics/Bitmap;ZZ)V

    .line 140
    iget-object v0, p0, Lcom/vk/attachpicker/widget/LocalImageView$PhotoLoadRunnable;->listener:Lcom/vk/attachpicker/widget/LocalImageView$ImageDisplayListener;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/vk/attachpicker/widget/LocalImageView$PhotoLoadRunnable;->listener:Lcom/vk/attachpicker/widget/LocalImageView$ImageDisplayListener;

    invoke-interface {v0, p1}, Lcom/vk/attachpicker/widget/LocalImageView$ImageDisplayListener;->onImageDisplayed(Landroid/graphics/Bitmap;)V

    .line 143
    :cond_0
    return-void
.end method

.method synthetic lambda$run$1()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/vk/attachpicker/widget/LocalImageView$PhotoLoadRunnable;->this$0:Lcom/vk/attachpicker/widget/LocalImageView;

    iget-object v1, p0, Lcom/vk/attachpicker/widget/LocalImageView$PhotoLoadRunnable;->this$0:Lcom/vk/attachpicker/widget/LocalImageView;

    invoke-static {v1}, Lcom/vk/attachpicker/widget/LocalImageView;->access$100(Lcom/vk/attachpicker/widget/LocalImageView;)Lcom/vk/attachpicker/widget/CorruptedFileDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/LocalImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 122
    iget-boolean v3, p0, Lcom/vk/attachpicker/widget/LocalImageView$PhotoLoadRunnable;->fullSize:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/vk/attachpicker/widget/LocalImageView$PhotoLoadRunnable;->mediaStoreEntry:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    invoke-virtual {v3}, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->getDisplayImageKey()Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;

    move-result-object v2

    .line 124
    .local v2, "key":Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;
    :goto_0
    invoke-virtual {v2}, Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;->isStyled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    :cond_0
    iget-boolean v3, p0, Lcom/vk/attachpicker/widget/LocalImageView$PhotoLoadRunnable;->fullSize:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/vk/attachpicker/widget/LocalImageView$PhotoLoadRunnable;->mediaStoreEntry:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    invoke-static {v3}, Lcom/vk/attachpicker/util/ImageLoader;->getDisplayImage(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 130
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/LocalImageView$PhotoLoadRunnable;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 148
    :goto_2
    return-void

    .line 122
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "key":Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;
    :cond_1
    iget-object v3, p0, Lcom/vk/attachpicker/widget/LocalImageView$PhotoLoadRunnable;->mediaStoreEntry:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    invoke-virtual {v3}, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->getThumbnailImageKey()Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;

    move-result-object v2

    goto :goto_0

    .line 128
    .restart local v2    # "key":Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;
    :cond_2
    iget-object v3, p0, Lcom/vk/attachpicker/widget/LocalImageView$PhotoLoadRunnable;->mediaStoreEntry:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    invoke-static {v3}, Lcom/vk/attachpicker/util/ImageLoader;->getThumbnailImage(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 134
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    if-eqz v0, :cond_4

    .line 135
    sget-object v3, Lcom/vk/attachpicker/Picker;->imageCache:Lcom/vk/attachpicker/util/ImageCache;

    invoke-virtual {v3, v2, v0}, Lcom/vk/attachpicker/util/ImageCache;->put(Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;Landroid/graphics/Bitmap;)V

    .line 136
    move-object v1, v0

    .line 137
    .local v1, "finalBitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/vk/attachpicker/widget/LocalImageView;->access$000()Landroid/os/Handler;

    move-result-object v3

    invoke-static {p0, v1}, Lcom/vk/attachpicker/widget/LocalImageView$PhotoLoadRunnable$$Lambda$1;->lambdaFactory$(Lcom/vk/attachpicker/widget/LocalImageView$PhotoLoadRunnable;Landroid/graphics/Bitmap;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 145
    .end local v1    # "finalBitmap":Landroid/graphics/Bitmap;
    :cond_4
    iget-object v3, p0, Lcom/vk/attachpicker/widget/LocalImageView$PhotoLoadRunnable;->mediaStoreEntry:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->setCorrupted(Z)V

    .line 146
    invoke-static {}, Lcom/vk/attachpicker/widget/LocalImageView;->access$000()Landroid/os/Handler;

    move-result-object v3

    invoke-static {p0}, Lcom/vk/attachpicker/widget/LocalImageView$PhotoLoadRunnable$$Lambda$2;->lambdaFactory$(Lcom/vk/attachpicker/widget/LocalImageView$PhotoLoadRunnable;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method
