.class Lcom/vkcoffee/android/ui/FixedScrollListView$1;
.super Ljava/lang/Object;
.source "FixedScrollListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/FixedScrollListView;->getOnScrollListenerLogic()Landroid/widget/AbsListView$OnScrollListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/FixedScrollListView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/FixedScrollListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/FixedScrollListView;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/vkcoffee/android/ui/FixedScrollListView$1;->this$0:Lcom/vkcoffee/android/ui/FixedScrollListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 73
    iget-object v1, p0, Lcom/vkcoffee/android/ui/FixedScrollListView$1;->this$0:Lcom/vkcoffee/android/ui/FixedScrollListView;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/FixedScrollListView;->access$000(Lcom/vkcoffee/android/ui/FixedScrollListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/vkcoffee/android/ui/FixedScrollListView$1;->this$0:Lcom/vkcoffee/android/ui/FixedScrollListView;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/FixedScrollListView;->access$000(Lcom/vkcoffee/android/ui/FixedScrollListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/FixedScrollListView$1;->this$0:Lcom/vkcoffee/android/ui/FixedScrollListView;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/FixedScrollListView;->access$100(Lcom/vkcoffee/android/ui/FixedScrollListView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$OnScrollListener;

    .line 77
    .local v0, "listener":Landroid/widget/AbsListView$OnScrollListener;
    if-eqz v0, :cond_1

    .line 78
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    goto :goto_0

    .line 81
    .end local v0    # "listener":Landroid/widget/AbsListView$OnScrollListener;
    :cond_2
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 61
    iget-object v1, p0, Lcom/vkcoffee/android/ui/FixedScrollListView$1;->this$0:Lcom/vkcoffee/android/ui/FixedScrollListView;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/FixedScrollListView;->access$000(Lcom/vkcoffee/android/ui/FixedScrollListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/vkcoffee/android/ui/FixedScrollListView$1;->this$0:Lcom/vkcoffee/android/ui/FixedScrollListView;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/FixedScrollListView;->access$000(Lcom/vkcoffee/android/ui/FixedScrollListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/FixedScrollListView$1;->this$0:Lcom/vkcoffee/android/ui/FixedScrollListView;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/FixedScrollListView;->access$100(Lcom/vkcoffee/android/ui/FixedScrollListView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$OnScrollListener;

    .line 65
    .local v0, "listener":Landroid/widget/AbsListView$OnScrollListener;
    if-eqz v0, :cond_1

    .line 66
    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    goto :goto_0

    .line 69
    .end local v0    # "listener":Landroid/widget/AbsListView$OnScrollListener;
    :cond_2
    return-void
.end method
