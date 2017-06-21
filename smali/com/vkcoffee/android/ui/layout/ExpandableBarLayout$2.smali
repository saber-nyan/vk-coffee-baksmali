.class Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout$2;
.super Ljava/lang/Object;
.source "ExpandableBarLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->closePanel()V
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
    .line 222
    iput-object p1, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout$2;->this$0:Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout$2;->this$0:Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->access$002(Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;Z)Z

    .line 240
    iget-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout$2;->this$0:Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->access$100(Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout$2;->this$0:Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->access$200(Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;)Lcom/vkcoffee/android/functions/VoidFBool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout$2;->this$0:Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->access$200(Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;)Lcom/vkcoffee/android/functions/VoidFBool;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout$2;->this$0:Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->access$000(Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/functions/VoidFBool;->f(Z)V

    .line 244
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout$2;->this$0:Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->access$002(Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;Z)Z

    .line 231
    iget-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout$2;->this$0:Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->access$100(Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout$2;->this$0:Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->access$200(Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;)Lcom/vkcoffee/android/functions/VoidFBool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout$2;->this$0:Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->access$200(Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;)Lcom/vkcoffee/android/functions/VoidFBool;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout$2;->this$0:Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->access$000(Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/functions/VoidFBool;->f(Z)V

    .line 235
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 249
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 226
    return-void
.end method
