.class public Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RecoloredDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private colors:Landroid/content/res/ColorStateList;

.field private selectedAlpha:I

.field private unselectedAlpha:I

.field private wrapped:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 5
    .param p1, "wrap"    # Landroid/graphics/drawable/Drawable;
    .param p2, "color"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v1, v4, [[I

    new-array v2, v3, [I

    aput-object v2, v1, v3

    new-array v2, v4, [I

    aput p2, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "wrap"    # Landroid/graphics/drawable/Drawable;
    .param p2, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    const/16 v0, 0xff

    .line 20
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 17
    iput v0, p0, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;->selectedAlpha:I

    .line 18
    iput v0, p0, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;->unselectedAlpha:I

    .line 21
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    .line 22
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 23
    iput-object p2, p0, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;->colors:Landroid/content/res/ColorStateList;

    .line 24
    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;->onStateChange([I)Z

    .line 25
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 34
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getSelectedAlpha()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;->selectedAlpha:I

    return v0
.end method

.method public getUnselectedAlpha()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;->unselectedAlpha:I

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;->invalidateSelf()V

    .line 113
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;->colors:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 5
    .param p1, "state"    # [I

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    .line 77
    iget-object v3, p0, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;->colors:Landroid/content/res/ColorStateList;

    iget-object v4, p0, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;->colors:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v3, p1, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 78
    .local v0, "color":I
    iget-object v3, p0, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 80
    const/4 v2, 0x0

    .line 81
    .local v2, "selected":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 82
    aget v3, p1, v1

    const v4, 0x10100a1

    if-ne v3, v4, :cond_1

    .line 83
    const/4 v2, 0x1

    .line 87
    :cond_0
    iget-object v4, p0, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget v3, p0, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;->selectedAlpha:I

    :goto_1
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 89
    const/4 v3, 0x1

    return v3

    .line 81
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_2
    iget v3, p0, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;->unselectedAlpha:I

    goto :goto_1
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 117
    invoke-virtual {p0, p2, p3, p4}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 118
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;->selectedAlpha:I

    .line 39
    iput p1, p0, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;->unselectedAlpha:I

    .line 40
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 41
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 45
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 46
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 47
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 52
    return-void
.end method

.method public setSelectedAlpha(I)V
    .locals 0
    .param p1, "selectedAlpha"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;->selectedAlpha:I

    .line 98
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;->invalidateSelf()V

    .line 99
    return-void
.end method

.method public setUnselectedAlpha(I)V
    .locals 0
    .param p1, "unselectedAlpha"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;->unselectedAlpha:I

    .line 107
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;->invalidateSelf()V

    .line 108
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 122
    invoke-virtual {p0, p2}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 123
    return-void
.end method
