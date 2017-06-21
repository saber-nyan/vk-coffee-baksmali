.class public Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;
.super Lcom/vkcoffee/android/fragments/base/SegmenterFragment;
.source "QuickSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$SearchHolder;,
        Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$UsersAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/base/SegmenterFragment",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;"
    }
.end annotation


# static fields
.field static final CONTENT_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field private mClickHandler:Lcom/vkcoffee/android/functions/VoidF1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/functions/VoidF1",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mData:Lcom/vkcoffee/android/ui/util/ListSegmenter;

.field mFoundDomain:Z

.field private mQuery:Ljava/lang/String;

.field private mSearchIndexer:Lcom/vkcoffee/android/ui/util/SearchSegmenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/ui/util/SearchSegmenter",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->CONTENT_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 108
    const v1, 0x7fffffff

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;-><init>(I)V

    .line 49
    new-instance v1, Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    new-instance v2, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$1;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$1;-><init>(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)V

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)Lcom/vkcoffee/android/ui/util/SearchSegmenter$Generator;

    move-result-object v3

    const/16 v4, 0x32

    invoke-direct {v1, v2, v3, v4}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;-><init>(Lcom/vkcoffee/android/fragments/friends/SearchIndexer$Provider;Lcom/vkcoffee/android/ui/util/SearchSegmenter$Generator;I)V

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v3, 0x7f080461

    .line 100
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->setGlobalTitle(Ljava/lang/CharSequence;)Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->mSearchIndexer:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    .line 102
    new-instance v1, Lcom/vkcoffee/android/ui/util/ListSegmenter;

    invoke-direct {v1}, Lcom/vkcoffee/android/ui/util/ListSegmenter;-><init>()V

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->mData:Lcom/vkcoffee/android/ui/util/ListSegmenter;

    .line 104
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)Lcom/vkcoffee/android/functions/VoidF1;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->mClickHandler:Lcom/vkcoffee/android/functions/VoidF1;

    .line 109
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 110
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "__is_tab"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 111
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 112
    return-void
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)Lcom/vkcoffee/android/functions/VoidF1;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->mClickHandler:Lcom/vkcoffee/android/functions/VoidF1;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)Lcom/vkcoffee/android/ui/util/ListSegmenter;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->mData:Lcom/vkcoffee/android/ui/util/ListSegmenter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)Lcom/vkcoffee/android/ui/util/SearchSegmenter;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->mSearchIndexer:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)Lme/grishka/appkit/utils/Preloader;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->preloader:Lme/grishka/appkit/utils/Preloader;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->content:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->errorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->progress:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    .prologue
    .line 45
    iget v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->scrW:I

    return v0
.end method


# virtual methods
.method protected createAdapter()Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vkcoffee/android/fragments/base/SegmenterFragment",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">.GridAdapter<",
            "Lcom/vkcoffee/android/UserProfile;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$UsersAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$UsersAdapter;-><init>(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$1;)V

    return-object v0
.end method

.method protected doLoadData(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 166
    new-instance v0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$3;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$3;-><init>(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 199
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$3;->execPool([Ljava/lang/Object;)Lcom/vkcoffee/android/background/AsyncTask;

    .line 201
    return-void
.end method

.method protected getColumnsCount()I
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method protected getSegmenter()Lcom/vkcoffee/android/ui/util/Segmenter;
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->mSearchMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->mSearchIndexer:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->mData:Lcom/vkcoffee/android/ui/util/ListSegmenter;

    goto :goto_0
.end method

.method synthetic lambda$new$587(Ljava/lang/String;II)Lcom/vkcoffee/android/api/VKAPIRequest;
    .locals 2
    .param p1, "q"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 99
    new-instance v1, Lcom/vkcoffee/android/api/execute/SearchGetHints;

    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->mFoundDomain:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v1, p1, p2, p3, v0}, Lcom/vkcoffee/android/api/execute/SearchGetHints;-><init>(Ljava/lang/String;IIZ)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->onAttach(Landroid/app/Activity;)V

    .line 123
    const v0, 0x7f080420

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->setEmptyText(I)V

    .line 124
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->onCreate(Landroid/os/Bundle;)V

    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->setRefreshEnabled(Z)V

    .line 118
    return-void
.end method

.method protected onCreateCardDecorator()Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 128
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 129
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    new-instance v1, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$2;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$2;-><init>(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)V

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 136
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->mSearchIndexer:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->attach(Landroid/support/v7/widget/RecyclerView;)V

    .line 137
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->updateList()V

    .line 138
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->loaded:Z

    if-nez v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;

    iget-boolean v0, v0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->mHasAnimation:Z

    if-eqz v0, :cond_1

    .line 140
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 145
    :cond_0
    :goto_0
    new-instance v0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    new-instance v1, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->getAdapter()Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;

    move-result-object v2

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v4, 0x26000000

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;-><init>(Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration$Provider;III)V

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 147
    return-void

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->loadData()V

    goto :goto_0
.end method

.method openResult(Lcom/vkcoffee/android/UserProfile;)V
    .locals 3
    .param p1, "profile"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;

    iget v1, p1, Lcom/vkcoffee/android/UserProfile;->uid:I

    iget-object v2, p1, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->openResult(ILjava/lang/String;)V

    .line 258
    return-void
.end method

.method protected showContent()V
    .locals 8

    .prologue
    const/4 v6, 0x2

    .line 205
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->content:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 206
    new-instance v1, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$4;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$4;-><init>(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)V

    .line 221
    .local v1, "listener":Landroid/animation/AnimatorListenerAdapter;
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->content:Landroid/view/View;

    const-string/jumbo v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 222
    .local v0, "alpha":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->content:Landroid/view/View;

    const-string/jumbo v4, "translationY"

    new-array v5, v6, [F

    const/4 v6, 0x0

    const/high16 v7, -0x3df40000    # -35.0f

    invoke-static {v7}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 223
    .local v2, "translate":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 224
    sget-object v3, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->CONTENT_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 225
    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 226
    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 227
    sget-object v3, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->CONTENT_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 229
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 230
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 232
    .end local v0    # "alpha":Landroid/animation/ObjectAnimator;
    .end local v1    # "listener":Landroid/animation/AnimatorListenerAdapter;
    .end local v2    # "translate":Landroid/animation/ObjectAnimator;
    :cond_0
    return-void

    .line 221
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public updateFilter(Ljava/lang/String;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 240
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 241
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->mSearchMode:Z

    if-nez v0, :cond_0

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->mSearchMode:Z

    .line 243
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->updateList()V

    .line 245
    :cond_0
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->mQuery:Ljava/lang/String;

    .line 246
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->mFoundDomain:Z

    .line 247
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->mSearchIndexer:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->search(Ljava/lang/String;)V

    .line 254
    :cond_1
    :goto_0
    return-void

    .line 249
    :cond_2
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->mSearchMode:Z

    if-eqz v0, :cond_1

    .line 250
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->mSearchMode:Z

    .line 251
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->updateList()V

    goto :goto_0
.end method
