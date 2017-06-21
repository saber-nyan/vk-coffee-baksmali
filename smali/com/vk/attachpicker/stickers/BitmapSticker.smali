.class public Lcom/vk/attachpicker/stickers/BitmapSticker;
.super Lcom/vk/attachpicker/stickers/Sticker;
.source "BitmapSticker.java"


# static fields
.field private static final paint:Landroid/graphics/Paint;


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final bitmapDstRect:Landroid/graphics/RectF;

.field private final bitmapSrcRect:Landroid/graphics/Rect;

.field private final metaInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/vk/attachpicker/stickers/BitmapSticker;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;ILjava/lang/String;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "maxWidth"    # I
    .param p3, "metaInfo"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/vk/attachpicker/stickers/Sticker;-><init>()V

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/stickers/BitmapSticker;->bitmapSrcRect:Landroid/graphics/Rect;

    .line 12
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/stickers/BitmapSticker;->bitmapDstRect:Landroid/graphics/RectF;

    .line 24
    iput-object p1, p0, Lcom/vk/attachpicker/stickers/BitmapSticker;->bitmap:Landroid/graphics/Bitmap;

    .line 25
    iput-object p3, p0, Lcom/vk/attachpicker/stickers/BitmapSticker;->metaInfo:Ljava/lang/String;

    .line 26
    invoke-direct {p0, p2}, Lcom/vk/attachpicker/stickers/BitmapSticker;->initRects(I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/vk/attachpicker/stickers/BitmapSticker;)V
    .locals 2
    .param p1, "bitmapSticker"    # Lcom/vk/attachpicker/stickers/BitmapSticker;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/vk/attachpicker/stickers/Sticker;-><init>()V

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/stickers/BitmapSticker;->bitmapSrcRect:Landroid/graphics/Rect;

    .line 12
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/stickers/BitmapSticker;->bitmapDstRect:Landroid/graphics/RectF;

    .line 17
    iget-object v0, p1, Lcom/vk/attachpicker/stickers/BitmapSticker;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/vk/attachpicker/stickers/BitmapSticker;->bitmap:Landroid/graphics/Bitmap;

    .line 18
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/BitmapSticker;->bitmapSrcRect:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/vk/attachpicker/stickers/BitmapSticker;->bitmapSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 19
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/BitmapSticker;->bitmapDstRect:Landroid/graphics/RectF;

    iget-object v1, p1, Lcom/vk/attachpicker/stickers/BitmapSticker;->bitmapDstRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 20
    iget-object v0, p1, Lcom/vk/attachpicker/stickers/BitmapSticker;->metaInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/vk/attachpicker/stickers/BitmapSticker;->metaInfo:Ljava/lang/String;

    .line 21
    return-void
.end method

.method private initRects(I)V
    .locals 9
    .param p1, "maxWidth"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 30
    iget-object v4, p0, Lcom/vk/attachpicker/stickers/BitmapSticker;->bitmapSrcRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/vk/attachpicker/stickers/BitmapSticker;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/vk/attachpicker/stickers/BitmapSticker;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v4, v8, v8, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 32
    div-int/lit8 v4, p1, 0x2

    int-to-float v0, v4

    .line 33
    .local v0, "desiredRes":F
    iget-object v4, p0, Lcom/vk/attachpicker/stickers/BitmapSticker;->bitmapSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float v3, v0, v4

    .line 34
    .local v3, "scaleW":F
    iget-object v4, p0, Lcom/vk/attachpicker/stickers/BitmapSticker;->bitmapSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v0, v4

    .line 35
    .local v2, "scaleH":F
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 36
    .local v1, "scale":F
    iget-object v4, p0, Lcom/vk/attachpicker/stickers/BitmapSticker;->bitmapDstRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/vk/attachpicker/stickers/BitmapSticker;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    iget-object v6, p0, Lcom/vk/attachpicker/stickers/BitmapSticker;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v1

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 37
    return-void
.end method


# virtual methods
.method public doDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/BitmapSticker;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/BitmapSticker;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/vk/attachpicker/stickers/BitmapSticker;->bitmapSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/vk/attachpicker/stickers/BitmapSticker;->bitmapDstRect:Landroid/graphics/RectF;

    sget-object v3, Lcom/vk/attachpicker/stickers/BitmapSticker;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 44
    :cond_0
    return-void
.end method

.method public getMetaInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/BitmapSticker;->metaInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalHeight()F
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/BitmapSticker;->bitmapDstRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/BitmapSticker;->bitmapDstRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 60
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOriginalWidth()F
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/BitmapSticker;->bitmapDstRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/BitmapSticker;->bitmapDstRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 51
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
