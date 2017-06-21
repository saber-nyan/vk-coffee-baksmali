.class public Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealFinishedIceCreamSandwich;
.super Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealFinishedGingerbread;
.source "RevealAnimator.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/animation/RevealAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RevealFinishedIceCreamSandwich"
.end annotation


# instance fields
.field mFeaturedLayerType:I

.field mLayerType:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/animation/RevealAnimator;)V
    .locals 1
    .param p1, "target"    # Lcom/vkcoffee/android/ui/animation/RevealAnimator;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealFinishedGingerbread;-><init>(Lcom/vkcoffee/android/ui/animation/RevealAnimator;)V

    .line 111
    check-cast p1, Landroid/view/View;

    .end local p1    # "target":Lcom/vkcoffee/android/ui/animation/RevealAnimator;
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealFinishedIceCreamSandwich;->mLayerType:I

    .line 112
    const/4 v0, 0x1

    iput v0, p0, Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealFinishedIceCreamSandwich;->mFeaturedLayerType:I

    .line 113
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealFinishedIceCreamSandwich;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v1, p0, Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealFinishedIceCreamSandwich;->mLayerType:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 118
    invoke-super {p0, p1}, Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealFinishedGingerbread;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 119
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealFinishedIceCreamSandwich;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v1, p0, Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealFinishedIceCreamSandwich;->mLayerType:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 130
    invoke-super {p0, p1}, Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealFinishedGingerbread;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 131
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealFinishedIceCreamSandwich;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v1, p0, Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealFinishedIceCreamSandwich;->mFeaturedLayerType:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 124
    invoke-super {p0, p1}, Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealFinishedGingerbread;->onAnimationStart(Landroid/animation/Animator;)V

    .line 125
    return-void
.end method
