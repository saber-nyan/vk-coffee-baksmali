.class public Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;
.super Landroid/widget/ImageView;
.source "PhotoAttachment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/attachments/PhotoAttachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FixedSizeImageView"
.end annotation


# instance fields
.field private animated:Z

.field public displayH:I

.field public displayW:I

.field private phAlpha:I

.field private placeholder:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 232
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 227
    iput v0, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->phAlpha:I

    .line 228
    iput-boolean v0, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->animated:Z

    .line 233
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0xd0d0e

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->placeholder:Landroid/graphics/drawable/Drawable;

    .line 236
    return-void
.end method


# virtual methods
.method public animateAlpha()V
    .locals 4

    .prologue
    .line 243
    iget-boolean v1, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->animated:Z

    if-nez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    const-string/jumbo v1, "drawableAlpha"

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 247
    .local v0, "anim":Landroid/animation/ValueAnimator;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x3f333333    # 0.7f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 248
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 249
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 250
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->animated:Z

    goto :goto_0

    .line 246
    nop

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method public dontAnimate()V
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->animated:Z

    .line 268
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 276
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 277
    iget v0, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->phAlpha:I

    if-lez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->placeholder:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->phAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 279
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->placeholder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 280
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->placeholder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 281
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->placeholder:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 283
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 239
    iget v0, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->displayW:I

    iget v1, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->displayH:I

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->setMeasuredDimension(II)V

    .line 240
    return-void
.end method

.method public setDrawableAlpha(I)V
    .locals 0
    .param p1, "a"    # I

    .prologue
    .line 271
    iput p1, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->phAlpha:I

    .line 272
    invoke-virtual {p0}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->invalidate()V

    .line 273
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 260
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 261
    if-nez p1, :cond_0

    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->animated:Z

    .line 264
    :cond_0
    return-void
.end method
