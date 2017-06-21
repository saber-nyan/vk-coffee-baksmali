.class public Lcom/vkcoffee/android/api/groups/GroupsAddLink;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "GroupsAddLink.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "gid"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .prologue
    .line 15
    const-string/jumbo v0, "groups.addLink"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 16
    const-string/jumbo v0, "group_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/groups/GroupsAddLink;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 17
    const-string/jumbo v0, "link"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/groups/GroupsAddLink;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 18
    const-string/jumbo v0, "text"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/groups/GroupsAddLink;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 19
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/UserProfile;
    .locals 8
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v4, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 23
    :try_start_0
    const-string/jumbo v5, "response"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 24
    .local v1, "r":Lorg/json/JSONObject;
    new-instance v0, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v0}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 25
    .local v0, "p":Lcom/vkcoffee/android/UserProfile;
    const-string/jumbo v5, "id"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 26
    const-string/jumbo v5, "name"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 27
    const-string/jumbo v5, "desc"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    .line 28
    sget v5, Lcom/vkcoffee/android/Global;->displayDensity:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_1

    const-string/jumbo v5, "photo_100"

    :goto_0
    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 29
    const-string/jumbo v5, "url"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/vkcoffee/android/UserProfile;->bdate:Ljava/lang/String;

    .line 30
    const-string/jumbo v5, "edit_title"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/vkcoffee/android/UserProfile;->online:I

    .line 31
    iget-object v5, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 32
    sget v5, Lcom/vkcoffee/android/Global;->displayDensity:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_2

    const/16 v2, 0x64

    .line 33
    .local v2, "size":I
    :goto_1
    iget-object v5, v0, Lcom/vkcoffee/android/UserProfile;->bdate:Ljava/lang/String;

    const-string/jumbo v6, "//vk.com/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "http://vk.com/images/lnkinner"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".gif"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    iput-object v5, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 39
    .end local v0    # "p":Lcom/vkcoffee/android/UserProfile;
    .end local v1    # "r":Lorg/json/JSONObject;
    .end local v2    # "size":I
    :cond_0
    :goto_3
    return-object v0

    .line 28
    .restart local v0    # "p":Lcom/vkcoffee/android/UserProfile;
    .restart local v1    # "r":Lorg/json/JSONObject;
    :cond_1
    const-string/jumbo v5, "photo_50"

    goto :goto_0

    .line 32
    :cond_2
    const/16 v2, 0x32

    goto :goto_1

    .line 33
    .restart local v2    # "size":I
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "http://vk.com/images/lnkouter"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".gif"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_2

    .line 36
    .end local v0    # "p":Lcom/vkcoffee/android/UserProfile;
    .end local v1    # "r":Lorg/json/JSONObject;
    .end local v2    # "size":I
    :catch_0
    move-exception v3

    .line 37
    .local v3, "x":Ljava/lang/Exception;
    const-string/jumbo v5, "vk"

    invoke-static {v5, v3}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v4

    .line 39
    goto :goto_3
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/groups/GroupsAddLink;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/UserProfile;

    move-result-object v0

    return-object v0
.end method
