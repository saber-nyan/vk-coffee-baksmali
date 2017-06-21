.class final Lme/grishka/appkit/utils/V$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "V.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V
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
    .line 64
    iput-object p1, p0, Lme/grishka/appkit/utils/V$1;->val$view:Landroid/view/View;

    iput p2, p0, Lme/grishka/appkit/utils/V$1;->val$visibility:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 75
    iget-object v0, p0, Lme/grishka/appkit/utils/V$1;->val$view:Landroid/view/View;

    iget v1, p0, Lme/grishka/appkit/utils/V$1;->val$visibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 70
    iget-object v0, p0, Lme/grishka/appkit/utils/V$1;->val$view:Landroid/view/View;

    iget v1, p0, Lme/grishka/appkit/utils/V$1;->val$visibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    invoke-static {}, Lme/grishka/appkit/utils/V;->access$000()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lme/grishka/appkit/utils/V$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 66
    iget-object v0, p0, Lme/grishka/appkit/utils/V$1;->val$view:Landroid/view/View;

    iget v1, p0, Lme/grishka/appkit/utils/V$1;->val$visibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    return-void
.end method
