.class public abstract Lcom/vkcoffee/android/fragments/base/GridFragment;
.super Lcom/vkcoffee/android/fragments/VKRecyclerFragment;
.source "GridFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;
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
.field private mAdapter:Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/fragments/base/GridFragment",
            "<TT;>.GridAdapter<*>;"
        }
    .end annotation
.end field

.field private mCardDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

.field private mSpanSizeLoockuper:Lcom/vkcoffee/android/functions/IntFIntInt;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "perPage"    # I

    .prologue
    .line 33
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/GridFragment;, "Lcom/vkcoffee/android/fragments/base/GridFragment<TT;>;"
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;-><init>(I)V

    .line 34
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "layoutId"    # I
    .param p2, "perPage"    # I

    .prologue
    .line 37
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/GridFragment;, "Lcom/vkcoffee/android/fragments/base/GridFragment<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;-><init>(II)V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/base/GridFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/base/GridFragment;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/GridFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/base/GridFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/base/GridFragment;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/GridFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/base/GridFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/base/GridFragment;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/GridFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/base/GridFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/base/GridFragment;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/GridFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/base/GridFragment;)Lcom/vkcoffee/android/functions/IntFIntInt;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/base/GridFragment;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/GridFragment;->mSpanSizeLoockuper:Lcom/vkcoffee/android/functions/IntFIntInt;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/base/GridFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/base/GridFragment;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/GridFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/fragments/base/GridFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/base/GridFragment;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/GridFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/fragments/base/GridFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/base/GridFragment;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/GridFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method protected abstract createAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vkcoffee/android/fragments/base/GridFragment",
            "<TT;>.GridAdapter<*>;"
        }
    .end annotation
.end method

.method protected bridge synthetic getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 21
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/GridFragment;, "Lcom/vkcoffee/android/fragments/base/GridFragment<TT;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/base/GridFragment;->getAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vkcoffee/android/fragments/base/GridFragment",
            "<TT;>.GridAdapter<*>;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/GridFragment;, "Lcom/vkcoffee/android/fragments/base/GridFragment<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/GridFragment;->mAdapter:Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/base/GridFragment;->createAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/base/GridFragment;->mAdapter:Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/GridFragment;->mAdapter:Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    return-object v0
.end method

.method protected abstract getColumnsCount()I
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/GridFragment;, "Lcom/vkcoffee/android/fragments/base/GridFragment<TT;>;"
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/base/GridFragment;->updateDecorator()V

    .line 44
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 55
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/GridFragment;, "Lcom/vkcoffee/android/fragments/base/GridFragment<TT;>;"
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 56
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/base/GridFragment;->updateDecorator()V

    .line 57
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/base/GridFragment;->updateLayoutManager()V

    .line 58
    return-void
.end method

.method protected onCreateCardDecorator()Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    .locals 8

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/GridFragment;, "Lcom/vkcoffee/android/fragments/base/GridFragment<TT;>;"
    const/4 v5, 0x0

    const/high16 v7, 0x41000000    # 8.0f

    .line 86
    new-instance v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;

    const/4 v6, 0x0

    iget-boolean v4, p0, Lcom/vkcoffee/android/fragments/base/GridFragment;->isTablet:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-direct {v0, v6, v4}, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;-><init>(Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration$Provider;Z)V

    .line 88
    .local v0, "decorator":Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    iget v4, p0, Lcom/vkcoffee/android/fragments/base/GridFragment;->scrW:I

    const/16 v6, 0x258

    if-lt v4, v6, :cond_1

    .line 89
    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    .line 96
    .local v2, "padding":I
    :goto_1
    invoke-static {v7}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    add-int v3, v4, v2

    .line 97
    .local v3, "paddingTop":I
    iget v4, p0, Lcom/vkcoffee/android/fragments/base/GridFragment;->scrW:I

    const/16 v6, 0x39c

    if-lt v4, v6, :cond_3

    const/16 v4, 0x10

    iget v5, p0, Lcom/vkcoffee/android/fragments/base/GridFragment;->scrW:I

    add-int/lit16 v5, v5, -0x348

    add-int/lit8 v5, v5, -0x54

    div-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    .line 98
    .local v1, "margin":I
    :goto_2
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/base/GridFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    add-int v5, v1, v2

    add-int v6, v1, v2

    invoke-virtual {v4, v5, v3, v6, v2}, Lme/grishka/appkit/views/UsableRecyclerView;->setPadding(IIII)V

    .line 99
    invoke-virtual {v0, v2, v3, v2, v2}, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->setPadding(IIII)Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;

    .line 100
    return-object v0

    .end local v0    # "decorator":Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    .end local v1    # "margin":I
    .end local v2    # "padding":I
    .end local v3    # "paddingTop":I
    :cond_0
    move v4, v5

    .line 86
    goto :goto_0

    .line 90
    .restart local v0    # "decorator":Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    :cond_1
    iget v4, p0, Lcom/vkcoffee/android/fragments/base/GridFragment;->scrW:I

    const/16 v6, 0x1e0

    if-lt v4, v6, :cond_2

    .line 91
    invoke-static {v7}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    .restart local v2    # "padding":I
    goto :goto_1

    .line 93
    .end local v2    # "padding":I
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "padding":I
    goto :goto_1

    .restart local v3    # "paddingTop":I
    :cond_3
    move v1, v5

    .line 97
    goto :goto_2
.end method

.method protected final onCreateLayoutManager()Landroid/support/v7/widget/GridLayoutManager;
    .locals 3

    .prologue
    .line 105
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/GridFragment;, "Lcom/vkcoffee/android/fragments/base/GridFragment<TT;>;"
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/base/GridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 106
    .local v0, "manager":Landroid/support/v7/widget/GridLayoutManager;
    new-instance v1, Lcom/vkcoffee/android/fragments/base/GridFragment$2;

    invoke-direct {v1, p0, v0}, Lcom/vkcoffee/android/fragments/base/GridFragment$2;-><init>(Lcom/vkcoffee/android/fragments/base/GridFragment;Landroid/support/v7/widget/GridLayoutManager;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 112
    return-object v0
.end method

.method protected bridge synthetic onCreateLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 1

    .prologue
    .line 21
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/GridFragment;, "Lcom/vkcoffee/android/fragments/base/GridFragment<TT;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onCreateLayoutManager()Landroid/support/v7/widget/GridLayoutManager;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/GridFragment;, "Lcom/vkcoffee/android/fragments/base/GridFragment<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 49
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/GridFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->setScrollBarStyle(I)V

    .line 50
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/base/GridFragment;->updateLayoutManager()V

    .line 51
    return-void
.end method

.method protected setSpanSizeLoockuper(Lcom/vkcoffee/android/functions/IntFIntInt;)V
    .locals 0
    .param p1, "spanSizeLoockuper"    # Lcom/vkcoffee/android/functions/IntFIntInt;

    .prologue
    .line 27
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/GridFragment;, "Lcom/vkcoffee/android/fragments/base/GridFragment<TT;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/base/GridFragment;->mSpanSizeLoockuper:Lcom/vkcoffee/android/functions/IntFIntInt;

    .line 28
    return-void
.end method

.method public updateDecorator()V
    .locals 2

    .prologue
    .line 61
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/GridFragment;, "Lcom/vkcoffee/android/fragments/base/GridFragment<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/GridFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/base/GridFragment;->mCardDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 62
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onCreateCardDecorator()Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/base/GridFragment;->mCardDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .line 63
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/GridFragment;->mCardDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/GridFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/base/GridFragment;->mCardDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 66
    :cond_0
    return-void
.end method

.method public updateLayoutManager()V
    .locals 3

    .prologue
    .line 69
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/GridFragment;, "Lcom/vkcoffee/android/fragments/base/GridFragment<TT;>;"
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/base/GridFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v1}, Lme/grishka/appkit/views/UsableRecyclerView;->getWidth()I

    move-result v0

    .line 70
    .local v0, "oldWidth":I
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/base/GridFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v1}, Lme/grishka/appkit/views/UsableRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/fragments/base/GridFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/vkcoffee/android/fragments/base/GridFragment$1;-><init>(Lcom/vkcoffee/android/fragments/base/GridFragment;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 83
    return-void
.end method
