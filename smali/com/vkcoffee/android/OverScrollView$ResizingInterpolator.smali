.class Lcom/vkcoffee/android/OverScrollView$ResizingInterpolator;
.super Landroid/view/animation/DecelerateInterpolator;
.source "OverScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/OverScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResizingInterpolator"
.end annotation


# instance fields
.field public ch:I

.field final synthetic this$0:Lcom/vkcoffee/android/OverScrollView;

.field public viewID:I


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/OverScrollView;)V
    .locals 1

    .prologue
    .line 217
    iput-object p1, p0, Lcom/vkcoffee/android/OverScrollView$ResizingInterpolator;->this$0:Lcom/vkcoffee/android/OverScrollView;

    .line 218
    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {p0, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 222
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/OverScrollView$ResizingInterpolator;->ch:I

    .line 219
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6
    .param p1, "input"    # F

    .prologue
    .line 225
    invoke-super {p0, p1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    .line 226
    .local v0, "f":F
    iget-object v1, p0, Lcom/vkcoffee/android/OverScrollView$ResizingInterpolator;->this$0:Lcom/vkcoffee/android/OverScrollView;

    iget v2, p0, Lcom/vkcoffee/android/OverScrollView$ResizingInterpolator;->viewID:I

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/OverScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/vkcoffee/android/OverScrollView$ResizingInterpolator;->this$0:Lcom/vkcoffee/android/OverScrollView;

    iget v4, v4, Lcom/vkcoffee/android/OverScrollView;->vH:F

    iget v5, p0, Lcom/vkcoffee/android/OverScrollView$ResizingInterpolator;->ch:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v0

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/vkcoffee/android/OverScrollView$ResizingInterpolator;->ch:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    return v0
.end method
