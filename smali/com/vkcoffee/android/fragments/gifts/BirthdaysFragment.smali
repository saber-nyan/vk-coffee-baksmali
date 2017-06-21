.class public Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;
.super Lcom/vkcoffee/android/fragments/base/SegmenterFragment;
.source "BirthdaysFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/functions/VoidF1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/base/SegmenterFragment",
        "<",
        "Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;",
        ">;",
        "Lcom/vkcoffee/android/functions/VoidF1",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;"
    }
.end annotation


# instance fields
.field mActive:Z

.field final mBottomDividerDecoration:Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;

.field final mData:Lcom/vkcoffee/android/ui/util/SectionSegmenter;

.field final mSendGiftCallback:Lcom/vkcoffee/android/functions/VoidF1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/functions/VoidF1",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field mTodayBirthdays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;",
            ">;"
        }
    .end annotation
.end field

.field mTomorrowBirthdays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;",
            ">;"
        }
    .end annotation
.end field

.field mUpcomingBirthdays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;-><init>()V

    .line 35
    new-instance v0, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->getAdapter()Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v3, 0xf000000

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;-><init>(Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration$Provider;III)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->mBottomDividerDecoration:Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;

    .line 36
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;)Lcom/vkcoffee/android/functions/VoidF1;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->mSendGiftCallback:Lcom/vkcoffee/android/functions/VoidF1;

    .line 37
    new-instance v0, Lcom/vkcoffee/android/ui/util/SectionSegmenter;

    invoke-direct {v0}, Lcom/vkcoffee/android/ui/util/SectionSegmenter;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->mData:Lcom/vkcoffee/android/ui/util/SectionSegmenter;

    .line 159
    return-void
.end method


# virtual methods
.method protected createAdapter()Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vkcoffee/android/fragments/base/SegmenterFragment",
            "<",
            "Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;",
            ">.GridAdapter<",
            "Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$1;-><init>(Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;)V

    return-object v0
.end method

.method protected doLoadData(II)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 108
    new-instance v0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$2;-><init>(Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;)V

    .line 133
    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$2;->start()V

    .line 134
    return-void
.end method

.method public f(Lcom/vkcoffee/android/UserProfile;)V
    .locals 1
    .param p1, "profile"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 146
    if-eqz p1, :cond_0

    .line 147
    iget v0, p1, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->openProfile(I)V

    .line 149
    :cond_0
    return-void
.end method

.method public bridge synthetic f(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->f(Lcom/vkcoffee/android/UserProfile;)V

    return-void
.end method

.method protected getColumnsCount()I
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->isTablet:Z

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
    .line 78
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->mData:Lcom/vkcoffee/android/ui/util/SectionSegmenter;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 139
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->loaded:Z

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->loadData()V

    .line 142
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->setRefreshEnabled(Z)V

    .line 48
    return-void
.end method

.method protected onCreateCardDecorator()Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    .locals 5

    .prologue
    .line 58
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->onCreateCardDecorator()Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;

    move-result-object v0

    .line 59
    .local v0, "cardItemDecoration":Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->mBottomDividerDecoration:Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;

    iget v3, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->margin:I

    iget v4, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->margin:I

    invoke-virtual {v2, v3, v4}, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;->setPadding(II)Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/grishka/appkit/views/UsableRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 60
    return-object v0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->onStart()V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->mActive:Z

    .line 68
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->onStop()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->mActive:Z

    .line 74
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f0800aa

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->setTitle(I)V

    .line 54
    return-void
.end method

.method openProfile(I)V
    .locals 2
    .param p1, "user_id"    # I

    .prologue
    .line 156
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;-><init>(I)V

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->go(Landroid/content/Context;)V

    .line 157
    return-void
.end method

.method showGiftsCatalog(Lcom/vkcoffee/android/UserProfile;)V
    .locals 1
    .param p1, "user"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->start(Landroid/app/Activity;Lcom/vkcoffee/android/UserProfile;)V

    .line 153
    return-void
.end method
