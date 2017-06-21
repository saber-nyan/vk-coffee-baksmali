.class public Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "AccountSaveProfileInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "cancelNameReq"    # I

    .prologue
    .line 44
    const-string/jumbo v0, "account.saveProfileInfo"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 45
    const-string/jumbo v0, "cancel_request_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "info"    # Landroid/os/Bundle;

    .prologue
    .line 14
    const-string/jumbo v1, "execute.saveProfileInfo"

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 15
    const-string/jumbo v1, "first_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    const-string/jumbo v1, "first_name"

    const-string/jumbo v2, "first_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 17
    const-string/jumbo v1, "last_name"

    const-string/jumbo v2, "last_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 19
    :cond_0
    const-string/jumbo v1, "gender"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 20
    const-string/jumbo v1, "sex"

    const-string/jumbo v2, "gender"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 22
    :cond_1
    const-string/jumbo v1, "relation"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 23
    const-string/jumbo v1, "relation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "relation"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 25
    :cond_2
    const-string/jumbo v1, "relation_partner"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 26
    const-string/jumbo v1, "relation_partner"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    .line 27
    .local v0, "p":Lcom/vkcoffee/android/UserProfile;
    const-string/jumbo v2, "relation_partner_id"

    if-eqz v0, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v2, v1}, Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 29
    .end local v0    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_3
    const-string/jumbo v1, "bday"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 30
    const-string/jumbo v1, "bdate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bday"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "bmonth"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "byear"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 32
    :cond_4
    const-string/jumbo v1, "bdate_vis"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 33
    const-string/jumbo v1, "bdate_visibility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bdate_vis"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 35
    :cond_5
    const-string/jumbo v1, "country_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 36
    const-string/jumbo v1, "country_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "country_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 38
    :cond_6
    const-string/jumbo v1, "city_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 39
    const-string/jumbo v1, "city_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "city_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 41
    :cond_7
    return-void

    .line 27
    .restart local v0    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_8
    const-string/jumbo v1, "0"

    goto/16 :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 49
    const-string/jumbo v0, "account.saveProfileInfo"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 50
    const-string/jumbo v0, "screen_name"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 51
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo$Result;
    .locals 10
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v5, 0x0

    .line 55
    :try_start_0
    const-string/jumbo v4, "response"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 56
    .local v1, "r":Lorg/json/JSONObject;
    const-string/jumbo v4, "name_request"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 57
    const-string/jumbo v4, "name_request"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 58
    .local v0, "nreq":Lorg/json/JSONObject;
    const-string/jumbo v4, "status"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "status":Ljava/lang/String;
    const-string/jumbo v4, "processing"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 60
    new-instance v4, Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo$Result;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo$Result;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 76
    .end local v0    # "nreq":Lorg/json/JSONObject;
    .end local v1    # "r":Lorg/json/JSONObject;
    .end local v2    # "status":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 62
    .restart local v0    # "nreq":Lorg/json/JSONObject;
    .restart local v1    # "r":Lorg/json/JSONObject;
    .restart local v2    # "status":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "declined"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 63
    new-instance v4, Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo$Result;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo$Result;-><init>(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    .end local v0    # "nreq":Lorg/json/JSONObject;
    .end local v1    # "r":Lorg/json/JSONObject;
    .end local v2    # "status":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 74
    .local v3, "x":Ljava/lang/Exception;
    const-string/jumbo v4, "vk"

    invoke-static {v4, v3}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v5

    .line 76
    goto :goto_0

    .line 65
    .end local v3    # "x":Ljava/lang/Exception;
    .restart local v0    # "nreq":Lorg/json/JSONObject;
    .restart local v1    # "r":Lorg/json/JSONObject;
    .restart local v2    # "status":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string/jumbo v4, "was_accepted"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 66
    new-instance v4, Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo$Result;

    const/4 v6, 0x3

    const-string/jumbo v7, "repeat_date"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo$Result;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_2
    const-string/jumbo v4, "was_declined"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 69
    new-instance v4, Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo$Result;

    const/4 v6, 0x4

    const-string/jumbo v7, "repeat_date"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo$Result;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    .end local v0    # "nreq":Lorg/json/JSONObject;
    .end local v2    # "status":Ljava/lang/String;
    :cond_3
    new-instance v4, Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo$Result;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "new_first"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "new_last"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo$Result;-><init>(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

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
    .line 11
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo$Result;

    move-result-object v0

    return-object v0
.end method
