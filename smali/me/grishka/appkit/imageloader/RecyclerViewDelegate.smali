.class public Lme/grishka/appkit/imageloader/RecyclerViewDelegate;
.super Ljava/lang/Object;
.source "RecyclerViewDelegate.java"

# interfaces
.implements Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;


# instance fields
.field private view:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1, "view"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lme/grishka/appkit/imageloader/RecyclerViewDelegate;->view:Landroid/support/v7/widget/RecyclerView;

    .line 19
    return-void
.end method

.method static synthetic access$000(Lme/grishka/appkit/imageloader/RecyclerViewDelegate;)I
    .locals 1
    .param p0, "x0"    # Lme/grishka/appkit/imageloader/RecyclerViewDelegate;

    .prologue
    .line 13
    invoke-direct {p0}, Lme/grishka/appkit/imageloader/RecyclerViewDelegate;->getCount()I

    move-result v0

    return v0
.end method

.method private getCount()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lme/grishka/appkit/imageloader/RecyclerViewDelegate;->view:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x0

    .line 66
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lme/grishka/appkit/imageloader/RecyclerViewDelegate;->view:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getFirstVisiblePosition()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 28
    iget-object v2, p0, Lme/grishka/appkit/imageloader/RecyclerViewDelegate;->view:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 29
    .local v0, "lm":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v2, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v2, :cond_1

    .line 30
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .end local v0    # "lm":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 36
    :cond_0
    :goto_0
    return v1

    .line 32
    .restart local v0    # "lm":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_1
    iget-object v2, p0, Lme/grishka/appkit/imageloader/RecyclerViewDelegate;->view:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 34
    iget-object v2, p0, Lme/grishka/appkit/imageloader/RecyclerViewDelegate;->view:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    iget-object v2, p0, Lme/grishka/appkit/imageloader/RecyclerViewDelegate;->view:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lme/grishka/appkit/imageloader/RecyclerViewDelegate;->view:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method public getItemView(I)Landroid/view/View;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 59
    iget-object v1, p0, Lme/grishka/appkit/imageloader/RecyclerViewDelegate;->view:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 60
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLastVisiblePosition()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 41
    iget-object v2, p0, Lme/grishka/appkit/imageloader/RecyclerViewDelegate;->view:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 42
    .local v0, "lm":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v2, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v2, :cond_1

    .line 43
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .end local v0    # "lm":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 49
    :cond_0
    :goto_0
    return v1

    .line 45
    .restart local v0    # "lm":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_1
    iget-object v2, p0, Lme/grishka/appkit/imageloader/RecyclerViewDelegate;->view:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 47
    iget-object v2, p0, Lme/grishka/appkit/imageloader/RecyclerViewDelegate;->view:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    iget-object v1, p0, Lme/grishka/appkit/imageloader/RecyclerViewDelegate;->view:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lme/grishka/appkit/imageloader/RecyclerViewDelegate;->view:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lme/grishka/appkit/imageloader/RecyclerViewDelegate;->view:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lme/grishka/appkit/imageloader/RecyclerViewDelegate;->view:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public getVisibleItemCount()I
    .locals 2

    .prologue
    .line 23
    invoke-virtual {p0}, Lme/grishka/appkit/imageloader/RecyclerViewDelegate;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lme/grishka/appkit/imageloader/RecyclerViewDelegate;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public isVertical()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 71
    iget-object v0, p0, Lme/grishka/appkit/imageloader/RecyclerViewDelegate;->view:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lme/grishka/appkit/imageloader/RecyclerViewDelegate$1;

    invoke-direct {v1, p0, p1}, Lme/grishka/appkit/imageloader/RecyclerViewDelegate$1;-><init>(Lme/grishka/appkit/imageloader/RecyclerViewDelegate;Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 96
    return-void
.end method
