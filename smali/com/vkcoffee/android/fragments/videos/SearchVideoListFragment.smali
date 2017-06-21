.class public Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;
.super Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;
.source "SearchVideoListFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/fragments/BackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment$Callbacks;
    }
.end annotation


# instance fields
.field final mCallbacks:Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment$Callbacks;

.field mChanged:Z

.field mExpandView:Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;

.field mHd:Z

.field mQuery:Ljava/lang/String;

.field mSafeSearch:Z

.field mSearchIcon:Landroid/view/View;

.field mSortMode:I

.field mVideoLength:I

.field searchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->mSafeSearch:Z

    .line 43
    const/4 v0, 0x2

    iput v0, p0, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->mSortMode:I

    .line 47
    new-instance v0, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment$Callbacks;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment$Callbacks;-><init>(Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment$1;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->mCallbacks:Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment$Callbacks;

    .line 56
    const v0, 0x7f030199

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->setLayout(I)V

    .line 57
    return-void
.end method

.method public static newInstance(Z)Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;
    .locals 3
    .param p0, "select"    # Z

    .prologue
    .line 31
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 32
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "select"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 34
    new-instance v1, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;

    invoke-direct {v1}, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;-><init>()V

    .line 35
    .local v1, "result":Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 36
    return-object v1
.end method


# virtual methods
.method protected getReferer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string/jumbo v0, "search"

    return-object v0
.end method

.method protected getRequest(II)Lcom/vkcoffee/android/api/VKAPIRequest;
    .locals 8
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/vkcoffee/android/api/VKAPIRequest",
            "<",
            "Lcom/vkcoffee/android/data/VKList",
            "<",
            "Lcom/vkcoffee/android/api/VideoFile;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Lcom/vkcoffee/android/api/video/VideoSearch;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->mQuery:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->mHd:Z

    iget v5, p0, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->mVideoLength:I

    iget-boolean v6, p0, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->mSafeSearch:Z

    iget v7, p0, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->mSortMode:I

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/vkcoffee/android/api/video/VideoSearch;-><init>(Ljava/lang/String;IIZIZI)V

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->onAttach(Landroid/app/Activity;)V

    .line 62
    const v0, 0x7f0802d3

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->setEmptyText(I)V

    .line 63
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->mExpandView:Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->mExpandView:Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->closePanel()V

    .line 148
    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScrollStarted()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->onScrollStarted()V

    .line 133
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->searchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->clearFocus()V

    .line 134
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x1090009

    const v6, 0x1090008

    .line 91
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 92
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->onDataLoaded(Ljava/util/List;Z)V

    .line 94
    const v4, 0x7f1001b3

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->mSearchIcon:Landroid/view/View;

    .line 95
    const v4, 0x7f1001b2

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;

    iput-object v4, p0, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->mExpandView:Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;

    .line 96
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->mExpandView:Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->mCallbacks:Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment$Callbacks;

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->setProgressListener(Lcom/vkcoffee/android/functions/VoidFloat;)V

    .line 97
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->mExpandView:Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->mCallbacks:Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment$Callbacks;

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->setOpenListener(Lcom/vkcoffee/android/functions/VoidFBool;)V

    .line 99
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0d003e

    invoke-static {v4, v5, v6}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 100
    .local v0, "durationAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 101
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->mExpandView:Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;

    const v5, 0x7f10040a

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 102
    .local v1, "durationSpinner":Landroid/widget/Spinner;
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 109
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0d0040

    invoke-static {v4, v5, v6}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    .line 110
    .local v2, "sortAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v2, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 111
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->mExpandView:Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;

    const v5, 0x7f10040b

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 112
    .local v3, "sortSpinner":Landroid/widget/Spinner;
    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 114
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->mExpandView:Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;

    const v5, 0x7f10040c

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CompoundButton;

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->mCallbacks:Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment$Callbacks;

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 115
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->mExpandView:Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;

    const v5, 0x7f10040d

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CompoundButton;

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->mCallbacks:Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment$Callbacks;

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 117
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->mCallbacks:Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment$Callbacks;

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 118
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->mCallbacks:Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment$Callbacks;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 119
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->mQuery:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->mQuery:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->reload()V

    .line 87
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 138
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->preloadedData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->mQuery:Ljava/lang/String;

    .line 140
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->updateList()V

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->loaded:Z

    .line 142
    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 1
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    invoke-virtual {v0}, Lme/grishka/appkit/api/APIRequest;->cancel()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 126
    :cond_0
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->mQuery:Ljava/lang/String;

    .line 127
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->reload()V

    .line 128
    return-void
.end method

.method public setSearchView(Lcom/vkcoffee/android/ui/SearchViewWrapper;)V
    .locals 0
    .param p1, "searchView"    # Lcom/vkcoffee/android/ui/SearchViewWrapper;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->searchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    .line 53
    return-void
.end method

.method protected showContent()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;->showContent()V

    .line 73
    const v0, 0x7f080304

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/videos/SearchVideoListFragment;->setEmptyText(I)V

    .line 74
    return-void
.end method
