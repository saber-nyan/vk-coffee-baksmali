.class public Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment;
.super Lcom/vkcoffee/android/fragments/AbsUserListFragment;
.source "FaveLinkListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment$Holder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/AbsUserListFragment;-><init>()V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment;)Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment;

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment;->getAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v0

    return-object v0
.end method

.method private showFavoritesRemoveDialog(Lcom/vkcoffee/android/UserProfile;)V
    .locals 3
    .param p1, "user"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 41
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800f4

    .line 42
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080174

    .line 43
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08031e

    invoke-static {p0, p1}, Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment;Lcom/vkcoffee/android/UserProfile;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802d7

    const/4 v2, 0x0

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 47
    return-void
.end method


# virtual methods
.method deleteBookmark(Lcom/vkcoffee/android/UserProfile;)V
    .locals 3
    .param p1, "user"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 50
    new-instance v0, Lcom/vkcoffee/android/api/fave/FaveRemoveLink;

    iget-object v1, p1, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string/jumbo v2, "id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/fave/FaveRemoveLink;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment$1;-><init>(Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment;Lcom/vkcoffee/android/UserProfile;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/fave/FaveRemoveLink;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 62
    return-void
.end method

.method protected doLoadData(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 28
    new-instance v0, Lcom/vkcoffee/android/api/fave/FaveGetLinks;

    invoke-direct {v0, p1, p2}, Lcom/vkcoffee/android/api/fave/FaveGetLinks;-><init>(II)V

    new-instance v1, Lcom/vkcoffee/android/api/SimpleListCallback;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/api/SimpleListCallback;-><init>(Lme/grishka/appkit/fragments/BaseRecyclerFragment;)V

    .line 29
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/fave/FaveGetLinks;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 30
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 31
    return-void
.end method

.method protected getColumnsCount()I
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment;->isTablet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getHolder(Landroid/view/ViewGroup;)Lcom/vkcoffee/android/ui/holder/UserHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Lcom/vkcoffee/android/ui/holder/UserHolder",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment$Holder;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment$Holder;-><init>(Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment;Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method synthetic lambda$showFavoritesRemoveDialog$340(Lcom/vkcoffee/android/UserProfile;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment;->deleteBookmark(Lcom/vkcoffee/android/UserProfile;)V

    .line 46
    return-void
.end method

.method public onActionClick(Lcom/vkcoffee/android/UserProfile;)V
    .locals 0
    .param p1, "profile"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment;->showFavoritesRemoveDialog(Lcom/vkcoffee/android/UserProfile;)V

    .line 72
    return-void
.end method

.method public onItemClick(Lcom/vkcoffee/android/UserProfile;)V
    .locals 3
    .param p1, "profile"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 35
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 37
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment;->startActivity(Landroid/content/Intent;)V

    .line 38
    return-void
.end method
