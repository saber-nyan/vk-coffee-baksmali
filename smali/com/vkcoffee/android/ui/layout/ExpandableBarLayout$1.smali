.class Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout$1;
.super Ljava/lang/Object;
.source "ExpandableBarLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->openPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout$1;->this$0:Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 197
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 192
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 202
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout$1;->this$0:Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->access$002(Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;Z)Z

    .line 183
    iget-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout$1;->this$0:Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->access$100(Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout$1;->this$0:Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->access$200(Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;)Lcom/vkcoffee/android/functions/VoidFBool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout$1;->this$0:Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->access$200(Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;)Lcom/vkcoffee/android/functions/VoidFBool;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout$1;->this$0:Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->access$000(Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/functions/VoidFBool;->f(Z)V

    .line 187
    :cond_0
    return-void
.end method
