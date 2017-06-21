.class Lcom/vkcoffee/android/ui/recyclerview/FastScroller$2;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->showPopup()V
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
    .line 213
    iput-object p1, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller$2;->this$0:Lcom/vkcoffee/android/ui/recyclerview/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 227
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 222
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 232
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller$2;->this$0:Lcom/vkcoffee/android/ui/recyclerview/FastScroller;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->access$200(Lcom/vkcoffee/android/ui/recyclerview/FastScroller;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    return-void
.end method
