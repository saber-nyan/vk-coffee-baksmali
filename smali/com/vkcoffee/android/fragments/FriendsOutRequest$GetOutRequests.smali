.class public Lcom/vkcoffee/android/fragments/FriendsOutRequest$GetOutRequests;
.super Lcom/vkcoffee/android/api/ListAPIRequest;
.source "FriendsOutRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/FriendsOutRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetOutRequests"
.end annotation


# instance fields
.field public code:Ljava/lang/String;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/FriendsOutRequest;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/FriendsOutRequest;II)V
    .locals 2
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 58
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/FriendsOutRequest$GetOutRequests;->this$0:Lcom/vkcoffee/android/fragments/FriendsOutRequest;

    .line 59
    const-string v0, "execute"

    const-class v1, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/api/ListAPIRequest;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 51
    const-string v0, "var users;var offset = Args.offset;var count = Args.count;var a = API.friends.getRequests({\"out\": 1, \"offset\": offset, \"count\": count});return {\"count\": a.count, \"items\": API.users.get({\"user_ids\": a.items, \"fields\": \"online,verified,photo_100,photo_200,photo_50\"})};"

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/FriendsOutRequest$GetOutRequests;->code:Ljava/lang/String;

    .line 60
    const-string v0, "code"

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/FriendsOutRequest$GetOutRequests;->code:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/fragments/FriendsOutRequest$GetOutRequests;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string v1, "offset"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1, p3}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 61
    return-void
.end method
