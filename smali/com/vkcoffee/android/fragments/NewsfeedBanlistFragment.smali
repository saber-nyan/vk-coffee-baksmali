.class public Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;
.super Lcom/vkcoffee/android/fragments/base/SegmenterFragment;
.source "NewsfeedBanlistFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment$Adapter;
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


# instance fields
.field private groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mActionListener:Lcom/vkcoffee/android/functions/VoidF1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/functions/VoidF1",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mOnClickListener:Lcom/vkcoffee/android/functions/VoidF1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/functions/VoidF1",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field final mSegmenter:Lcom/vkcoffee/android/ui/util/SectionSegmenter;

.field private toast:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/Toast;",
            ">;"
        }
    .end annotation
.end field

.field private users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;-><init>(I)V

    .line 30
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;)Lcom/vkcoffee/android/functions/VoidF1;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->mActionListener:Lcom/vkcoffee/android/functions/VoidF1;

    .line 31
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;)Lcom/vkcoffee/android/functions/VoidF1;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->mOnClickListener:Lcom/vkcoffee/android/functions/VoidF1;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->users:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->groups:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Lcom/vkcoffee/android/ui/util/SectionSegmenter;

    invoke-direct {v0}, Lcom/vkcoffee/android/ui/util/SectionSegmenter;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->mSegmenter:Lcom/vkcoffee/android/ui/util/SectionSegmenter;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->users:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->users:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->groups:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->groups:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;
    .param p1, "x1"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->showToast(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;)Lcom/vkcoffee/android/functions/VoidF1;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->mOnClickListener:Lcom/vkcoffee/android/functions/VoidF1;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;)Lcom/vkcoffee/android/functions/VoidF1;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->mActionListener:Lcom/vkcoffee/android/functions/VoidF1;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;

    .prologue
    .line 26
    iget v0, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->scrW:I

    return v0
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;

    .prologue
    .line 26
    iget v0, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->scrW:I

    return v0
.end method

.method private showToast(I)V
    .locals 3
    .param p1, "textRes"    # I

    .prologue
    .line 128
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->toast:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_2

    const/4 v1, 0x0

    .line 129
    .local v1, "toast":Landroid/widget/Toast;
    :goto_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 130
    .local v0, "activity":Landroid/app/Activity;
    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    .line 131
    const/4 v2, 0x1

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 135
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 136
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->toast:Ljava/lang/ref/WeakReference;

    .line 137
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 139
    :cond_1
    return-void

    .line 128
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "toast":Landroid/widget/Toast;
    :cond_2
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->toast:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Toast;

    move-object v1, v2

    goto :goto_0

    .line 132
    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v1    # "toast":Landroid/widget/Toast;
    :cond_3
    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v1, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_1
.end method


# virtual methods
.method protected createAdapter()Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;
    .locals 1
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
    .line 50
    new-instance v0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment$Adapter;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment$Adapter;-><init>(Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;)V

    return-object v0
.end method

.method protected doLoadData(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 69
    new-instance v0, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGetBanned;

    invoke-direct {v0}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGetBanned;-><init>()V

    new-instance v1, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment$1;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment$1;-><init>(Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;Landroid/app/Fragment;)V

    .line 70
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGetBanned;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 81
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 82
    return-void
.end method

.method protected getColumnsCount()I
    .locals 4

    .prologue
    .line 55
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v2}, Lme/grishka/appkit/views/UsableRecyclerView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v3}, Lme/grishka/appkit/views/UsableRecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v3}, Lme/grishka/appkit/views/UsableRecyclerView;->getPaddingRight()I

    move-result v3

    sub-int v1, v2, v3

    .line 56
    .local v1, "listWidth":I
    iget v2, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->scrW:I

    const/16 v3, 0x258

    if-lt v2, v3, :cond_0

    const/high16 v2, 0x43200000    # 160.0f

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    .line 57
    .local v0, "columnWidth":I
    :goto_0
    div-int v2, v1, v0

    return v2

    .end local v0    # "columnWidth":I
    :cond_0
    move v0, v1

    .line 56
    goto :goto_0
.end method

.method protected getSegmenter()Lcom/vkcoffee/android/ui/util/Segmenter;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->mSegmenter:Lcom/vkcoffee/android/ui/util/SectionSegmenter;

    return-object v0
.end method

.method public onActionClick(Lcom/vkcoffee/android/UserProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 96
    new-instance v0, Lcom/vkcoffee/android/api/newsfeed/NewsfeedDeleteBan;

    iget v1, p1, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedDeleteBan;-><init>(I)V

    new-instance v1, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment$2;

    invoke-direct {v1, p0, p0, p1}, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment$2;-><init>(Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;Landroid/app/Fragment;Lcom/vkcoffee/android/UserProfile;)V

    .line 97
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedDeleteBan;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 120
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 121
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->onAttach(Landroid/app/Activity;)V

    .line 63
    const v0, 0x7f0804ac

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->setTitle(I)V

    .line 64
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->doLoadData()V

    .line 65
    return-void
.end method

.method public onItemClick(Lcom/vkcoffee/android/UserProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 124
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;

    iget v1, p1, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;-><init>(I)V

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->go(Landroid/content/Context;)V

    .line 125
    return-void
.end method

.method rebuildSegmenter()V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->mSegmenter:Lcom/vkcoffee/android/ui/util/SectionSegmenter;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->clear()V

    .line 86
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->users:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->mSegmenter:Lcom/vkcoffee/android/ui/util/SectionSegmenter;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->users:Ljava/util/ArrayList;

    const v2, 0x7f080339

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->addSection(Ljava/util/List;Ljava/lang/CharSequence;)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->groups:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->mSegmenter:Lcom/vkcoffee/android/ui/util/SectionSegmenter;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->groups:Ljava/util/ArrayList;

    const v2, 0x7f08025f

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->addSection(Ljava/util/List;Ljava/lang/CharSequence;)V

    .line 92
    :cond_1
    return-void
.end method
