.class public Lcom/vkcoffee/android/stickers/StickerDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "StickerDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/stickers/StickerDrawable$Target;
    }
.end annotation


# static fields
.field public static final OVERLAY_COLOR:I = 0x33000000

.field private static final sDisabled:Landroid/graphics/ColorFilter;

.field private static final sEnabled:Landroid/graphics/ColorFilter;


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v1, 0x33000000

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/vkcoffee/android/stickers/StickerDrawable;->sEnabled:Landroid/graphics/ColorFilter;

    .line 24
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/vkcoffee/android/stickers/StickerDrawable;->sDisabled:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/StickerDrawable;->mPaint:Landroid/graphics/Paint;

    .line 30
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/StickerDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 31
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerDrawable;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/vkcoffee/android/stickers/StickerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/stickers/StickerDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 38
    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 85
    iget-object v5, p0, Lcom/vkcoffee/android/stickers/StickerDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v4, v5

    .line 86
    .local v4, "width":F
    iget-object v5, p0, Lcom/vkcoffee/android/stickers/StickerDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v1, v5

    .line 87
    .local v1, "height":F
    div-float v0, v4, v1

    .line 89
    .local v0, "factor":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v0, v5

    if-lez v5, :cond_0

    .line 90
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v0

    float-to-int v2, v5

    .line 91
    .local v2, "newHeight":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    shr-int/lit8 v6, v2, 0x1

    sub-int/2addr v5, v6

    iput v5, p1, Landroid/graphics/Rect;->top:I

    .line 92
    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iput v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 98
    .end local v2    # "newHeight":I
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v3, v5

    .line 95
    .local v3, "newWidth":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    shr-int/lit8 v6, v3, 0x1

    sub-int/2addr v5, v6

    iput v5, p1, Landroid/graphics/Rect;->left:I

    .line 96
    iget v5, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    iput v5, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method protected onStateChange([I)Z
    .locals 5
    .param p1, "stateSet"    # [I

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "found":Z
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, p1, v2

    .line 66
    .local v1, "state":I
    const v4, 0x10100a7

    if-eq v1, v4, :cond_0

    const v4, 0x10100a1

    if-eq v1, v4, :cond_0

    const v4, 0x101009c

    if-eq v1, v4, :cond_0

    const v4, 0x10102fe

    if-eq v1, v4, :cond_0

    const v4, 0x1010367

    if-ne v1, v4, :cond_3

    .line 71
    :cond_0
    const/4 v0, 0x1

    .line 72
    sget-object v2, Lcom/vkcoffee/android/stickers/StickerDrawable;->sEnabled:Landroid/graphics/ColorFilter;

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/stickers/StickerDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 76
    .end local v1    # "state":I
    :cond_1
    if-nez v0, :cond_2

    .line 77
    sget-object v2, Lcom/vkcoffee/android/stickers/StickerDrawable;->sDisabled:Landroid/graphics/ColorFilter;

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/stickers/StickerDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 79
    :cond_2
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v2

    return v2

    .line 65
    .restart local v1    # "state":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 43
    invoke-virtual {p0}, Lcom/vkcoffee/android/stickers/StickerDrawable;->invalidateSelf()V

    .line 44
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 49
    invoke-virtual {p0}, Lcom/vkcoffee/android/stickers/StickerDrawable;->invalidateSelf()V

    .line 50
    return-void
.end method
