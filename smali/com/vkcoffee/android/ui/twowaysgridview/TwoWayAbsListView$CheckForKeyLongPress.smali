.class Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForKeyLongPress;
.super Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$WindowRunnnable;
.source "TwoWayAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForKeyLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)V
    .locals 1

    .prologue
    .line 1931
    iput-object p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForKeyLongPress;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$WindowRunnnable;-><init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;
    .param p2, "x1"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$1;

    .prologue
    .line 1931
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForKeyLongPress;-><init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1933
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForKeyLongPress;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForKeyLongPress;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget v3, v3, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectedPosition:I

    if-ltz v3, :cond_1

    .line 1934
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForKeyLongPress;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget v3, v3, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectedPosition:I

    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForKeyLongPress;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget v4, v4, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mFirstPosition:I

    sub-int v1, v3, v4

    .line 1935
    .local v1, "index":I
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForKeyLongPress;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v3, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1937
    .local v2, "v":Landroid/view/View;
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForKeyLongPress;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget-boolean v3, v3, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mDataChanged:Z

    if-nez v3, :cond_2

    .line 1938
    const/4 v0, 0x0

    .line 1939
    .local v0, "handled":Z
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForKeyLongPress;->sameWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1940
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForKeyLongPress;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForKeyLongPress;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget v4, v4, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectedPosition:I

    iget-object v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForKeyLongPress;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    iget-wide v6, v5, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->mSelectedRowId:J

    invoke-static {v3, v2, v4, v6, v7}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->access$500(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;Landroid/view/View;IJ)Z

    move-result v0

    .line 1942
    :cond_0
    if-eqz v0, :cond_1

    .line 1943
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForKeyLongPress;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v3, v8}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setPressed(Z)V

    .line 1944
    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    .line 1953
    .end local v0    # "handled":Z
    .end local v1    # "index":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 1947
    .restart local v1    # "index":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$CheckForKeyLongPress;->this$0:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;

    invoke-virtual {v3, v8}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->setPressed(Z)V

    .line 1948
    if-eqz v2, :cond_1

    .line 1949
    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method
