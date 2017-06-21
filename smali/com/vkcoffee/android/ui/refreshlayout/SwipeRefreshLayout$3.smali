.class Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$3;
.super Landroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V
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
    .line 439
    iput-object p1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$3;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 442
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$3;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->access$700(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;F)V

    .line 443
    return-void
.end method
