.class Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;
.super Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;
.source "SlidingUpPanelLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragHelperCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)V
    .locals 0

    .prologue
    .line 920
    iput-object p1, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-direct {p0}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;
    .param p2, "x1"    # Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$1;

    .prologue
    .line 920
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;-><init>(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)V

    return-void
.end method


# virtual methods
.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .prologue
    .line 1012
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$1100(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;F)I

    move-result v0

    .line 1013
    .local v0, "collapsedTop":I
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$1100(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;F)I

    move-result v1

    .line 1014
    .local v1, "expandedTop":I
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$900(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1015
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1017
    :goto_0
    return v2

    :cond_0
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$1200(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)I

    move-result v0

    return v0
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 1
    .param p1, "capturedChild"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    .prologue
    .line 962
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->setAllChildrenVisible()V

    .line 963
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x0

    .line 933
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$300(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->getViewDragState()I

    move-result v0

    if-nez v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$200(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$500(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;I)F

    move-result v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$402(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;F)F

    .line 935
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$600(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)V

    .line 937
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$400(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 938
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$700(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    move-result-object v0

    sget-object v1, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;->EXPANDED:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    if-eq v0, v1, :cond_0

    .line 939
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->updateObscuredViewVisibility()V

    .line 940
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    sget-object v1, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;->EXPANDED:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$702(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;)Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    .line 941
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$200(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->dispatchOnPanelExpanded(Landroid/view/View;)V

    .line 958
    :cond_0
    :goto_0
    return-void

    .line 943
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$400(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 944
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$700(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    move-result-object v0

    sget-object v1, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;->COLLAPSED:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    if-eq v0, v1, :cond_0

    .line 945
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    sget-object v1, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;->COLLAPSED:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$702(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;)Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    .line 946
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$200(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->dispatchOnPanelCollapsed(Landroid/view/View;)V

    goto :goto_0

    .line 948
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$400(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    .line 949
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    sget-object v1, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;->HIDDEN:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$702(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;)Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    .line 950
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$200(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 951
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$200(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->dispatchOnPanelHidden(Landroid/view/View;)V

    goto :goto_0

    .line 952
    :cond_3
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$700(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    move-result-object v0

    sget-object v1, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;->ANCHORED:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    if-eq v0, v1, :cond_0

    .line 953
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->updateObscuredViewVisibility()V

    .line 954
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    sget-object v1, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;->ANCHORED:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$702(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;)Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    .line 955
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$200(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->dispatchOnPanelAnchored(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .prologue
    .line 967
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-static {v0, p3}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$800(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;I)V

    .line 968
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->invalidate()V

    .line 969
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 7
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 973
    const/4 v1, 0x0

    .line 976
    .local v1, "target":I
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$900(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)Z

    move-result v2

    if-eqz v2, :cond_0

    neg-float v0, p3

    .line 978
    .local v0, "direction":F
    :goto_0
    cmpl-float v2, v0, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$400(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)F

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$1000(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 980
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$1000(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)F

    move-result v3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$1100(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;F)I

    move-result v1

    .line 1001
    :goto_1
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$300(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 1002
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->invalidate()V

    .line 1003
    return-void

    .end local v0    # "direction":F
    :cond_0
    move v0, p3

    .line 976
    goto :goto_0

    .line 981
    .restart local v0    # "direction":F
    :cond_1
    cmpl-float v2, v0, v4

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$400(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)F

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$1000(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 983
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-static {v2, v5}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$1100(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;F)I

    move-result v1

    goto :goto_1

    .line 984
    :cond_2
    cmpg-float v2, v0, v4

    if-gez v2, :cond_3

    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$400(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)F

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$1000(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    .line 986
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$1000(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)F

    move-result v3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$1100(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;F)I

    move-result v1

    goto :goto_1

    .line 987
    :cond_3
    cmpg-float v2, v0, v4

    if-gez v2, :cond_4

    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$400(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)F

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$1000(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 989
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-static {v2, v4}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$1100(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;F)I

    move-result v1

    goto :goto_1

    .line 990
    :cond_4
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$400(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)F

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$1000(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)F

    move-result v3

    add-float/2addr v3, v5

    div-float/2addr v3, v6

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_5

    .line 992
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-static {v2, v5}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$1100(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;F)I

    move-result v1

    goto/16 :goto_1

    .line 993
    :cond_5
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$400(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)F

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$1000(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)F

    move-result v3

    div-float/2addr v3, v6

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_6

    .line 995
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$1000(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)F

    move-result v3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$1100(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;F)I

    move-result v1

    goto/16 :goto_1

    .line 998
    :cond_6
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-static {v2, v4}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$1100(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;F)I

    move-result v1

    goto/16 :goto_1
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    const/4 v0, 0x0

    .line 924
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$100(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 928
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;->access$200(Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
