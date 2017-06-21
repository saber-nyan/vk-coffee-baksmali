.class public Lcom/vkcoffee/android/ui/PollOptionBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PollOptionBackgroundDrawable.java"


# instance fields
.field private paint:Landroid/graphics/Paint;

.field private rectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 16
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/PollOptionBackgroundDrawable;->rectF:Landroid/graphics/RectF;

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/PollOptionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 21
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PollOptionBackgroundDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PollOptionBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 22
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PollOptionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    const v1, -0x120d09

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PollOptionBackgroundDrawable;->rectF:Landroid/graphics/RectF;

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/PollOptionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 24
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PollOptionBackgroundDrawable;->getLevel()I

    move-result v0

    if-lez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PollOptionBackgroundDrawable;->rectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/PollOptionBackgroundDrawable;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/vkcoffee/android/ui/PollOptionBackgroundDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PollOptionBackgroundDrawable;->getLevel()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x461c4000    # 10000.0f

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 26
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PollOptionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    const v1, -0x31200e

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PollOptionBackgroundDrawable;->rectF:Landroid/graphics/RectF;

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/PollOptionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 29
    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 39
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 44
    return-void
.end method
