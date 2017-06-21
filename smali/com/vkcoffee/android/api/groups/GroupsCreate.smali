.class public Lcom/vkcoffee/android/api/groups/GroupsCreate;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "GroupsCreate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/Group;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "subtype"    # I

    .prologue
    .line 15
    const-string/jumbo v0, "groups.create"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 16
    const-string/jumbo v0, "title"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/groups/GroupsCreate;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "subtype"

    invoke-virtual {v0, v1, p3}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 17
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/Group;
    .locals 3
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 22
    :try_start_0
    new-instance v0, Lcom/vkcoffee/android/api/Group;

    const-string/jumbo v2, "response"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/vkcoffee/android/api/Group;-><init>(Lorg/json/JSONObject;)V

    .line 23
    .local v0, "result":Lcom/vkcoffee/android/api/Group;
    const/4 v2, 0x1

    iput v2, v0, Lcom/vkcoffee/android/api/Group;->members_count:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .end local v0    # "result":Lcom/vkcoffee/android/api/Group;
    :goto_0
    return-object v0

    .line 25
    :catch_0
    move-exception v1

    .line 26
    .local v1, "x":Ljava/lang/Exception;
    const-string/jumbo v2, "vk"

    invoke-static {v2, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/groups/GroupsCreate;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/Group;

    move-result-object v0

    return-object v0
.end method
