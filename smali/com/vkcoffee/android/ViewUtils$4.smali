.class final Lcom/vkcoffee/android/ViewUtils$4;
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
.field canceled:Z

.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 575
    iput-object p1, p0, Lcom/vkcoffee/android/ViewUtils$4;->val$view:Landroid/view/View;

    iput p2, p0, Lcom/vkcoffee/android/ViewUtils$4;->val$visibility:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 576
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ViewUtils$4;->canceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 595
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ViewUtils$4;->canceled:Z

    .line 596
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/vkcoffee/android/ViewUtils$4;->val$view:Landroid/view/View;

    const v1, 0x7f10006a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 585
    invoke-static {}, Lcom/vkcoffee/android/ViewUtils;->access$000()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/ViewUtils$4;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    iget-boolean v0, p0, Lcom/vkcoffee/android/ViewUtils$4;->canceled:Z

    if-eqz v0, :cond_0

    .line 591
    :goto_0
    return-void

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ViewUtils$4;->val$view:Landroid/view/View;

    iget v1, p0, Lcom/vkcoffee/android/ViewUtils$4;->val$visibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 590
    iget-object v0, p0, Lcom/vkcoffee/android/ViewUtils$4;->val$view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 580
    return-void
.end method
