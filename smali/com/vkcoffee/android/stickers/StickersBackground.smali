.class public Lcom/vkcoffee/android/stickers/StickersBackground;
.super Landroid/graphics/drawable/Drawable;
.source "StickersBackground.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$PageTransformer;
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/stickers/StickersBackground$Background;
    }
.end annotation


# instance fields
.field private mBackgrounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/stickers/StickersBackground$Background;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/stickers/StickersViewPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "pages":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/stickers/StickersViewPage;>;"
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vkcoffee/android/stickers/StickersBackground;->setPages(Ljava/util/List;I)V

    .line 31
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 49
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/StickersBackground;->mBackgrounds:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 50
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/StickersBackground;->mBackgrounds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;

    .line 51
    .local v0, "background":Lcom/vkcoffee/android/stickers/StickersBackground$Background;
    invoke-virtual {v0}, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->getOpacity()I

    move-result v2

    if-lez v2, :cond_0

    .line 52
    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 56
    .end local v0    # "background":Lcom/vkcoffee/android/stickers/StickersBackground$Background;
    :cond_1
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/vkcoffee/android/stickers/StickersBackground;->invalidateSelf()V

    .line 100
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 76
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/StickersBackground;->mBackgrounds:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/StickersBackground;->mBackgrounds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;

    .line 78
    .local v0, "background":Lcom/vkcoffee/android/stickers/StickersBackground$Background;
    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 81
    .end local v0    # "background":Lcom/vkcoffee/android/stickers/StickersBackground$Background;
    :cond_0
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 104
    invoke-virtual {p0, p2, p3, p4}, Lcom/vkcoffee/android/stickers/StickersBackground;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 105
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 61
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 66
    return-void
.end method

.method public setPages(Ljava/util/List;I)V
    .locals 5
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/stickers/StickersViewPage;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "pages":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/stickers/StickersViewPage;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/vkcoffee/android/stickers/StickersBackground;->mBackgrounds:Ljava/util/List;

    .line 35
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 36
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/stickers/StickersViewPage;

    .line 37
    .local v2, "page":Lcom/vkcoffee/android/stickers/StickersViewPage;
    new-instance v0, Lcom/vkcoffee/android/stickers/StickersBackground$Background;

    invoke-virtual {v2}, Lcom/vkcoffee/android/stickers/StickersViewPage;->getServerBackgroundURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/vkcoffee/android/stickers/StickersViewPage;->getLocalBackgroundURL()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/vkcoffee/android/stickers/StickersBackground$Background;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .local v0, "background":Lcom/vkcoffee/android/stickers/StickersBackground$Background;
    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 39
    if-ne v1, p2, :cond_0

    const/16 v3, 0xff

    :goto_1
    invoke-virtual {v0, v3}, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->setAlpha(I)V

    .line 40
    invoke-virtual {p0}, Lcom/vkcoffee/android/stickers/StickersBackground;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/vkcoffee/android/stickers/StickersBackground$Background;->setBounds(Landroid/graphics/Rect;)V

    .line 41
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/StickersBackground;->mBackgrounds:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 43
    .end local v0    # "background":Lcom/vkcoffee/android/stickers/StickersBackground$Background;
    .end local v2    # "page":Lcom/vkcoffee/android/stickers/StickersViewPage;
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/stickers/StickersBackground;->invalidateSelf()V

    .line 44
    return-void
.end method

.method public transformPage(Landroid/view/View;F)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # F

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 86
    .local v1, "index":I
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/StickersBackground;->mBackgrounds:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 88
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    const/high16 v2, -0x40800000    # -1.0f

    cmpg-float v2, p2, v2

    if-lez v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_1

    .line 89
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 95
    :goto_0
    return-void

    .line 90
    :cond_1
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_2

    .line 91
    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 93
    :cond_2
    mul-float v2, p2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v3, v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 109
    invoke-virtual {p0, p2}, Lcom/vkcoffee/android/stickers/StickersBackground;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method
