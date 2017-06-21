.class public Lcom/vkcoffee/android/ui/HardwareLayerAnimatorListener;
.super Ljava/lang/Object;
.source "HardwareLayerAnimatorListener.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 38
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 26
    instance-of v1, p1, Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    .line 27
    check-cast p1, Landroid/animation/ObjectAnimator;

    .end local p1    # "animation":Landroid/animation/Animator;
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    .line 28
    .local v0, "target":Ljava/lang/Object;
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 29
    check-cast v0, Landroid/view/View;

    .end local v0    # "target":Ljava/lang/Object;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 32
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 44
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 16
    instance-of v1, p1, Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    .line 17
    check-cast p1, Landroid/animation/ObjectAnimator;

    .end local p1    # "animation":Landroid/animation/Animator;
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    .line 18
    .local v0, "target":Ljava/lang/Object;
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 19
    check-cast v0, Landroid/view/View;

    .end local v0    # "target":Ljava/lang/Object;
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 22
    :cond_0
    return-void
.end method
