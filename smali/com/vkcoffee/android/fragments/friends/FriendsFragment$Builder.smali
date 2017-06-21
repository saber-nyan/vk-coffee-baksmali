.class public Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;
.super Lcom/vkcoffee/android/navigation/Navigator;
.source "FriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/friends/FriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 110
    const-class v0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;)V

    .line 111
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Fragment;>;"
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;)V

    .line 115
    return-void
.end method


# virtual methods
.method public setDisableSpinner()Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->args:Landroid/os/Bundle;

    const-string v1, "disable_spinner"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 134
    return-object p0
.end method

.method public setGlobalSearch(Z)Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;
    .locals 2
    .param p1, "globalSearch"    # Z

    .prologue
    .line 148
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->args:Landroid/os/Bundle;

    const-string v1, "global_search"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 149
    return-object p0
.end method

.method public setMultiSelect()Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->args:Landroid/os/Bundle;

    const-string v1, "multiselect"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 144
    return-object p0
.end method

.method public setMutual(Z)Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;
    .locals 2
    .param p1, "mutual"    # Z

    .prologue
    .line 123
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->args:Landroid/os/Bundle;

    const-string v1, "mutual"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 124
    return-object p0
.end method

.method public setPresetUsers([I)Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;
    .locals 2
    .param p1, "users"    # [I

    .prologue
    .line 153
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->args:Landroid/os/Bundle;

    const-string v1, "selectedUsers"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 154
    return-object p0
.end method

.method public setSearchEnabled(Z)Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 158
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->args:Landroid/os/Bundle;

    const-string v1, "search_enabled"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 159
    return-object p0
.end method

.method public setSelect()Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->args:Landroid/os/Bundle;

    const-string v1, "select"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 129
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->args:Landroid/os/Bundle;

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-object p0
.end method

.method public setUid(I)Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment$Builder;->args:Landroid/os/Bundle;

    const-string v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    return-object p0
.end method
