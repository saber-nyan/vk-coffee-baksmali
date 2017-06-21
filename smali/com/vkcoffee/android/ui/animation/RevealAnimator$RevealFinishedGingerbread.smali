.class public Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealFinishedGingerbread;
.super Ljava/lang/Object;
.source "RevealAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/animation/RevealAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RevealFinishedGingerbread"
.end annotation


# instance fields
.field mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/vkcoffee/android/ui/animation/RevealAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/animation/RevealAnimator;)V
    .locals 1
    .param p1, "target"    # Lcom/vkcoffee/android/ui/animation/RevealAnimator;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealFinishedGingerbread;->mReference:Ljava/lang/ref/WeakReference;

    .line 77
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 87
    iget-object v1, p0, Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealFinishedGingerbread;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/animation/RevealAnimator;

    .line 88
    .local v0, "target":Lcom/vkcoffee/android/ui/animation/RevealAnimator;
    invoke-interface {v0}, Lcom/vkcoffee/android/ui/animation/RevealAnimator;->onRevealAnimationCancel()V

    .line 89
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 98
    iget-object v1, p0, Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealFinishedGingerbread;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/animation/RevealAnimator;

    .line 99
    .local v0, "target":Lcom/vkcoffee/android/ui/animation/RevealAnimator;
    invoke-interface {v0}, Lcom/vkcoffee/android/ui/animation/RevealAnimator;->onRevealAnimationEnd()V

    .line 100
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 94
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 81
    iget-object v1, p0, Lcom/vkcoffee/android/ui/animation/RevealAnimator$RevealFinishedGingerbread;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/animation/RevealAnimator;

    .line 82
    .local v0, "target":Lcom/vkcoffee/android/ui/animation/RevealAnimator;
    invoke-interface {v0}, Lcom/vkcoffee/android/ui/animation/RevealAnimator;->onRevealAnimationStart()V

    .line 83
    return-void
.end method
