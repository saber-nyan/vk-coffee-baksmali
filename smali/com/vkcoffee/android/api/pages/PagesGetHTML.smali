.class public Lcom/vkcoffee/android/api/pages/PagesGetHTML;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "PagesGetHTML.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/pages/PagesGetHTML$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/pages/PagesGetHTML$Result;",
        ">;"
    }
.end annotation


# instance fields
.field callback:Lcom/vkcoffee/android/api/Callback;

.field private needMeta:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 7
    .param p1, "oid"    # I
    .param p2, "pid"    # I
    .param p3, "isSite"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 19
    const-string/jumbo v2, "execute"

    invoke-direct {p0, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 16
    iput-boolean v1, p0, Lcom/vkcoffee/android/api/pages/PagesGetHTML;->needMeta:Z

    .line 20
    iput-boolean p3, p0, Lcom/vkcoffee/android/api/pages/PagesGetHTML;->needMeta:Z

    .line 21
    const-string/jumbo v2, "code"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "var p=API.pages.get({owner_id:%1$d,page_id:%2$d,need_html:1,site_preview:%3$d}); p=p+{source: \"\"}; if(%3$d==1){if(p.group_id>0){var g=API.groups.getById({group_id: p.group_id})[0]; p=p+{group_photo: g.photo_100, group_name: g.name};}if(p.group_id<0){var g=API.users.get({user_ids: -p.group_id, fields:\"photo_100,photo_50,first_name_gen,last_name_gen\"})[0]; p=p+{group_photo: g.photo_100, group_name: g.first_name+\" \"+g.last_name, name_gen: g.first_name_gen+\" \"+g.last_name_gen};}} return p;"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v6, 0x2

    if-eqz p3, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    .line 21
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/vkcoffee/android/api/pages/PagesGetHTML;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 28
    return-void

    :cond_0
    move v0, v1

    .line 27
    goto :goto_0
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "oid"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 37
    const-string/jumbo v0, "execute"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/api/pages/PagesGetHTML;->needMeta:Z

    .line 38
    const-string/jumbo v0, "code"

    const-string/jumbo v1, "var p=API.pages.get({title:Args.title,owner_id:Args.oid,need_html:1}); p=p+{source: \"\"}; return p;"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/pages/PagesGetHTML;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 39
    const-string/jumbo v0, "title"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/pages/PagesGetHTML;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 40
    const-string/jumbo v0, "oid"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/pages/PagesGetHTML;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 31
    const-string/jumbo v0, "execute"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/api/pages/PagesGetHTML;->needMeta:Z

    .line 32
    const-string/jumbo v0, "code"

    const-string/jumbo v1, "var p=API.pages.get({title:Args.title,global:1,need_html:1}); p=p+{source: \"\"}; return p;"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/pages/PagesGetHTML;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 33
    const-string/jumbo v0, "title"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/pages/PagesGetHTML;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 34
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/pages/PagesGetHTML$Result;
    .locals 7
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/vkcoffee/android/api/APIException;
        }
    .end annotation

    .prologue
    .line 44
    const-string/jumbo v4, "execute_errors"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 47
    const-string/jumbo v4, "execute_errors"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 48
    .local v0, "je":Lorg/json/JSONObject;
    new-instance v4, Lcom/vkcoffee/android/api/APIException;

    const-string/jumbo v5, "error_code"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "error_msg"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/vkcoffee/android/api/APIException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 50
    .end local v0    # "je":Lorg/json/JSONObject;
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 51
    .local v1, "meta":Landroid/os/Bundle;
    const-string/jumbo v4, "response"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 52
    .local v2, "r":Lorg/json/JSONObject;
    iget-boolean v4, p0, Lcom/vkcoffee/android/api/pages/PagesGetHTML;->needMeta:Z

    if-eqz v4, :cond_1

    .line 53
    const-string/jumbo v4, "title"

    const-string/jumbo v5, "title"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string/jumbo v4, "url"

    const-string/jumbo v5, "url"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string/jumbo v4, "date"

    const-string/jumbo v5, "created"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
    const-string/jumbo v4, "views"

    const-string/jumbo v5, "views"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 57
    const-string/jumbo v4, "group_id"

    const-string/jumbo v5, "group_id"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 58
    const-string/jumbo v4, "group_name"

    const-string/jumbo v5, "group_name"

    const-string/jumbo v6, ""

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string/jumbo v4, "group_photo"

    const-string/jumbo v5, "group_photo"

    const-string/jumbo v6, ""

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string/jumbo v4, "name_gen"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 61
    const-string/jumbo v4, "name_gen"

    const-string/jumbo v5, "name_gen"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_1
    new-instance v3, Lcom/vkcoffee/android/api/pages/PagesGetHTML$Result;

    invoke-direct {v3}, Lcom/vkcoffee/android/api/pages/PagesGetHTML$Result;-><init>()V

    .line 66
    .local v3, "res":Lcom/vkcoffee/android/api/pages/PagesGetHTML$Result;
    const-string/jumbo v4, "view_url"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/vkcoffee/android/api/pages/PagesGetHTML$Result;->url:Ljava/lang/String;

    .line 67
    const-string/jumbo v4, "title"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/vkcoffee/android/api/pages/PagesGetHTML$Result;->title:Ljava/lang/String;

    .line 68
    iput-object v1, v3, Lcom/vkcoffee/android/api/pages/PagesGetHTML$Result;->meta:Landroid/os/Bundle;

    .line 69
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
    .line 14
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/pages/PagesGetHTML;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/pages/PagesGetHTML$Result;

    move-result-object v0

    return-object v0
.end method
