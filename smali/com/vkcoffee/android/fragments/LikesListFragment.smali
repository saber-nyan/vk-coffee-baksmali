.class public Lcom/vkcoffee/android/fragments/LikesListFragment;
.super Lcom/vkcoffee/android/fragments/VKTabbedFragment;
.source "LikesListFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/VKTabbedFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 13
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const v12, 0x7f08028e

    const/4 v11, 0x1

    .line 16
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKTabbedFragment;->onAttach(Landroid/app/Activity;)V

    .line 18
    invoke-virtual {p0, v12}, Lcom/vkcoffee/android/fragments/LikesListFragment;->setTitle(I)V

    .line 19
    const-string/jumbo v7, ""

    .line 20
    .local v7, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/LikesListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "title"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/LikesListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "title"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .end local v7    # "title":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1, v7}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/LikesListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 22
    .local v2, "likesArgs":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/LikesListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 23
    .local v0, "friendsArgs":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/LikesListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 24
    .local v4, "repostsArgs":Landroid/os/Bundle;
    const-string/jumbo v9, "friends_only"

    invoke-virtual {v0, v9, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 25
    const-string/jumbo v9, "no_autoload"

    invoke-virtual {v0, v9, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 26
    const-string/jumbo v9, "filter"

    const-string/jumbo v10, "copies"

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string/jumbo v9, "no_autoload"

    invoke-virtual {v4, v9, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 28
    new-instance v3, Lcom/vkcoffee/android/fragments/userlist/LikesUserListFragment;

    invoke-direct {v3}, Lcom/vkcoffee/android/fragments/userlist/LikesUserListFragment;-><init>()V

    .line 29
    .local v3, "likesView":Lcom/vkcoffee/android/fragments/userlist/LikesUserListFragment;
    invoke-virtual {v3, v2}, Lcom/vkcoffee/android/fragments/userlist/LikesUserListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 30
    new-instance v1, Lcom/vkcoffee/android/fragments/userlist/LikesUserListFragment;

    invoke-direct {v1}, Lcom/vkcoffee/android/fragments/userlist/LikesUserListFragment;-><init>()V

    .line 31
    .local v1, "friendsView":Lcom/vkcoffee/android/fragments/userlist/LikesUserListFragment;
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/userlist/LikesUserListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 32
    new-instance v5, Lcom/vkcoffee/android/fragments/userlist/LikesUserListFragment;

    invoke-direct {v5}, Lcom/vkcoffee/android/fragments/userlist/LikesUserListFragment;-><init>()V

    .line 33
    .local v5, "repostsView":Lcom/vkcoffee/android/fragments/userlist/LikesUserListFragment;
    invoke-virtual {v5, v4}, Lcom/vkcoffee/android/fragments/userlist/LikesUserListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 35
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v6, "tabs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    sget v9, Lcom/vkcoffee/android/Global;->uid:I

    if-lez v9, :cond_1

    .line 38
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_1
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v8, "titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v12}, Lcom/vkcoffee/android/fragments/LikesListFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    sget v9, Lcom/vkcoffee/android/Global;->uid:I

    if-lez v9, :cond_2

    .line 45
    const v9, 0x7f0801a4

    invoke-virtual {p0, v9}, Lcom/vkcoffee/android/fragments/LikesListFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_2
    const v9, 0x7f080448

    invoke-virtual {p0, v9}, Lcom/vkcoffee/android/fragments/LikesListFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-virtual {p0, v6, v8}, Lcom/vkcoffee/android/fragments/LikesListFragment;->setTabs(Ljava/util/List;Ljava/util/List;)V

    .line 49
    return-void
.end method
