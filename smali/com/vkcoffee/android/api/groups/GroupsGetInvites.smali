.class public Lcom/vkcoffee/android/api/groups/GroupsGetInvites;
.super Lcom/vkcoffee/android/api/ListAPIRequest;
.source "GroupsGetInvites.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/ListAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/GroupInvitation;",
        ">;"
    }
.end annotation


# instance fields
.field private inviters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 21
    const-string/jumbo v0, "groups.getInvites"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ListAPIRequest;-><init>(Ljava/lang/String;)V

    .line 18
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetInvites;->inviters:Landroid/util/SparseArray;

    .line 22
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/groups/GroupsGetInvites;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 23
    const-string/jumbo v0, "count"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/groups/GroupsGetInvites;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 24
    const-string/jumbo v0, "extended"

    const-string/jumbo v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/groups/GroupsGetInvites;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 25
    const-string/jumbo v0, "fields"

    const-string/jumbo v1, "start_date,members_count,verified"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/groups/GroupsGetInvites;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 26
    new-instance v0, Lcom/vkcoffee/android/api/groups/GroupsGetInvites$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/api/groups/GroupsGetInvites$1;-><init>(Lcom/vkcoffee/android/api/groups/GroupsGetInvites;)V

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/api/groups/GroupsGetInvites;->setParser(Lcom/vkcoffee/android/data/Parser;)V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/api/groups/GroupsGetInvites;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/api/groups/GroupsGetInvites;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetInvites;->inviters:Landroid/util/SparseArray;

    return-object v0
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/VKList;
    .locals 5
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/vkcoffee/android/data/VKList",
            "<",
            "Lcom/vkcoffee/android/api/GroupInvitation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 39
    const-string/jumbo v3, "response"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "profiles"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 40
    .local v2, "users":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 41
    new-instance v1, Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/vkcoffee/android/UserProfile;-><init>(Lorg/json/JSONObject;)V

    .line 42
    .local v1, "p":Lcom/vkcoffee/android/UserProfile;
    iget-object v3, p0, Lcom/vkcoffee/android/api/groups/GroupsGetInvites;->inviters:Landroid/util/SparseArray;

    iget v4, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    .end local v1    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_0
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/ListAPIRequest;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/VKList;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/groups/GroupsGetInvites;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/VKList;

    move-result-object v0

    return-object v0
.end method
