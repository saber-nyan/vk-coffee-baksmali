.class Lcom/vkcoffee/android/ui/recyclerview/FastScroller$3;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->hidePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/recyclerview/FastScroller;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/recyclerview/FastScroller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/recyclerview/FastScroller;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller$3;->this$0:Lcom/vkcoffee/android/ui/recyclerview/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller$3;->this$0:Lcom/vkcoffee/android/ui/recyclerview/FastScroller;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->access$200(Lcom/vkcoffee/android/ui/recyclerview/FastScroller;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller$3;->this$0:Lcom/vkcoffee/android/ui/recyclerview/FastScroller;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->access$200(Lcom/vkcoffee/android/ui/recyclerview/FastScroller;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 264
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 249
    return-void
.end method
