.class Lme/grishka/appkit/imageloader/RecyclerViewDelegate$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "RecyclerViewDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/grishka/appkit/imageloader/RecyclerViewDelegate;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/grishka/appkit/imageloader/RecyclerViewDelegate;

.field final synthetic val$listener:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method constructor <init>(Lme/grishka/appkit/imageloader/RecyclerViewDelegate;Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "this$0"    # Lme/grishka/appkit/imageloader/RecyclerViewDelegate;

    .prologue
    .line 71
    iput-object p1, p0, Lme/grishka/appkit/imageloader/RecyclerViewDelegate$1;->this$0:Lme/grishka/appkit/imageloader/RecyclerViewDelegate;

    iput-object p2, p0, Lme/grishka/appkit/imageloader/RecyclerViewDelegate$1;->val$listener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 74
    const/4 v0, -0x1

    .line 75
    .local v0, "listViewState":I
    packed-switch p2, :pswitch_data_0

    .line 86
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 87
    iget-object v1, p0, Lme/grishka/appkit/imageloader/RecyclerViewDelegate$1;->val$listener:Landroid/widget/AbsListView$OnScrollListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 89
    :cond_0
    return-void

    .line 77
    :pswitch_0
    const/4 v0, 0x1

    .line 78
    goto :goto_0

    .line 80
    :pswitch_1
    const/4 v0, 0x2

    .line 81
    goto :goto_0

    .line 83
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 5
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lme/grishka/appkit/imageloader/RecyclerViewDelegate$1;->val$listener:Landroid/widget/AbsListView$OnScrollListener;

    const/4 v1, 0x0

    iget-object v2, p0, Lme/grishka/appkit/imageloader/RecyclerViewDelegate$1;->this$0:Lme/grishka/appkit/imageloader/RecyclerViewDelegate;

    invoke-virtual {v2}, Lme/grishka/appkit/imageloader/RecyclerViewDelegate;->getFirstVisiblePosition()I

    move-result v2

    iget-object v3, p0, Lme/grishka/appkit/imageloader/RecyclerViewDelegate$1;->this$0:Lme/grishka/appkit/imageloader/RecyclerViewDelegate;

    invoke-virtual {v3}, Lme/grishka/appkit/imageloader/RecyclerViewDelegate;->getVisibleItemCount()I

    move-result v3

    iget-object v4, p0, Lme/grishka/appkit/imageloader/RecyclerViewDelegate$1;->this$0:Lme/grishka/appkit/imageloader/RecyclerViewDelegate;

    invoke-static {v4}, Lme/grishka/appkit/imageloader/RecyclerViewDelegate;->access$000(Lme/grishka/appkit/imageloader/RecyclerViewDelegate;)I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 94
    return-void
.end method
