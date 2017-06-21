.class Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$6;
.super Landroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;
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
    .line 1099
    iput-object p1, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$6;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 1102
    const/4 v2, 0x0

    .line 1103
    .local v2, "targetTop":I
    const/4 v0, 0x0

    .line 1104
    .local v0, "endTarget":I
    iget-object v3, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$6;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->access$1200(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1107
    iget-object v3, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$6;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->isReversed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1108
    iget-object v3, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$6;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$6;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->access$1300(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;)F

    move-result v4

    float-to-int v4, v4

    sub-int v0, v3, v4

    .line 1115
    :goto_0
    iget-object v3, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$6;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    iget v3, v3, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mFrom:I

    iget-object v4, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$6;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    iget v4, v4, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->mFrom:I

    sub-int v4, v0, v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    add-int v2, v3, v4

    .line 1116
    iget-object v3, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$6;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->access$400(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;)Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/refreshlayout/CircleImageView;->getTop()I

    move-result v3

    sub-int v1, v2, v3

    .line 1117
    .local v1, "offset":I
    iget-object v3, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$6;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->access$1000(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;IZ)V

    .line 1118
    iget-object v3, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$6;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->access$100(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;)Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, p1

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;->setArrowScale(F)V

    .line 1119
    return-void

    .line 1110
    .end local v1    # "offset":I
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$6;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->access$1300(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;)F

    move-result v3

    iget-object v4, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$6;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->access$800(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v0, v3

    goto :goto_0

    .line 1113
    :cond_1
    iget-object v3, p0, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout$6;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;->access$1300(Lcom/vkcoffee/android/ui/refreshlayout/SwipeRefreshLayout;)F

    move-result v3

    float-to-int v0, v3

    goto :goto_0
.end method
