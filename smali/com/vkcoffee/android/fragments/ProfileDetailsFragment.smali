.class public Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;
.super Lcom/vkcoffee/android/fragments/CardRecyclerFragment;
.source "ProfileDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsHeaderViewHolder;,
        Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsViewHolder;,
        Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsAdapter;,
        Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/CardRecyclerFragment",
        "<",
        "Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;",
        ">;"
    }
.end annotation


# instance fields
.field private adapter:Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;-><init>(I)V

    .line 48
    return-void
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method


# virtual methods
.method protected doLoadData(II)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "items"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 61
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;

    .line 62
    .local v0, "item":Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;
    iget-object v3, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->content:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 63
    iget-object v3, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->content:Ljava/lang/String;

    invoke-static {v3}, Lcom/vkcoffee/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->parsedContent:Ljava/lang/CharSequence;

    goto :goto_0

    .line 66
    .end local v0    # "item":Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;
    :cond_1
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;->onDataLoaded(Ljava/util/List;)V

    .line 67
    return-void
.end method

.method protected getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;->adapter:Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsAdapter;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsAdapter;-><init>(Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$1;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;->adapter:Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsAdapter;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;->adapter:Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsAdapter;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onAttach(Landroid/app/Activity;)V

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;->setRefreshEnabled(Z)V

    .line 54
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;->loadData()V

    .line 56
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 72
    new-instance v0, Lme/grishka/appkit/views/DividerItemDecoration;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, 0x26000000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lme/grishka/appkit/views/DividerItemDecoration;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 73
    .local v0, "dividers":Lme/grishka/appkit/views/DividerItemDecoration;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;->adapter:Lcom/vkcoffee/android/fragments/ProfileDetailsFragment$ProfileDetailsAdapter;

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/DividerItemDecoration;->setProvider(Lme/grishka/appkit/views/DividerItemDecoration$Provider;)Lme/grishka/appkit/views/DividerItemDecoration;

    .line 74
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileDetailsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v1, v0}, Lme/grishka/appkit/views/UsableRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 75
    return-void
.end method
