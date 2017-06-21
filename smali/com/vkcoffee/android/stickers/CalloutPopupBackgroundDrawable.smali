.class public Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CalloutPopupBackgroundDrawable.java"


# instance fields
.field private mCenterDrawable:Landroid/graphics/drawable/Drawable;

.field private mCenterSize:I

.field private mLeftDrawable:Landroid/graphics/drawable/Drawable;

.field private mLeftSize:I

.field private mRightDrawable:Landroid/graphics/drawable/Drawable;

.field private mRightSize:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "leftDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "centerDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "rightDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, -0x1

    .line 25
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 19
    iput v0, p0, Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;->mLeftSize:I

    .line 20
    iput v0, p0, Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;->mCenterSize:I

    .line 21
    iput v0, p0, Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;->mRightSize:I

    .line 27
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 28
    iput-object p2, p0, Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 29
    iput-object p3, p0, Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    .line 30
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 35
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 36
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 37
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 43
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 45
    iget v4, p0, Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;->mLeftSize:I

    if-ltz v4, :cond_0

    move v0, v3

    .line 46
    .local v0, "drawableWithoutSizeCount":I
    :goto_0
    iget v4, p0, Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;->mCenterSize:I

    if-ltz v4, :cond_1

    .line 47
    :goto_1
    iget v4, p0, Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;->mRightSize:I

    if-ltz v4, :cond_2

    .line 50
    :goto_2
    iget v4, p0, Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;->mLeftSize:I

    if-gez v4, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int v2, v4, v0

    .line 51
    .local v2, "width":I
    :goto_3
    iget-object v4, p0, Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, p1, Landroid/graphics/Rect;->left:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    iget v7, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v2

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 52
    move v1, v2

    .line 54
    .local v1, "start":I
    iget v4, p0, Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;->mCenterSize:I

    if-gez v4, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v5, p0, Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;->mLeftSize:I

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int/2addr v4, v5

    div-int v2, v4, v0

    .line 55
    :goto_4
    iget-object v4, p0, Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v1

    iget v6, p1, Landroid/graphics/Rect;->top:I

    iget v7, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v1

    add-int/2addr v7, v2

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 56
    add-int/2addr v1, v2

    .line 58
    iget v4, p0, Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;->mRightSize:I

    if-gez v4, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v5, p0, Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;->mLeftSize:I

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;->mCenterSize:I

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v3, v4, v3

    div-int v2, v3, v0

    .line 59
    :goto_5
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v1

    add-int/2addr v6, v2

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 60
    return-void

    .line 45
    .end local v0    # "drawableWithoutSizeCount":I
    .end local v1    # "start":I
    .end local v2    # "width":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 46
    .restart local v0    # "drawableWithoutSizeCount":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 47
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 50
    :cond_3
    iget v2, p0, Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;->mLeftSize:I

    goto :goto_3

    .line 54
    .restart local v1    # "start":I
    .restart local v2    # "width":I
    :cond_4
    iget v2, p0, Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;->mCenterSize:I

    goto :goto_4

    .line 58
    :cond_5
    iget v2, p0, Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;->mRightSize:I

    goto :goto_5
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 73
    return-void
.end method

.method public setCenterSize(I)V
    .locals 0
    .param p1, "mCenterSize"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;->mCenterSize:I

    .line 68
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 78
    return-void
.end method

.method public setLeftSize(I)V
    .locals 0
    .param p1, "mLeftSize"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;->mLeftSize:I

    .line 64
    return-void
.end method
