.class Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$1;
.super Ljava/lang/Object;
.source "RequestsFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;->doLoadData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/api/Callback",
        "<",
        "Lcom/vkcoffee/android/data/VKList",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 1
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;->onError(Lme/grishka/appkit/api/ErrorResponse;)V

    .line 62
    return-void
.end method

.method public success(Lcom/vkcoffee/android/data/VKList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/data/VKList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "result":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/UserProfile;>;"
    new-instance v2, Lcom/vkcoffee/android/data/VKList;

    invoke-direct {v2}, Lcom/vkcoffee/android/data/VKList;-><init>()V

    .line 49
    .local v2, "r":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/api/FriendRequest;>;"
    invoke-virtual {p1}, Lcom/vkcoffee/android/data/VKList;->total()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/data/VKList;->setTotal(I)V

    .line 50
    invoke-virtual {p1}, Lcom/vkcoffee/android/data/VKList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    .line 51
    .local v1, "p":Lcom/vkcoffee/android/UserProfile;
    new-instance v0, Lcom/vkcoffee/android/api/FriendRequest;

    invoke-direct {v0}, Lcom/vkcoffee/android/api/FriendRequest;-><init>()V

    .line 52
    .local v0, "f":Lcom/vkcoffee/android/api/FriendRequest;
    const-string/jumbo v4, ""

    iput-object v4, v0, Lcom/vkcoffee/android/api/FriendRequest;->message:Ljava/lang/String;

    iput-object v4, v0, Lcom/vkcoffee/android/api/FriendRequest;->info:Ljava/lang/String;

    .line 53
    iput-object v1, v0, Lcom/vkcoffee/android/api/FriendRequest;->profile:Lcom/vkcoffee/android/UserProfile;

    .line 54
    invoke-virtual {v2, v0}, Lcom/vkcoffee/android/data/VKList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    .end local v0    # "f":Lcom/vkcoffee/android/api/FriendRequest;
    .end local v1    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;

    invoke-virtual {v3, v2}, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment;->onDataLoaded(Lme/grishka/appkit/api/PaginatedList;)V

    .line 57
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 45
    check-cast p1, Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$1;->success(Lcom/vkcoffee/android/data/VKList;)V

    return-void
.end method
