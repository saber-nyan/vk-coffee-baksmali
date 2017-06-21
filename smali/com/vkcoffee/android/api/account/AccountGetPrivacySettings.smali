.class public Lcom/vkcoffee/android/api/account/AccountGetPrivacySettings;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "AccountGetPrivacySettings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/vkcoffee/android/data/PrivacySection;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    const-string/jumbo v0, "account.getPrivacySettings"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/account/AccountGetPrivacySettings;->parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "r"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/data/PrivacySection;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .local v1, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/PrivacySection;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 27
    .local v4, "sectionsLookup":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/vkcoffee/android/data/PrivacySection;>;"
    const-string/jumbo v6, "response"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 28
    const-string/jumbo v6, "sections"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 29
    .local v3, "sections":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 30
    new-instance v2, Lcom/vkcoffee/android/data/PrivacySection;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/vkcoffee/android/data/PrivacySection;-><init>(Lorg/json/JSONObject;)V

    .line 31
    .local v2, "s":Lcom/vkcoffee/android/data/PrivacySection;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v6, v2, Lcom/vkcoffee/android/data/PrivacySection;->key:Ljava/lang/String;

    invoke-virtual {v4, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    .end local v2    # "s":Lcom/vkcoffee/android/data/PrivacySection;
    :cond_0
    const-string/jumbo v6, "settings"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 35
    .local v5, "settings":Lorg/json/JSONArray;
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 36
    new-instance v2, Lcom/vkcoffee/android/data/PrivacySetting;

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/vkcoffee/android/data/PrivacySetting;-><init>(Lorg/json/JSONObject;)V

    .line 37
    .local v2, "s":Lcom/vkcoffee/android/data/PrivacySetting;
    iget-object v6, v2, Lcom/vkcoffee/android/data/PrivacySetting;->sectionKey:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 38
    iget-object v6, v2, Lcom/vkcoffee/android/data/PrivacySetting;->sectionKey:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/data/PrivacySection;

    iget-object v6, v6, Lcom/vkcoffee/android/data/PrivacySection;->settings:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 40
    :cond_1
    const-string/jumbo v6, "vk"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No section with key "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/vkcoffee/android/data/PrivacySetting;->sectionKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 43
    .end local v2    # "s":Lcom/vkcoffee/android/data/PrivacySetting;
    :cond_2
    return-object v1
.end method
