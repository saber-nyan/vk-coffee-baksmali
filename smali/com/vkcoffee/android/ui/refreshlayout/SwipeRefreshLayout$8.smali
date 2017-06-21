.class Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$8;
.super Landroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
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
    .line 1144
    iput-object p1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$8;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 1147
    iget-object v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$8;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->access$1500(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;)F

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$8;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->access$1500(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;)F

    move-result v2

    neg-float v2, v2

    mul-float/2addr v2, p1

    add-float v0, v1, v2

    .line 1148
    .local v0, "targetScale":F
    iget-object v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$8;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    invoke-static {v1, v0}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->access$700(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;F)V

    .line 1149
    iget-object v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$8;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    invoke-static {v1, p1}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->access$1400(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;F)V

    .line 1150
    return-void
.end method
