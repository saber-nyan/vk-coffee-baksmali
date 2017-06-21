.class public Lcom/vkcoffee/android/gifs/ClippingImageView;
.super Lcom/vkcoffee/android/ui/widget/RatioImageView;
.source "ClippingImageView.java"


# instance fields
.field private mClipBottom:I

.field private mClipLeft:I

.field private mClipRight:I

.field private mClipTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/widget/RatioImageView;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/widget/RatioImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/vkcoffee/android/ui/widget/RatioImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vkcoffee/android/ui/widget/RatioImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    return-void
.end method


# virtual methods
.method public getClipBottom()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/vkcoffee/android/gifs/ClippingImageView;->mClipBottom:I

    return v0
.end method

.method public getClipHorizontal()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/vkcoffee/android/gifs/ClippingImageView;->mClipRight:I

    return v0
.end method

.method public getClipLeft()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/vkcoffee/android/gifs/ClippingImageView;->mClipLeft:I

    return v0
.end method

.method public getClipRight()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/vkcoffee/android/gifs/ClippingImageView;->mClipRight:I

    return v0
.end method

.method public getClipTop()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/vkcoffee/android/gifs/ClippingImageView;->mClipTop:I

    return v0
.end method

.method public getClipVertical()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/vkcoffee/android/gifs/ClippingImageView;->mClipTop:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/ClippingImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/ClippingImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/ClippingImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 94
    .local v0, "count":I
    iget v1, p0, Lcom/vkcoffee/android/gifs/ClippingImageView;->mClipLeft:I

    iget v2, p0, Lcom/vkcoffee/android/gifs/ClippingImageView;->mClipTop:I

    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/ClippingImageView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/vkcoffee/android/gifs/ClippingImageView;->mClipRight:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/ClippingImageView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/vkcoffee/android/gifs/ClippingImageView;->mClipBottom:I

    sub-int/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 95
    invoke-super {p0, p1}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 96
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method public setClipBottom(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/vkcoffee/android/gifs/ClippingImageView;->mClipBottom:I

    .line 58
    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/ClippingImageView;->invalidate()V

    .line 59
    return-void
.end method

.method public setClipHorizontal(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/vkcoffee/android/gifs/ClippingImageView;->mClipRight:I

    iput p1, p0, Lcom/vkcoffee/android/gifs/ClippingImageView;->mClipLeft:I

    .line 81
    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/ClippingImageView;->invalidate()V

    .line 82
    return-void
.end method

.method public setClipLeft(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/vkcoffee/android/gifs/ClippingImageView;->mClipLeft:I

    .line 49
    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/ClippingImageView;->invalidate()V

    .line 50
    return-void
.end method

.method public setClipRight(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/vkcoffee/android/gifs/ClippingImageView;->mClipRight:I

    .line 67
    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/ClippingImageView;->invalidate()V

    .line 68
    return-void
.end method

.method public setClipTop(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/vkcoffee/android/gifs/ClippingImageView;->mClipTop:I

    .line 40
    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/ClippingImageView;->invalidate()V

    .line 41
    return-void
.end method

.method public setClipVertical(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/vkcoffee/android/gifs/ClippingImageView;->mClipBottom:I

    iput p1, p0, Lcom/vkcoffee/android/gifs/ClippingImageView;->mClipTop:I

    .line 72
    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/ClippingImageView;->invalidate()V

    .line 73
    return-void
.end method
