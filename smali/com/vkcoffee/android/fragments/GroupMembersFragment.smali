.class public Lcom/vkcoffee/android/fragments/GroupMembersFragment;
.super Lme/grishka/appkit/fragments/TabbedFragment;
.source "GroupMembersFragment.java"


# instance fields
.field private friendsFragment:Lcom/vkcoffee/android/fragments/userlist/GroupMembersListFragment;

.field private membersFragment:Lcom/vkcoffee/android/fragments/userlist/GroupMembersListFragment;

.field private unsureFragment:Lcom/vkcoffee/android/fragments/userlist/GroupMembersListFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lme/grishka/appkit/fragments/TabbedFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 9
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v8, 0x1

    .line 21
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/TabbedFragment;->onAttach(Landroid/app/Activity;)V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .local v0, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .local v5, "titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v4, ""

    .line 27
    .local v4, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GroupMembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "title"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GroupMembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "title"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v4    # "title":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/GroupMembersFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 28
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GroupMembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 29
    .local v2, "likesArgs":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GroupMembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 30
    .local v1, "friendsArgs":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GroupMembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 31
    .local v3, "repostsArgs":Landroid/os/Bundle;
    const-string/jumbo v6, "filter"

    const-string/jumbo v7, "friends"

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string/jumbo v6, "title"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 33
    const-string/jumbo v6, "no_autoload"

    invoke-virtual {v1, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 34
    const-string/jumbo v6, "filter"

    const-string/jumbo v7, "unsure"

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string/jumbo v6, "title"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 36
    const-string/jumbo v6, "no_autoload"

    invoke-virtual {v3, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 37
    new-instance v6, Lcom/vkcoffee/android/fragments/userlist/GroupMembersListFragment;

    invoke-direct {v6}, Lcom/vkcoffee/android/fragments/userlist/GroupMembersListFragment;-><init>()V

    iput-object v6, p0, Lcom/vkcoffee/android/fragments/GroupMembersFragment;->membersFragment:Lcom/vkcoffee/android/fragments/userlist/GroupMembersListFragment;

    .line 38
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/GroupMembersFragment;->membersFragment:Lcom/vkcoffee/android/fragments/userlist/GroupMembersListFragment;

    invoke-virtual {v6, v2}, Lcom/vkcoffee/android/fragments/userlist/GroupMembersListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 39
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/GroupMembersFragment;->membersFragment:Lcom/vkcoffee/android/fragments/userlist/GroupMembersListFragment;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GroupMembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "type"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    const v6, 0x7f080189

    :goto_0
    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/fragments/GroupMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v6, Lcom/vkcoffee/android/fragments/userlist/GroupMembersListFragment;

    invoke-direct {v6}, Lcom/vkcoffee/android/fragments/userlist/GroupMembersListFragment;-><init>()V

    iput-object v6, p0, Lcom/vkcoffee/android/fragments/GroupMembersFragment;->friendsFragment:Lcom/vkcoffee/android/fragments/userlist/GroupMembersListFragment;

    .line 42
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/GroupMembersFragment;->friendsFragment:Lcom/vkcoffee/android/fragments/userlist/GroupMembersListFragment;

    invoke-virtual {v6, v1}, Lcom/vkcoffee/android/fragments/userlist/GroupMembersListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 43
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/GroupMembersFragment;->friendsFragment:Lcom/vkcoffee/android/fragments/userlist/GroupMembersListFragment;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    const v6, 0x7f0801a4

    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/fragments/GroupMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/GroupMembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "type"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v8, :cond_1

    .line 46
    new-instance v6, Lcom/vkcoffee/android/fragments/userlist/GroupMembersListFragment;

    invoke-direct {v6}, Lcom/vkcoffee/android/fragments/userlist/GroupMembersListFragment;-><init>()V

    iput-object v6, p0, Lcom/vkcoffee/android/fragments/GroupMembersFragment;->unsureFragment:Lcom/vkcoffee/android/fragments/userlist/GroupMembersListFragment;

    .line 47
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/GroupMembersFragment;->unsureFragment:Lcom/vkcoffee/android/fragments/userlist/GroupMembersListFragment;

    invoke-virtual {v6, v3}, Lcom/vkcoffee/android/fragments/userlist/GroupMembersListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 48
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/GroupMembersFragment;->unsureFragment:Lcom/vkcoffee/android/fragments/userlist/GroupMembersListFragment;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    const v6, 0x7f080560

    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/fragments/GroupMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_1
    invoke-virtual {p0, v0, v5}, Lcom/vkcoffee/android/fragments/GroupMembersFragment;->setTabs(Ljava/util/List;Ljava/util/List;)V

    .line 52
    return-void

    .line 40
    :cond_2
    const v6, 0x7f0802a3

    goto :goto_0
.end method
