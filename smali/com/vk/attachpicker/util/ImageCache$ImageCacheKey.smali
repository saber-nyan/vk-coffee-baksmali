.class public Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/util/ImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageCacheKey"
.end annotation


# instance fields
.field public fullSize:Z

.field public id:I


# direct methods
.method public constructor <init>(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;Z)V
    .locals 1
    .param p1, "mediaStoreEntry"    # Lcom/vk/attachpicker/mediastore/MediaStoreEntry;
    .param p2, "fullSize"    # Z

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iget v0, p1, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->id:I

    iput v0, p0, Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;->id:I

    .line 62
    iput-boolean p2, p0, Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;->fullSize:Z

    .line 63
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 67
    if-ne p0, p1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v1

    .line 68
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 70
    check-cast v0, Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;

    .line 72
    .local v0, "that":Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;
    iget v3, p0, Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;->id:I

    iget v4, v0, Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;->id:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 73
    :cond_4
    iget-boolean v3, p0, Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;->fullSize:Z

    iget-boolean v4, v0, Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;->fullSize:Z

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 79
    iget v0, p0, Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;->id:I

    .line 80
    .local v0, "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;->fullSize:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int v0, v2, v1

    .line 81
    return v0

    .line 80
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isStyled()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method
