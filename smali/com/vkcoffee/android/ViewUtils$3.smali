.class final Lcom/vkcoffee/android/ViewUtils$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 553
    iput-object p1, p0, Lcom/vkcoffee/android/ViewUtils$3;->val$view:Landroid/view/View;

    iput p2, p0, Lcom/vkcoffee/android/ViewUtils$3;->val$visibility:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 566
    iget-object v0, p0, Lcom/vkcoffee/android/ViewUtils$3;->val$view:Landroid/view/View;

    iget v1, p0, Lcom/vkcoffee/android/ViewUtils$3;->val$visibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 568
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 560
    iget-object v0, p0, Lcom/vkcoffee/android/ViewUtils$3;->val$view:Landroid/view/View;

    iget v1, p0, Lcom/vkcoffee/android/ViewUtils$3;->val$visibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 562
    invoke-static {}, Lcom/vkcoffee/android/ViewUtils;->access$000()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/ViewUtils$3;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 555
    iget-object v0, p0, Lcom/vkcoffee/android/ViewUtils$3;->val$view:Landroid/view/View;

    iget v1, p0, Lcom/vkcoffee/android/ViewUtils$3;->val$visibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 557
    return-void
.end method
