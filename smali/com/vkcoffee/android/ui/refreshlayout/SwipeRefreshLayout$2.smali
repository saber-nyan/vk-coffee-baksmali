.class Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$2;
.super Landroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V
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
    .line 397
    iput-object p1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$2;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 400
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$2;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->access$700(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;F)V

    .line 401
    return-void
.end method
