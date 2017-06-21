.class public Lcom/vkcoffee/android/api/store/StoreSetActive;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "StoreSetActive.java"


# direct methods
.method public constructor <init>(IZ)V
    .locals 2
    .param p1, "item"    # I
    .param p2, "active"    # Z

    .prologue
    .line 10
    if-eqz p2, :cond_0

    const-string/jumbo v0, "store.activateProduct"

    :goto_0
    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 11
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "stickers"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/store/StoreSetActive;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 12
    const-string/jumbo v0, "product_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/store/StoreSetActive;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 13
    return-void

    .line 10
    :cond_0
    const-string/jumbo v0, "store.deactivateProduct"

    goto :goto_0
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;->parse(Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

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
    .line 7
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/store/StoreSetActive;->parse(Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
