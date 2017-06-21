.class public Lcom/vkcoffee/android/ui/SimpleInsetDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SimpleInsetDrawable.java"


# instance fields
.field private adjustedBounds:Landroid/graphics/Rect;

.field private bottom:I

.field private left:I

.field private right:I

.field private top:I

.field private wrapped:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 15
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/SimpleInsetDrawable;->adjustedBounds:Landroid/graphics/Rect;

    .line 18
    iput-object p1, p0, Lcom/vkcoffee/android/ui/SimpleInsetDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    .line 19
    iput p2, p0, Lcom/vkcoffee/android/ui/SimpleInsetDrawable;->left:I

    .line 20
    iput p3, p0, Lcom/vkcoffee/android/ui/SimpleInsetDrawable;->top:I

    .line 21
    iput p4, p0, Lcom/vkcoffee/android/ui/SimpleInsetDrawable;->right:I

    .line 22
    iput p5, p0, Lcom/vkcoffee/android/ui/SimpleInsetDrawable;->bottom:I

    .line 23
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 27
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 28
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/SimpleInsetDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 29
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SimpleInsetDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 31
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 51
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SimpleInsetDrawable;->adjustedBounds:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/vkcoffee/android/ui/SimpleInsetDrawable;->left:I

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/vkcoffee/android/ui/SimpleInsetDrawable;->top:I

    add-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/vkcoffee/android/ui/SimpleInsetDrawable;->right:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/vkcoffee/android/ui/SimpleInsetDrawable;->bottom:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 52
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SimpleInsetDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/SimpleInsetDrawable;->adjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 53
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/SimpleInsetDrawable;->invalidateSelf()V

    .line 54
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 36
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 41
    return-void
.end method
