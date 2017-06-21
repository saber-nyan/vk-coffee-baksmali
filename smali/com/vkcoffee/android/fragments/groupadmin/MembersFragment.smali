.class public Lcom/vkcoffee/android/fragments/groupadmin/MembersFragment;
.super Lme/grishka/appkit/fragments/TabbedFragment;
.source "MembersFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lme/grishka/appkit/fragments/TabbedFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v11, 0x1

    .line 21
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/TabbedFragment;->onAttach(Landroid/app/Activity;)V

    .line 23
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 24
    .local v1, "args":Landroid/os/Bundle;
    const-string/jumbo v8, "id"

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/MembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "id"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 25
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 26
    .local v2, "argsNoLoad":Landroid/os/Bundle;
    const-string/jumbo v8, "no_autoload"

    invoke-virtual {v2, v8, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 28
    new-instance v0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;

    invoke-direct {v0}, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;-><init>()V

    .line 29
    .local v0, "allMembers":Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;->setArguments(Landroid/os/Bundle;)V

    .line 31
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v3, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v7, "titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    const v8, 0x7f080208

    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/fragments/groupadmin/MembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/MembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "type"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    .line 36
    new-instance v4, Lcom/vkcoffee/android/fragments/groupadmin/InvitationsFragment;

    invoke-direct {v4}, Lcom/vkcoffee/android/fragments/groupadmin/InvitationsFragment;-><init>()V

    .line 37
    .local v4, "invites":Lcom/vkcoffee/android/fragments/groupadmin/InvitationsFragment;
    invoke-virtual {v4, v2}, Lcom/vkcoffee/android/fragments/groupadmin/InvitationsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    const v8, 0x7f080260

    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/fragments/groupadmin/MembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .end local v4    # "invites":Lcom/vkcoffee/android/fragments/groupadmin/InvitationsFragment;
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/MembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "access"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v11, :cond_1

    .line 43
    new-instance v6, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;

    invoke-direct {v6}, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;-><init>()V

    .line 44
    .local v6, "reqs":Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;
    invoke-virtual {v6, v2}, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    const v8, 0x7f080196

    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/fragments/groupadmin/MembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .end local v6    # "reqs":Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;
    :cond_1
    new-instance v5, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;

    invoke-direct {v5}, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;-><init>()V

    .line 50
    .local v5, "managers":Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;
    invoke-virtual {v5, v2}, Lcom/vkcoffee/android/fragments/groupadmin/ManagersFragment;->setArguments(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    const v8, 0x7f080244

    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/fragments/groupadmin/MembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {p0, v3, v7}, Lcom/vkcoffee/android/fragments/groupadmin/MembersFragment;->setTabs(Ljava/util/List;Ljava/util/List;)V

    .line 56
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/groupadmin/MembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "_split"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 57
    const v8, 0x7f080245

    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/fragments/groupadmin/MembersFragment;->setTitle(I)V

    .line 59
    :cond_2
    return-void
.end method
