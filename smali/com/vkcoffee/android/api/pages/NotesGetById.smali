.class public Lcom/vkcoffee/android/api/pages/NotesGetById;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "NotesGetById.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/pages/NotesGetById$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/pages/NotesGetById$Result;",
        ">;"
    }
.end annotation


# instance fields
.field callback:Lcom/vkcoffee/android/api/Callback;


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "oid"    # I
    .param p2, "nid"    # I

    .prologue
    .line 12
    const-string/jumbo v0, "notes.getById"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 13
    const-string/jumbo v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/pages/NotesGetById;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "note_id"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 14
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/pages/NotesGetById$Result;
    .locals 3
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 18
    :try_start_0
    new-instance v0, Lcom/vkcoffee/android/api/pages/NotesGetById$Result;

    invoke-direct {v0}, Lcom/vkcoffee/android/api/pages/NotesGetById$Result;-><init>()V

    .line 19
    .local v0, "res":Lcom/vkcoffee/android/api/pages/NotesGetById$Result;
    const-string/jumbo v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "view_url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkcoffee/android/api/pages/NotesGetById$Result;->url:Ljava/lang/String;

    .line 20
    const-string/jumbo v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkcoffee/android/api/pages/NotesGetById$Result;->title:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .end local v0    # "res":Lcom/vkcoffee/android/api/pages/NotesGetById$Result;
    :goto_0
    return-object v0

    .line 22
    :catch_0
    move-exception v1

    .line 24
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
    .line 8
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/pages/NotesGetById;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/pages/NotesGetById$Result;

    move-result-object v0

    return-object v0
.end method
