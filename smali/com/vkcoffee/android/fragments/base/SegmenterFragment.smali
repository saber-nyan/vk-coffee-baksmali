.class public abstract Lcom/vkcoffee/android/fragments/base/SegmenterFragment;
.super Lcom/vkcoffee/android/fragments/VKRecyclerFragment;
.source "SegmenterFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/base/SegmenterFragment$FooterHolder;,
        Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/vkcoffee/android/fragments/VKRecyclerFragment",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/fragments/base/SegmenterFragment",
            "<TT;>.GridAdapter<TT;*>;"
        }
    .end annotation
.end field

.field private mCardDecoration:Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;

.field protected margin:I

.field protected padding:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/SegmenterFragment;, "Lcom/vkcoffee/android/fragments/base/SegmenterFragment<TT;>;"
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;-><init>(I)V

    .line 40
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "perPage"    # I

    .prologue
    .line 43
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/SegmenterFragment;, "Lcom/vkcoffee/android/fragments/base/SegmenterFragment<TT;>;"
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;-><init>(I)V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/base/SegmenterFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/base/SegmenterFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/base/SegmenterFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/base/SegmenterFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/base/SegmenterFragment;)Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/base/SegmenterFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->mCardDecoration:Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;

    return-object v0
.end method


# virtual methods
.method protected abstract createAdapter()Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vkcoffee/android/fragments/base/SegmenterFragment",
            "<TT;>.GridAdapter<TT;*>;"
        }
    .end annotation
.end method

.method protected bridge synthetic getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/SegmenterFragment;, "Lcom/vkcoffee/android/fragments/base/SegmenterFragment<TT;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->getAdapter()Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getAdapter()Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vkcoffee/android/fragments/base/SegmenterFragment",
            "<TT;>.GridAdapter<TT;*>;"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/SegmenterFragment;, "Lcom/vkcoffee/android/fragments/base/SegmenterFragment<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->mAdapter:Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;

    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->createAdapter()Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->mAdapter:Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->mAdapter:Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;

    return-object v0
.end method

.method protected abstract getColumnsCount()I
.end method

.method protected abstract getSegmenter()Lcom/vkcoffee/android/ui/util/Segmenter;
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/SegmenterFragment;, "Lcom/vkcoffee/android/fragments/base/SegmenterFragment<TT;>;"
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->updateDecorator()V

    .line 50
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 60
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/SegmenterFragment;, "Lcom/vkcoffee/android/fragments/base/SegmenterFragment<TT;>;"
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 61
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->updateDecorator()V

    .line 62
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->getAdapter()Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->notifyDataSetChanged()V

    .line 63
    return-void
.end method

.method protected onCreateCardDecorator()Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    .locals 6

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/SegmenterFragment;, "Lcom/vkcoffee/android/fragments/base/SegmenterFragment<TT;>;"
    const/high16 v5, 0x41000000    # 8.0f

    const/4 v3, 0x0

    .line 102
    new-instance v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;

    const/4 v4, 0x0

    iget-boolean v2, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->isTablet:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-direct {v0, v4, v2}, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;-><init>(Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration$Provider;Z)V

    .line 104
    .local v0, "decorator":Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    iget v2, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->scrW:I

    const/16 v4, 0x258

    if-lt v2, v4, :cond_2

    .line 105
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->padding:I

    .line 106
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    .line 115
    .local v1, "paddingTop":I
    :goto_1
    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 116
    iget v2, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->scrW:I

    const/16 v4, 0x39c

    if-lt v2, v4, :cond_0

    const/16 v2, 0x10

    iget v3, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->scrW:I

    add-int/lit16 v3, v3, -0x348

    add-int/lit8 v3, v3, -0x54

    div-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    :cond_0
    iput v3, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->margin:I

    .line 117
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    iget v3, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->margin:I

    iget v4, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->padding:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->margin:I

    iget v5, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->padding:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->padding:I

    invoke-virtual {v2, v3, v1, v4, v5}, Lme/grishka/appkit/views/UsableRecyclerView;->setPadding(IIII)V

    .line 118
    iget v2, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->padding:I

    iget v3, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->padding:I

    iget v4, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->padding:I

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->setPadding(IIII)Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;

    .line 119
    return-object v0

    .end local v0    # "decorator":Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    .end local v1    # "paddingTop":I
    :cond_1
    move v2, v3

    .line 102
    goto :goto_0

    .line 107
    .restart local v0    # "decorator":Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    :cond_2
    iget v2, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->scrW:I

    const/16 v4, 0x1e0

    if-lt v2, v4, :cond_3

    .line 108
    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->padding:I

    .line 109
    const/4 v1, 0x0

    .restart local v1    # "paddingTop":I
    goto :goto_1

    .line 111
    .end local v1    # "paddingTop":I
    :cond_3
    iput v3, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->padding:I

    .line 112
    const/4 v1, 0x0

    .restart local v1    # "paddingTop":I
    goto :goto_1
.end method

.method protected final onCreateFooterView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 73
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/SegmenterFragment;, "Lcom/vkcoffee/android/fragments/base/SegmenterFragment<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onCreateLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/SegmenterFragment;, "Lcom/vkcoffee/android/fragments/base/SegmenterFragment<TT;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->onCreateLayoutManager()Lcom/tonicartos/superslim/LayoutManager;

    move-result-object v0

    return-object v0
.end method

.method protected final onCreateLayoutManager()Lcom/tonicartos/superslim/LayoutManager;
    .locals 2

    .prologue
    .line 124
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/SegmenterFragment;, "Lcom/vkcoffee/android/fragments/base/SegmenterFragment<TT;>;"
    new-instance v0, Lcom/tonicartos/superslim/LayoutManager;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tonicartos/superslim/LayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final onScrolledToLastItem()V
    .locals 1

    .prologue
    .line 67
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/SegmenterFragment;, "Lcom/vkcoffee/android/fragments/base/SegmenterFragment<TT;>;"
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onScrolledToLastItem()V

    .line 68
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->getSegmenter()Lcom/vkcoffee/android/ui/util/Segmenter;

    move-result-object v0

    invoke-interface {v0}, Lcom/vkcoffee/android/ui/util/Segmenter;->onScrollToLastItem()V

    .line 69
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/SegmenterFragment;, "Lcom/vkcoffee/android/fragments/base/SegmenterFragment<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 55
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->setScrollBarStyle(I)V

    .line 56
    return-void
.end method

.method public updateDecorator()V
    .locals 2

    .prologue
    .line 77
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/SegmenterFragment;, "Lcom/vkcoffee/android/fragments/base/SegmenterFragment<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->mCardDecoration:Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->onCreateCardDecorator()Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->mCardDecoration:Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;

    .line 81
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->mCardDecoration:Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->mCardDecoration:Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 84
    :cond_1
    return-void
.end method

.method public final updateList()V
    .locals 2

    .prologue
    .line 137
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/SegmenterFragment;, "Lcom/vkcoffee/android/fragments/base/SegmenterFragment<TT;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->getAdapter()Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->getSegmenter()Lcom/vkcoffee/android/ui/util/Segmenter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->setData(Lcom/vkcoffee/android/ui/util/Segmenter;)Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;

    .line 138
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->updateList()V

    .line 139
    return-void
.end method
