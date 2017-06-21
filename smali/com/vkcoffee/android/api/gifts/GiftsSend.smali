.class public Lcom/vkcoffee/android/api/gifts/GiftsSend;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "GiftsSend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/gifts/GiftsSend$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/gifts/GiftsSend$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Lcom/vkcoffee/android/api/models/CatalogedGift;Ljava/lang/CharSequence;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "guid"    # I
    .param p4, "gift"    # Lcom/vkcoffee/android/api/models/CatalogedGift;
    .param p5, "message"    # Ljava/lang/CharSequence;
    .param p6, "privacy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;",
            "Lcom/vkcoffee/android/api/models/CatalogedGift;",
            "Ljava/lang/CharSequence;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p3, "users":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/UserProfile;>;"
    const-string/jumbo v2, "gifts.send"

    invoke-direct {p0, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    .line 27
    .local v1, "profile":Lcom/vkcoffee/android/UserProfile;
    iget v3, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 29
    .end local v1    # "profile":Lcom/vkcoffee/android/UserProfile;
    :cond_0
    const-string/jumbo v2, "user_ids"

    const-string/jumbo v3, ","

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/vkcoffee/android/api/gifts/GiftsSend;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 32
    const-string/jumbo v2, "gift_id"

    iget-object v3, p4, Lcom/vkcoffee/android/api/models/CatalogedGift;->gift:Lcom/vkcoffee/android/api/models/Gift;

    iget v3, v3, Lcom/vkcoffee/android/api/models/Gift;->id:I

    invoke-virtual {p0, v2, v3}, Lcom/vkcoffee/android/api/gifts/GiftsSend;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 33
    const-string/jumbo v3, "privacy"

    if-eqz p6, :cond_2

    const-string/jumbo v2, "1"

    :goto_1
    invoke-virtual {p0, v3, v2}, Lcom/vkcoffee/android/api/gifts/GiftsSend;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 34
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 35
    const-string/jumbo v2, "message"

    invoke-interface {p5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/vkcoffee/android/api/gifts/GiftsSend;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 38
    :cond_1
    const-string/jumbo v2, "guid"

    invoke-virtual {p0, v2, p2}, Lcom/vkcoffee/android/api/gifts/GiftsSend;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 40
    const-string/jumbo v3, "no_inapp"

    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "1"

    :goto_2
    invoke-virtual {p0, v3, v2}, Lcom/vkcoffee/android/api/gifts/GiftsSend;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 41
    const-string/jumbo v2, "force_payment"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/vkcoffee/android/api/gifts/GiftsSend;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 42
    return-void

    .line 33
    :cond_2
    const-string/jumbo v2, "0"

    goto :goto_1

    .line 40
    :cond_3
    const-string/jumbo v2, "0"

    goto :goto_2
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/gifts/GiftsSend$Result;
    .locals 2
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 46
    new-instance v0, Lcom/vkcoffee/android/api/gifts/GiftsSend$Result;

    const-string/jumbo v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/gifts/GiftsSend$Result;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/gifts/GiftsSend;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/gifts/GiftsSend$Result;

    move-result-object v0

    return-object v0
.end method
