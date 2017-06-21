.class Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$5;
.super Ljava/lang/Object;
.source "SwipeRefreshLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->finishSpinner(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    .prologue
    .line 959
    iput-object p1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$5;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 967
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$5;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->access$600(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 968
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$5;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->access$1100(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;Landroid/view/animation/Animation$AnimationListener;)V

    .line 970
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 974
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 963
    return-void
.end method
