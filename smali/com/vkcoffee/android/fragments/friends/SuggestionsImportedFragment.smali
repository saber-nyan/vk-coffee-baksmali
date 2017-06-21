.class public Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;
.super Lcom/vkcoffee/android/fragments/base/GridFragment;
.source "SuggestionsImportedFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$ItemHolder;,
        Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$Adapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/base/GridFragment",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;"
    }
.end annotation


# instance fields
.field mFbDialogBuilder:Lcom/facebook/share/model/ShareLinkContent;

.field mInvites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field mService:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/base/GridFragment;-><init>(I)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->mInvites:Ljava/util/List;

    .line 33
    return-void
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method protected createAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vkcoffee/android/fragments/base/GridFragment",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">.GridAdapter<*>;"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$Adapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$Adapter;-><init>(Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$1;)V

    return-object v0
.end method

.method protected doLoadData(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 37
    iget v0, p0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->mService:I

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;)Lcom/vkcoffee/android/data/Friends$GetImportedContactsCallback;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/data/Friends;->getImportedContacts(ILcom/vkcoffee/android/data/Friends$GetImportedContactsCallback;)V

    .line 58
    return-void
.end method

.method protected getColumnsCount()I
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$doLoadData$366(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "imported"    # Ljava/util/ArrayList;
    .param p2, "notOnVk"    # Ljava/util/ArrayList;

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 57
    :cond_0
    return-void
.end method

.method synthetic lambda$null$365(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5

    .prologue
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/UserProfile;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 42
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/UserProfile;

    .line 43
    .local v2, "p":Lcom/vkcoffee/android/UserProfile;
    iget-boolean v3, v2, Lcom/vkcoffee/android/UserProfile;->isFriend:Z

    if-eqz v3, :cond_0

    .line 44
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    .end local v2    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_1
    iget v3, p0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->mService:I

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->mService:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 48
    :cond_2
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->mInvites:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->mInvites:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 50
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->mInvites:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/UserProfile;

    .line 51
    .restart local v2    # "p":Lcom/vkcoffee/android/UserProfile;
    iget-object v3, v2, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string/jumbo v4, "external_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 54
    .end local v2    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->onDataLoaded(Ljava/util/List;Z)V

    .line 55
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 63
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->loaded:Z

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->loadData()V

    .line 66
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->setRefreshEnabled(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "service"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->mService:I

    .line 74
    iget v0, p0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->mService:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 75
    new-instance v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    const-string/jumbo v1, "http://vk.com/join"

    .line 76
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    const-string/jumbo v1, "https://pp.vk.me/c424830/v424830492/6800/4W_bSTYHBEY.jpg"

    .line 77
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    const v1, 0x7f080074

    .line 78
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    const v1, 0x7f080273

    .line 79
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->mFbDialogBuilder:Lcom/facebook/share/model/ShareLinkContent;

    .line 81
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->setHasOptionsMenu(Z)V

    .line 83
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 95
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->mFbDialogBuilder:Lcom/facebook/share/model/ShareLinkContent;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/share/widget/MessageDialog;->canShow(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    const v1, 0x7f080275

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 97
    .local v0, "item":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 99
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method onInviteClick(Lcom/vkcoffee/android/UserProfile;)V
    .locals 6
    .param p1, "user"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    const v5, 0x7f080273

    .line 126
    iget v1, p0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->mService:I

    if-nez v1, :cond_0

    .line 127
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sms:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string/jumbo v4, "external_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 128
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "sms_body"

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->startActivity(Landroid/content/Intent;)V

    .line 131
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget v1, p0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->mService:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 132
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mailto:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string/jumbo v4, "external_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 133
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.extra.SUBJECT"

    const v2, 0x7f080074

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string/jumbo v1, "android.intent.extra.TEXT"

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->startActivity(Landroid/content/Intent;)V

    .line 137
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method onItemClick(Lcom/vkcoffee/android/UserProfile;)V
    .locals 2
    .param p1, "user"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 118
    iget v0, p1, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->onInviteClick(Lcom/vkcoffee/android/UserProfile;)V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;

    iget v1, p1, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;-><init>(I)V

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->go(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->mFbDialogBuilder:Lcom/facebook/share/model/ShareLinkContent;

    invoke-static {v0, v1}, Lcom/facebook/share/widget/MessageDialog;->show(Landroid/app/Activity;Lcom/facebook/share/model/ShareContent;)V

    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/friends/SuggestionsImportedFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 91
    :cond_0
    return-void
.end method
