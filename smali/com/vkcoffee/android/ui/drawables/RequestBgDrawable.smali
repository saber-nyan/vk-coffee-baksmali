.class public Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RequestBgDrawable.java"


# instance fields
.field private color:I

.field private isCanceled:Z

.field public lastRequest:Lcom/vkcoffee/android/data/GameRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;->isCanceled:Z

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;->color:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 45
    iget v0, p0, Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;->color:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 46
    return-void
.end method

.method public getCurrentColor()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;->color:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 50
    return-void
.end method

.method public setCanceled()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;->isCanceled:Z

    .line 32
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 54
    return-void
.end method

.method public setCurrentColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;->color:I

    .line 40
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;->invalidateSelf()V

    .line 41
    return-void
.end method

.method public updateRequest(Lcom/vkcoffee/android/data/GameRequest;)V
    .locals 3
    .param p1, "gameRequest"    # Lcom/vkcoffee/android/data/GameRequest;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;->lastRequest:Lcom/vkcoffee/android/data/GameRequest;

    .line 19
    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;->isCanceled:Z

    if-nez v1, :cond_1

    iget-boolean v1, p1, Lcom/vkcoffee/android/data/GameRequest;->fromDb:Z

    if-nez v1, :cond_1

    iget v1, p1, Lcom/vkcoffee/android/data/GameRequest;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 20
    const v0, -0x14110e

    .line 24
    .local v0, "newColor":I
    :goto_0
    iget v1, p0, Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;->color:I

    if-eq v0, v1, :cond_0

    .line 25
    iput v0, p0, Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;->color:I

    .line 26
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/drawables/RequestBgDrawable;->invalidateSelf()V

    .line 28
    :cond_0
    return-void

    .line 22
    .end local v0    # "newColor":I
    :cond_1
    const/4 v0, -0x1

    .restart local v0    # "newColor":I
    goto :goto_0
.end method
