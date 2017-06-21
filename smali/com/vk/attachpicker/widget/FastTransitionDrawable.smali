.class public Lcom/vk/attachpicker/widget/FastTransitionDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "FastTransitionDrawable.java"


# static fields
.field private static final FADE_DURATION:F = 200.0f


# instance fields
.field private alpha:I

.field private animating:Z

.field private placeholder:Landroid/graphics/drawable/Drawable;

.field private startTimeMillis:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "placeholder"    # Landroid/graphics/drawable/Drawable;
    .param p4, "fade"    # Z

    .prologue
    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 17
    const/16 v0, 0xff

    iput v0, p0, Lcom/vk/attachpicker/widget/FastTransitionDrawable;->alpha:I

    .line 22
    if-eqz p4, :cond_0

    .line 23
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vk/attachpicker/widget/FastTransitionDrawable;->startTimeMillis:J

    .line 24
    iput-object p3, p0, Lcom/vk/attachpicker/widget/FastTransitionDrawable;->placeholder:Landroid/graphics/drawable/Drawable;

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vk/attachpicker/widget/FastTransitionDrawable;->animating:Z

    .line 27
    if-nez p3, :cond_0

    .line 28
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/FastTransitionDrawable;->placeholder:Landroid/graphics/drawable/Drawable;

    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 35
    iget-boolean v2, p0, Lcom/vk/attachpicker/widget/FastTransitionDrawable;->animating:Z

    if-nez v2, :cond_0

    .line 36
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 54
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/vk/attachpicker/widget/FastTransitionDrawable;->startTimeMillis:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x43480000    # 200.0f

    div-float v0, v2, v3

    .line 39
    .local v0, "normalized":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_1

    .line 40
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/vk/attachpicker/widget/FastTransitionDrawable;->animating:Z

    .line 41
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vk/attachpicker/widget/FastTransitionDrawable;->placeholder:Landroid/graphics/drawable/Drawable;

    .line 42
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 44
    :cond_1
    iget-object v2, p0, Lcom/vk/attachpicker/widget/FastTransitionDrawable;->placeholder:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 45
    iget-object v2, p0, Lcom/vk/attachpicker/widget/FastTransitionDrawable;->placeholder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 48
    :cond_2
    iget v2, p0, Lcom/vk/attachpicker/widget/FastTransitionDrawable;->alpha:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v1, v2

    .line 49
    .local v1, "partialAlpha":I
    invoke-super {p0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 50
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 51
    iget v2, p0, Lcom/vk/attachpicker/widget/FastTransitionDrawable;->alpha:I

    invoke-super {p0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/vk/attachpicker/widget/FastTransitionDrawable;->placeholder:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/vk/attachpicker/widget/FastTransitionDrawable;->placeholder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 78
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 79
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/vk/attachpicker/widget/FastTransitionDrawable;->alpha:I

    .line 59
    iget-object v0, p0, Lcom/vk/attachpicker/widget/FastTransitionDrawable;->placeholder:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/vk/attachpicker/widget/FastTransitionDrawable;->placeholder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 62
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 63
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vk/attachpicker/widget/FastTransitionDrawable;->placeholder:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/vk/attachpicker/widget/FastTransitionDrawable;->placeholder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 70
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 71
    return-void
.end method
