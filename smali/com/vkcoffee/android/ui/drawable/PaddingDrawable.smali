.class public Lcom/vkcoffee/android/ui/drawable/PaddingDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "PaddingDrawable.java"


# instance fields
.field private boundsChanged:Z

.field private tmpRect:Landroid/graphics/Rect;

.field private widthDiff:I

.field private wrapped:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 3
    .param p1, "wrapped"    # Landroid/graphics/drawable/Drawable;
    .param p2, "wdiff"    # I

    .prologue
    const/4 v2, 0x1

    .line 21
    new-array v0, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 15
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/drawable/PaddingDrawable;->tmpRect:Landroid/graphics/Rect;

    .line 18
    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/drawable/PaddingDrawable;->boundsChanged:Z

    .line 22
    iput-object p1, p0, Lcom/vkcoffee/android/ui/drawable/PaddingDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    .line 23
    iput p2, p0, Lcom/vkcoffee/android/ui/drawable/PaddingDrawable;->widthDiff:I

    .line 24
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v3, 0x41600000    # 14.0f

    .line 28
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/drawable/PaddingDrawable;->boundsChanged:Z

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawable/PaddingDrawable;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/drawable/PaddingDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 30
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawable/PaddingDrawable;->tmpRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 31
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawable/PaddingDrawable;->tmpRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 32
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawable/PaddingDrawable;->tmpRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p0, Lcom/vkcoffee/android/ui/drawable/PaddingDrawable;->widthDiff:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/drawable/PaddingDrawable;->getLevel()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x461c4000    # 10000.0f

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 33
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawable/PaddingDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/drawable/PaddingDrawable;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/drawable/PaddingDrawable;->boundsChanged:Z

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawable/PaddingDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 37
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/drawable/PaddingDrawable;->boundsChanged:Z

    .line 43
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/drawable/PaddingDrawable;->boundsChanged:Z

    .line 48
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/drawable/PaddingDrawable;->invalidateSelf()V

    .line 49
    return v0
.end method
