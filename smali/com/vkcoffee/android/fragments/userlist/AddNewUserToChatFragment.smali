.class public Lcom/vkcoffee/android/fragments/userlist/AddNewUserToChatFragment;
.super Lcom/vkcoffee/android/fragments/friends/FriendsFragment;
.source "AddNewUserToChatFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/userlist/AddNewUserToChatFragment$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method protected doLoadData()V
    .locals 4

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/userlist/AddNewUserToChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "ids"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 24
    .local v0, "ids":[I
    invoke-static {p0, v0}, Lcom/vkcoffee/android/fragments/userlist/AddNewUserToChatFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/userlist/AddNewUserToChatFragment;[I)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/vkcoffee/android/functions/Functions;->postDelayed(Ljava/lang/Runnable;J)V

    .line 39
    return-void
.end method

.method synthetic lambda$doLoadData$614([I)V
    .locals 7

    .prologue
    .line 25
    new-instance v3, Lcom/vkcoffee/android/data/VKList;

    invoke-direct {v3}, Lcom/vkcoffee/android/data/VKList;-><init>()V

    .line 26
    .local v3, "userProfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-static {v3}, Lcom/vkcoffee/android/data/Friends;->getFriends(Ljava/util/ArrayList;)V

    .line 27
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 28
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkcoffee/android/UserProfile;>;"
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/UserProfile;

    .line 30
    .local v2, "userProfile":Lcom/vkcoffee/android/UserProfile;
    array-length v5, p1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_0

    aget v0, p1, v4

    .line 31
    .local v0, "id":I
    iget v6, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-ne v6, v0, :cond_1

    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 30
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 37
    .end local v0    # "id":I
    .end local v2    # "userProfile":Lcom/vkcoffee/android/UserProfile;
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/userlist/AddNewUserToChatFragment;->setData(Ljava/util/List;)V

    .line 38
    return-void
.end method
