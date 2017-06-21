.class Lcom/vk/attachpicker/util/ImageCache$1;
.super Landroid/util/LruCache;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/util/ImageCache;->createImageCache(F)Landroid/util/LruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/util/ImageCache;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/util/ImageCache;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/util/ImageCache;
    .param p2, "x0"    # I

    .prologue
    .line 46
    iput-object p1, p0, Lcom/vk/attachpicker/util/ImageCache$1;->this$0:Lcom/vk/attachpicker/util/ImageCache;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected sizeOf(Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;Landroid/graphics/Bitmap;)I
    .locals 1
    .param p1, "key"    # Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 49
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    div-int/lit16 v0, v0, 0x400

    return v0
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 46
    check-cast p1, Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/vk/attachpicker/util/ImageCache$1;->sizeOf(Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method
