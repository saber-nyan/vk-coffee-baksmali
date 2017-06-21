.class public Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageViewTopCrop;
.super Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;
.source "PhotoAttachment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/attachments/PhotoAttachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FixedSizeImageViewTopCrop"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;-><init>(Landroid/content/Context;)V

    .line 289
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageViewTopCrop;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 290
    return-void
.end method

.method private recomputeImgMatrix()V
    .locals 8

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageViewTopCrop;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 308
    .local v2, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageViewTopCrop;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageViewTopCrop;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageViewTopCrop;->getPaddingRight()I

    move-result v7

    sub-int v5, v6, v7

    .line 309
    .local v5, "viewWidth":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageViewTopCrop;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageViewTopCrop;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageViewTopCrop;->getPaddingBottom()I

    move-result v7

    sub-int v4, v6, v7

    .line 310
    .local v4, "viewHeight":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageViewTopCrop;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 311
    .local v1, "drawableWidth":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageViewTopCrop;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 313
    .local v0, "drawableHeight":I
    mul-int v6, v1, v4

    mul-int v7, v0, v5

    if-le v6, v7, :cond_0

    .line 314
    int-to-float v6, v4

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 319
    .local v3, "scale":F
    :goto_0
    invoke-virtual {v2, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 320
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageViewTopCrop;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 321
    return-void

    .line 316
    .end local v3    # "scale":F
    :cond_0
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
    .line 294
    invoke-super/range {p0 .. p5}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->onLayout(ZIIII)V

    .line 295
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageViewTopCrop;->recomputeImgMatrix()V

    .line 296
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageViewTopCrop;->recomputeImgMatrix()V

    .line 301
    invoke-super {p0, p1, p2, p3, p4}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->setFrame(IIII)Z

    move-result v0

    return v0
.end method
