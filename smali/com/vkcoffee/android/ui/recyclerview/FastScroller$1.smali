.class Lcom/vkcoffee/android/ui/recyclerview/FastScroller$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/recyclerview/FastScroller;
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
    .line 46
    iput-object p1, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller$1;->this$0:Lcom/vkcoffee/android/ui/recyclerview/FastScroller;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 8
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 50
    iget-object v6, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller$1;->this$0:Lcom/vkcoffee/android/ui/recyclerview/FastScroller;

    invoke-static {v6}, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->access$000(Lcom/vkcoffee/android/ui/recyclerview/FastScroller;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller$1;->this$0:Lcom/vkcoffee/android/ui/recyclerview/FastScroller;

    invoke-virtual {v6}, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->getHeight()I

    move-result v6

    if-lez v6, :cond_0

    .line 51
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    .line 52
    .local v1, "itemCount":I
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v5

    .line 53
    .local v5, "visibleRange":I
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 55
    .local v0, "firstVisiblePosition":I
    add-int v2, v0, v5

    .line 57
    .local v2, "lastVisiblePosition":I
    if-nez v0, :cond_1

    .line 58
    const/4 v3, 0x0

    .line 64
    .local v3, "position":I
    :goto_0
    int-to-float v6, v3

    int-to-float v7, v1

    div-float v4, v6, v7

    .line 65
    .local v4, "proportion":F
    iget-object v6, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller$1;->this$0:Lcom/vkcoffee/android/ui/recyclerview/FastScroller;

    iget-object v7, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller$1;->this$0:Lcom/vkcoffee/android/ui/recyclerview/FastScroller;

    invoke-virtual {v7}, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    invoke-static {v6, v7}, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->access$100(Lcom/vkcoffee/android/ui/recyclerview/FastScroller;F)V

    .line 67
    .end local v0    # "firstVisiblePosition":I
    .end local v1    # "itemCount":I
    .end local v2    # "lastVisiblePosition":I
    .end local v3    # "position":I
    .end local v4    # "proportion":F
    .end local v5    # "visibleRange":I
    :cond_0
    return-void

    .line 59
    .restart local v0    # "firstVisiblePosition":I
    .restart local v1    # "itemCount":I
    .restart local v2    # "lastVisiblePosition":I
    .restart local v5    # "visibleRange":I
    :cond_1
    if-lt v2, v1, :cond_2

    .line 60
    move v3, v1

    .restart local v3    # "position":I
    goto :goto_0

    .line 62
    .end local v3    # "position":I
    :cond_2
    move v3, v0

    .restart local v3    # "position":I
    goto :goto_0
.end method
