.class public Lcom/vkcoffee/android/fragments/userlist/GamesFriendFragment;
.super Lcom/vkcoffee/android/fragments/AbsUserListFragment;
.source "GamesFriendFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/userlist/GamesFriendFragment$Builder;
    }
.end annotation


# instance fields
.field private userProfiles:Ljava/util/ArrayList;
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
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/AbsUserListFragment;-><init>()V

    .line 15
    return-void
.end method

.method protected static convert(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    if-nez p0, :cond_1

    .line 47
    const/4 v1, 0x0

    .line 53
    :cond_0
    return-object v1

    .line 49
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    .local v1, "userProfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 51
    .local v0, "parcelable":Landroid/os/Parcelable;
    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    .end local v0    # "parcelable":Landroid/os/Parcelable;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected doLoadData(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/userlist/GamesFriendFragment;->userProfiles:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/userlist/GamesFriendFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "users"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/userlist/GamesFriendFragment;->convert(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/userlist/GamesFriendFragment;->userProfiles:Ljava/util/ArrayList;

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/userlist/GamesFriendFragment;->preloader:Lme/grishka/appkit/utils/Preloader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lme/grishka/appkit/utils/Preloader;->setMoreAvailable(Z)V

    .line 42
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/userlist/GamesFriendFragment;->userProfiles:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/userlist/GamesFriendFragment;->onDataLoaded(Ljava/util/List;)V

    .line 43
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/AbsUserListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/userlist/GamesFriendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0011

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/userlist/GamesFriendFragment;->userProfiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/userlist/GamesFriendFragment;->userProfiles:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/userlist/GamesFriendFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 34
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/AbsUserListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/userlist/GamesFriendFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "users"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/userlist/GamesFriendFragment;->convert(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/userlist/GamesFriendFragment;->userProfiles:Ljava/util/ArrayList;

    .line 28
    return-void
.end method
