.class public Lcom/vkcoffee/android/ui/animation/ViewAnimationUtils;
.super Ljava/lang/Object;
.source "ViewAnimationUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I
    .param p3, "startRadius"    # F
    .param p4, "endRadius"    # F

    .prologue
    .line 20
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 21
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    .line 23
    :cond_0
    instance-of v2, p0, Lcom/vkcoffee/android/ui/animation/RevealAnimator;

    if-nez v2, :cond_1

    .line 24
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "View must implement RevealAnimator."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object v1, p0

    .line 27
    check-cast v1, Lcom/vkcoffee/android/ui/animation/RevealAnimator;

    .line 28
    .local v1, "revealLayout":Lcom/vkcoffee/android/ui/animation/RevealAnimator;
    new-instance v2, Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealInfo;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealInfo;-><init>(IIFF)V

    invoke-interface {v1, v2}, Lcom/vkcoffee/android/ui/animation/RevealAnimator;->attachRevealInfo(Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealInfo;)V

    .line 30
    const-string/jumbo v2, "revealRadius"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput p3, v3, v4

    const/4 v4, 0x1

    aput p4, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 31
    .local v0, "reveal":Landroid/animation/ObjectAnimator;
    invoke-static {v1}, Lcom/vkcoffee/android/ui/animation/ViewAnimationUtils;->getRevealFinishListener(Lcom/vkcoffee/android/ui/animation/RevealAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method private static getRevealFinishListener(Lcom/vkcoffee/android/ui/animation/RevealAnimator;)Landroid/animation/Animator$AnimatorListener;
    .locals 2
    .param p0, "target"    # Lcom/vkcoffee/android/ui/animation/RevealAnimator;

    .prologue
    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 38
    new-instance v0, Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealFinishedJellyBeanMr2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealFinishedJellyBeanMr2;-><init>(Lcom/vkcoffee/android/ui/animation/RevealAnimator;)V

    .line 42
    :goto_0
    return-object v0

    .line 39
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 40
    new-instance v0, Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealFinishedIceCreamSandwich;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealFinishedIceCreamSandwich;-><init>(Lcom/vkcoffee/android/ui/animation/RevealAnimator;)V

    goto :goto_0

    .line 42
    :cond_1
    new-instance v0, Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealFinishedGingerbread;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealFinishedGingerbread;-><init>(Lcom/vkcoffee/android/ui/animation/RevealAnimator;)V

    goto :goto_0
.end method
