.class public Lcom/vkcoffee/android/ui/OverlayImageViewTopCrop;
.super Lcom/vkcoffee/android/ui/OverlayImageView;
.source "OverlayImageViewTopCrop.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/OverlayImageView;-><init>(Landroid/content/Context;)V

    .line 11
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/OverlayImageViewTopCrop;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/OverlayImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/OverlayImageViewTopCrop;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/vkcoffee/android/ui/OverlayImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/OverlayImageViewTopCrop;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 22
    return-void
.end method

.method private recomputeImgMatrix()V
    .locals 8

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayImageViewTopCrop;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayImageViewTopCrop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 41
    .local v2, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayImageViewTopCrop;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayImageViewTopCrop;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayImageViewTopCrop;->getPaddingRight()I

    move-result v7

    sub-int v5, v6, v7

    .line 42
    .local v5, "viewWidth":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayImageViewTopCrop;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayImageViewTopCrop;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayImageViewTopCrop;->getPaddingBottom()I

    move-result v7

    sub-int v4, v6, v7

    .line 43
    .local v4, "viewHeight":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayImageViewTopCrop;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 44
    .local v1, "drawableWidth":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/OverlayImageViewTopCrop;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 46
    .local v0, "drawableHeight":I
    mul-int v6, v1, v4

    mul-int v7, v0, v5

    if-le v6, v7, :cond_1

    .line 47
    int-to-float v6, v4

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 52
    .local v3, "scale":F
    :goto_0
    invoke-virtual {v2, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 53
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/OverlayImageViewTopCrop;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 55
    .end local v0    # "drawableHeight":I
    .end local v1    # "drawableWidth":I
    .end local v2    # "matrix":Landroid/graphics/Matrix;
    .end local v3    # "scale":F
    .end local v4    # "viewHeight":I
    .end local v5    # "viewWidth":I
    :cond_0
    return-void

    .line 49
    .restart local v0    # "drawableHeight":I
    .restart local v1    # "drawableWidth":I
    .restart local v2    # "matrix":Landroid/graphics/Matrix;
    .restart local v4    # "viewHeight":I
    .restart local v5    # "viewWidth":I
    :cond_1
    int-to-float v6, v5

    int-to-float v7, v1

    div-float v3, v6, v7

    .restart local v3    # "scale":F
    goto :goto_0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 26
    invoke-super/range {p0 .. p5}, Lcom/vkcoffee/android/ui/OverlayImageView;->onLayout(ZIIII)V

    .line 27
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/OverlayImageViewTopCrop;->recomputeImgMatrix()V

    .line 28
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/OverlayImageViewTopCrop;->recomputeImgMatrix()V

    .line 33
    invoke-super {p0, p1, p2, p3, p4}, Lcom/vkcoffee/android/ui/OverlayImageView;->setFrame(IIII)Z

    move-result v0

    return v0
.end method
