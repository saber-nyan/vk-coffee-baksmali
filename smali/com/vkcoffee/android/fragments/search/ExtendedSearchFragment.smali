.class public Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;
.super Lcom/vkcoffee/android/fragments/base/SegmenterFragment;
.source "ExtendedSearchFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/fragments/BackListener;
.implements Lcom/vkcoffee/android/functions/VoidF1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$Callbacks;,
        Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/base/SegmenterFragment",
        "<",
        "Lcom/vkcoffee/android/api/users/UsersSearch$SearchProfile;",
        ">;",
        "Lcom/vkcoffee/android/fragments/BackListener;",
        "Lcom/vkcoffee/android/functions/VoidF1",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;"
    }
.end annotation


# static fields
.field static final AGE_DIFF:I = 0xd

.field static final MAX_AGE:I = 0x50

.field static final MIN_AGE:I = 0xe

.field static final PAGE_SIZE:I = 0x32


# instance fields
.field mAgeFrom:I

.field mAgeFromSpinner:Landroid/widget/Spinner;

.field mAgeTo:I

.field mAgeToSpinner:Landroid/widget/Spinner;

.field final mCallbacks:Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$Callbacks;

.field mChanged:Z

.field mCityButton:Landroid/widget/TextView;

.field mCityId:I

.field mClear:Landroid/widget/ImageView;

.field mCountryId:I

.field mExpandView:Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;

.field mPresetQuery:Ljava/lang/String;

.field mQueryField:Landroid/widget/TextView;

.field final mRecommendations:Lcom/vkcoffee/android/ui/util/SearchSegmenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/ui/util/SearchSegmenter",
            "<",
            "Lcom/vkcoffee/android/api/users/UsersSearch$SearchProfile;",
            ">;"
        }
    .end annotation
.end field

.field mRelation:I

.field mSearchIcon:Landroid/view/View;

.field mSearchMode:Z

.field final mSearchSegmenter:Lcom/vkcoffee/android/ui/util/SearchSegmenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/ui/util/SearchSegmenter",
            "<",
            "Lcom/vkcoffee/android/api/users/UsersSearch$SearchProfile;",
            ">;"
        }
    .end annotation
.end field

.field mSex:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x32

    .line 84
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;-><init>()V

    .line 63
    new-instance v0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$Callbacks;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$Callbacks;-><init>(Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$1;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mCallbacks:Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$Callbacks;

    .line 64
    new-instance v0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mCallbacks:Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$Callbacks;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mCallbacks:Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$Callbacks;

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;-><init>(Lcom/vkcoffee/android/fragments/friends/SearchIndexer$Provider;Lcom/vkcoffee/android/ui/util/SearchSegmenter$Generator;I)V

    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v2, 0x7f08045b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->setGlobalTitle(Ljava/lang/CharSequence;)Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mSearchSegmenter:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    .line 65
    new-instance v0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mCallbacks:Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$Callbacks;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mCallbacks:Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$Callbacks;

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;-><init>(Lcom/vkcoffee/android/fragments/friends/SearchIndexer$Provider;Lcom/vkcoffee/android/ui/util/SearchSegmenter$Generator;I)V

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mCallbacks:Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$Callbacks;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->setLoadingListener(Lcom/vkcoffee/android/ui/util/SearchSegmenter$LoadingListener;)Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    move-result-object v0

    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v2, 0x7f080422

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->setGlobalTitle(Ljava/lang/CharSequence;)Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mRecommendations:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    .line 85
    const v0, 0x7f030056

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->setLayout(I)V

    .line 86
    return-void
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;)Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->getAdapter()Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->showContent()V

    return-void
.end method


# virtual methods
.method addFriend(Lcom/vkcoffee/android/api/users/UsersSearch$SearchProfile;I)V
    .locals 3
    .param p1, "user"    # Lcom/vkcoffee/android/api/users/UsersSearch$SearchProfile;
    .param p2, "position"    # I

    .prologue
    .line 316
    new-instance v0, Lcom/vkcoffee/android/api/friends/FriendsAdd;

    iget v1, p1, Lcom/vkcoffee/android/api/users/UsersSearch$SearchProfile;->uid:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/api/friends/FriendsAdd;-><init>(ILjava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/friends/FriendsAdd;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$4;

    invoke-direct {v1, p0, p0, p1, p2}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$4;-><init>(Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;Landroid/app/Fragment;Lcom/vkcoffee/android/api/users/UsersSearch$SearchProfile;I)V

    .line 318
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 327
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 328
    return-void
.end method

.method protected createAdapter()Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vkcoffee/android/fragments/base/SegmenterFragment",
            "<",
            "Lcom/vkcoffee/android/api/users/UsersSearch$SearchProfile;",
            ">.GridAdapter<",
            "Lcom/vkcoffee/android/api/users/UsersSearch$SearchProfile;",
            "Lcom/vkcoffee/android/ui/holder/UserHolder",
            "<",
            "Lcom/vkcoffee/android/api/users/UsersSearch$SearchProfile;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$1;-><init>(Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;)V

    return-object v0
.end method

.method protected doLoadData(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mRecommendations:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->search(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public f(Lcom/vkcoffee/android/UserProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 174
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;

    iget v1, p1, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;-><init>(I)V

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->go(Landroid/content/Context;)V

    .line 175
    return-void
.end method

.method public bridge synthetic f(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 56
    check-cast p1, Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->f(Lcom/vkcoffee/android/UserProfile;)V

    return-void
.end method

.method protected getColumnsCount()I
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->isTablet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getSegmenter()Lcom/vkcoffee/android/ui/util/Segmenter;
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mSearchMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mSearchSegmenter:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mRecommendations:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 91
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->loaded:Z

    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->loadData()V

    .line 94
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 122
    invoke-static {p1, p2, p3}, Lcom/vkcoffee/android/utils/VoiceUtils;->getVoiceResult(IILandroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "voiceResult":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 124
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mQueryField:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mExpandView:Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mExpandView:Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->closePanel()V

    .line 162
    const/4 v0, 0x1

    .line 164
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->setRefreshEnabled(Z)V

    .line 100
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "q"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "q"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mPresetQuery:Ljava/lang/String;

    .line 103
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 107
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 108
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mRecommendations:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->attach(Landroid/support/v7/widget/RecyclerView;)V

    .line 109
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mSearchSegmenter:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->attach(Landroid/support/v7/widget/RecyclerView;)V

    .line 111
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->setupSearchBar()V

    .line 112
    const v0, 0x7f1003a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->setupExtendedParams(Landroid/view/View;)V

    .line 114
    const v0, 0x7f1001b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mSearchIcon:Landroid/view/View;

    .line 115
    const v0, 0x7f1001b2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mExpandView:Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;

    .line 116
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mExpandView:Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mCallbacks:Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$Callbacks;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->setProgressListener(Lcom/vkcoffee/android/functions/VoidFloat;)V

    .line 117
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mExpandView:Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mCallbacks:Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$Callbacks;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->setOpenListener(Lcom/vkcoffee/android/functions/VoidFBool;)V

    .line 118
    return-void
.end method

.method selectCity()V
    .locals 4

    .prologue
    .line 305
    new-instance v1, Lcom/vkcoffee/android/fragments/CitySelectFragment;

    invoke-direct {v1}, Lcom/vkcoffee/android/fragments/CitySelectFragment;-><init>()V

    .line 306
    .local v1, "fragment":Lcom/vkcoffee/android/fragments/CitySelectFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 307
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "hint"

    const v3, 0x7f080143

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string/jumbo v2, "country"

    iget v3, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mCountryId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 309
    const-string/jumbo v3, "show_none"

    iget v2, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mCityId:I

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 310
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/CitySelectFragment;->setArguments(Landroid/os/Bundle;)V

    .line 311
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mCallbacks:Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$Callbacks;

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/CitySelectFragment;->setCallback(Lcom/vkcoffee/android/fragments/DatabaseSearchFragment$Callback;)V

    .line 312
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "city"

    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/fragments/CitySelectFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 313
    return-void

    .line 309
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method setupAgeParams(Landroid/view/View;)V
    .locals 9
    .param p1, "root"    # Landroid/view/View;

    .prologue
    const v8, 0x1090009

    const v5, 0x1090008

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 257
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 258
    .local v0, "ageAdapterFrom":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 259
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0801af

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 260
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 261
    .local v1, "ageAdapterTo":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v1, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 262
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080544

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 263
    const/16 v2, 0xe

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x50

    if-gt v2, v3, :cond_0

    .line 264
    const v3, 0x7f080069

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 265
    const v3, 0x7f08006a

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 263
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    :cond_0
    const v3, 0x7f1003a7

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mAgeFromSpinner:Landroid/widget/Spinner;

    .line 268
    const v3, 0x7f1003a8

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mAgeToSpinner:Landroid/widget/Spinner;

    .line 269
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mAgeFromSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 270
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mAgeToSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 271
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mAgeFromSpinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mCallbacks:Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$Callbacks;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 272
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mAgeToSpinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mCallbacks:Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$Callbacks;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 273
    return-void
.end method

.method setupExtendedParams(Landroid/view/View;)V
    .locals 0
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->setupRegionParams(Landroid/view/View;)V

    .line 243
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->setupGenderParams(Landroid/view/View;)V

    .line 244
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->setupAgeParams(Landroid/view/View;)V

    .line 245
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->setupRelationParams(Landroid/view/View;)V

    .line 246
    return-void
.end method

.method setupGenderParams(Landroid/view/View;)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 276
    const v0, 0x7f1003a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mCallbacks:Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$Callbacks;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 277
    const v0, 0x7f1003a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mCallbacks:Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$Callbacks;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 278
    const v0, 0x7f1003a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mCallbacks:Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$Callbacks;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 279
    return-void
.end method

.method setupRegionParams(Landroid/view/View;)V
    .locals 6
    .param p1, "root"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 282
    const v2, 0x7f1003a2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 283
    .local v1, "countrySpinner":Landroid/widget/Spinner;
    const v2, 0x7f1003a3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mCityButton:Landroid/widget/TextView;

    .line 284
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mCityButton:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mCallbacks:Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$Callbacks;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    new-instance v0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$3;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1090008

    const v4, 0x7f080144

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v5, v4}, Lcom/vkcoffee/android/data/database/Country;->getCountries(ZZLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$3;-><init>(Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;Landroid/content/Context;ILjava/util/List;)V

    .line 299
    .local v0, "countryAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/vkcoffee/android/data/database/Country;>;"
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 300
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 301
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mCallbacks:Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$Callbacks;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 302
    return-void
.end method

.method setupRelationParams(Landroid/view/View;)V
    .locals 5
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d0009

    const v4, 0x1090008

    invoke-static {v2, v3, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 250
    .local v0, "relationAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 251
    const v2, 0x7f1003a9

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 252
    .local v1, "relationSpinner":Landroid/widget/Spinner;
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 253
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mCallbacks:Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$Callbacks;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 254
    return-void
.end method

.method setupSearchBar()V
    .locals 6

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030084

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 179
    .local v0, "searchView":Landroid/view/View;
    const v2, 0x7f1001ee

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 180
    .local v1, "voice":Landroid/widget/ImageView;
    const v2, 0x7f1001ed

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mClear:Landroid/widget/ImageView;

    .line 181
    const v2, 0x7f1001ec

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mQueryField:Landroid/widget/TextView;

    .line 183
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mClear:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mCallbacks:Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$Callbacks;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mCallbacks:Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$Callbacks;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mQueryField:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mCallbacks:Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$Callbacks;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 187
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mQueryField:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mCallbacks:Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$Callbacks;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 188
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mQueryField:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mPresetQuery:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_0

    .line 190
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mQueryField:Landroid/widget/TextView;

    new-instance v3, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$2;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$2;-><init>(Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 213
    :cond_0
    invoke-static {}, Lcom/vkcoffee/android/utils/VoiceUtils;->voiceSearchAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 214
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 217
    return-void
.end method

.method updateFilter()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mQueryField:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->updateFilter(Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method updateFilter(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mCountryId:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mCityId:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mSex:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mAgeFrom:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mAgeTo:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mRelation:I

    if-eqz v0, :cond_3

    .line 225
    :cond_0
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mSearchMode:Z

    if-nez v0, :cond_1

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mSearchMode:Z

    .line 227
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->updateDecorator()V

    .line 228
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->updateList()V

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mSearchSegmenter:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->clear()V

    .line 231
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mSearchSegmenter:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->search(Ljava/lang/String;)V

    .line 239
    :cond_2
    :goto_0
    return-void

    .line 233
    :cond_3
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mSearchMode:Z

    if-eqz v0, :cond_2

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->mSearchMode:Z

    .line 235
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->updateDecorator()V

    .line 236
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->updateList()V

    goto :goto_0
.end method
