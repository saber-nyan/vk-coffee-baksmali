.class public Lcom/vk/attachpicker/EditorAnalytics;
.super Ljava/lang/Object;
.source "EditorAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/EditorAnalytics$StickerAction;,
        Lcom/vk/attachpicker/EditorAnalytics$Action;
    }
.end annotation


# static fields
.field private static final TYPE_CROP:Ljava/lang/String; = "crop"

.field private static final TYPE_DRAW:Ljava/lang/String; = "draw"

.field private static final TYPE_EMOJI:Ljava/lang/String; = "emoji"

.field private static final TYPE_ENHANCE:Ljava/lang/String; = "enhance"

.field private static final TYPE_FILTER:Ljava/lang/String; = "filter"

.field private static final TYPE_STICKER:Ljava/lang/String; = "sticker"

.field private static final TYPE_TEXT:Ljava/lang/String; = "text"


# instance fields
.field private final actionsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/vk/attachpicker/EditorAnalytics$Action;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/EditorAnalytics;->actionsMap:Ljava/util/HashMap;

    .line 126
    return-void
.end method

.method private logAction(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "isFinal"    # Z

    .prologue
    .line 41
    iget-object v1, p0, Lcom/vk/attachpicker/EditorAnalytics;->actionsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/EditorAnalytics$Action;

    .line 42
    .local v0, "action":Lcom/vk/attachpicker/EditorAnalytics$Action;
    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/vk/attachpicker/EditorAnalytics$Action;

    .end local v0    # "action":Lcom/vk/attachpicker/EditorAnalytics$Action;
    invoke-direct {v0, p1}, Lcom/vk/attachpicker/EditorAnalytics$Action;-><init>(Ljava/lang/String;)V

    .line 44
    .restart local v0    # "action":Lcom/vk/attachpicker/EditorAnalytics$Action;
    iget-object v1, p0, Lcom/vk/attachpicker/EditorAnalytics;->actionsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_0
    iput-boolean p2, v0, Lcom/vk/attachpicker/EditorAnalytics$Action;->isFinal:Z

    .line 47
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 4

    .prologue
    .line 74
    invoke-static {p0}, Lcom/vk/attachpicker/EditorAnalytics$$Lambda$1;->lambdaFactory$(Lcom/vk/attachpicker/EditorAnalytics;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-static {v0, v2, v3}, Lcom/vk/attachpicker/Picker;->runDelayed(Ljava/lang/Runnable;J)V

    .line 114
    return-void
.end method

.method synthetic lambda$flush$23()V
    .locals 11

    .prologue
    .line 75
    iget-object v7, p0, Lcom/vk/attachpicker/EditorAnalytics;->actionsMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 113
    :goto_0
    return-void

    .line 79
    :cond_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 81
    .local v5, "jo":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v7, "e"

    const-string/jumbo v8, "photoeditor"

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 85
    .local v1, "actions":Lorg/json/JSONArray;
    iget-object v7, p0, Lcom/vk/attachpicker/EditorAnalytics;->actionsMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 86
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/vk/attachpicker/EditorAnalytics$Action;>;"
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 88
    .local v0, "a":Lorg/json/JSONObject;
    const-string/jumbo v9, "action"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vk/attachpicker/EditorAnalytics$Action;

    iget-object v7, v7, Lcom/vk/attachpicker/EditorAnalytics$Action;->title:Ljava/lang/String;

    invoke-virtual {v0, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vk/attachpicker/EditorAnalytics$Action;

    iget-boolean v7, v7, Lcom/vk/attachpicker/EditorAnalytics$Action;->isFinal:Z

    if-eqz v7, :cond_1

    .line 90
    const-string/jumbo v7, "final"

    const/4 v9, 0x1

    invoke-virtual {v0, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 93
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/vk/attachpicker/EditorAnalytics$StickerAction;

    if-eqz v7, :cond_3

    .line 94
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vk/attachpicker/EditorAnalytics$StickerAction;

    .line 95
    .local v6, "stickerAction":Lcom/vk/attachpicker/EditorAnalytics$StickerAction;
    iget-object v7, v6, Lcom/vk/attachpicker/EditorAnalytics$StickerAction;->ids:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 96
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 97
    .local v4, "ja":Lorg/json/JSONArray;
    iget-object v7, v6, Lcom/vk/attachpicker/EditorAnalytics$StickerAction;->ids:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 98
    .local v3, "i":Ljava/lang/String;
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 108
    .end local v0    # "a":Lorg/json/JSONObject;
    .end local v1    # "actions":Lorg/json/JSONArray;
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/vk/attachpicker/EditorAnalytics$Action;>;"
    .end local v3    # "i":Ljava/lang/String;
    .end local v4    # "ja":Lorg/json/JSONArray;
    .end local v6    # "stickerAction":Lcom/vk/attachpicker/EditorAnalytics$StickerAction;
    :catch_0
    move-exception v7

    .line 111
    :goto_3
    const-string/jumbo v7, "tmp"

    invoke-static {v7, v5}, Lcom/vk/attachpicker/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    new-instance v7, Lcom/vkcoffee/android/api/VKAPIRequest;

    const-string/jumbo v8, "stats.trackEvents"

    invoke-direct {v7, v8}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "events"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    goto/16 :goto_0

    .line 100
    .restart local v0    # "a":Lorg/json/JSONObject;
    .restart local v1    # "actions":Lorg/json/JSONArray;
    .restart local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/vk/attachpicker/EditorAnalytics$Action;>;"
    .restart local v4    # "ja":Lorg/json/JSONArray;
    .restart local v6    # "stickerAction":Lcom/vk/attachpicker/EditorAnalytics$StickerAction;
    :cond_2
    :try_start_1
    const-string/jumbo v7, "sticker_ids"

    invoke-virtual {v0, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    .end local v4    # "ja":Lorg/json/JSONArray;
    .end local v6    # "stickerAction":Lcom/vk/attachpicker/EditorAnalytics$StickerAction;
    :cond_3
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_1

    .line 107
    .end local v0    # "a":Lorg/json/JSONObject;
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/vk/attachpicker/EditorAnalytics$Action;>;"
    :cond_4
    const-string/jumbo v7, "actions"

    invoke-virtual {v5, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public logCrop(Z)V
    .locals 1
    .param p1, "isFinal"    # Z

    .prologue
    .line 58
    const-string/jumbo v0, "crop"

    invoke-direct {p0, v0, p1}, Lcom/vk/attachpicker/EditorAnalytics;->logAction(Ljava/lang/String;Z)V

    .line 59
    return-void
.end method

.method public logDraw(Z)V
    .locals 1
    .param p1, "isFinal"    # Z

    .prologue
    .line 70
    const-string/jumbo v0, "draw"

    invoke-direct {p0, v0, p1}, Lcom/vk/attachpicker/EditorAnalytics;->logAction(Ljava/lang/String;Z)V

    .line 71
    return-void
.end method

.method public logEmoji(Z)V
    .locals 1
    .param p1, "isFinal"    # Z

    .prologue
    .line 50
    const-string/jumbo v0, "emoji"

    invoke-direct {p0, v0, p1}, Lcom/vk/attachpicker/EditorAnalytics;->logAction(Ljava/lang/String;Z)V

    .line 51
    return-void
.end method

.method public logEnhance(Z)V
    .locals 1
    .param p1, "isFinal"    # Z

    .prologue
    .line 62
    const-string/jumbo v0, "enhance"

    invoke-direct {p0, v0, p1}, Lcom/vk/attachpicker/EditorAnalytics;->logAction(Ljava/lang/String;Z)V

    .line 63
    return-void
.end method

.method public logFilter(Z)V
    .locals 1
    .param p1, "isFinal"    # Z

    .prologue
    .line 66
    const-string/jumbo v0, "filter"

    invoke-direct {p0, v0, p1}, Lcom/vk/attachpicker/EditorAnalytics;->logAction(Ljava/lang/String;Z)V

    .line 67
    return-void
.end method

.method public logStickers(Ljava/util/Collection;Z)V
    .locals 3
    .param p2, "isFinal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/vk/attachpicker/EditorAnalytics;->actionsMap:Ljava/util/HashMap;

    const-string/jumbo v2, "sticker"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/EditorAnalytics$StickerAction;

    .line 29
    .local v0, "stickerAction":Lcom/vk/attachpicker/EditorAnalytics$StickerAction;
    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/vk/attachpicker/EditorAnalytics$StickerAction;

    .end local v0    # "stickerAction":Lcom/vk/attachpicker/EditorAnalytics$StickerAction;
    const-string/jumbo v1, "sticker"

    invoke-direct {v0, v1}, Lcom/vk/attachpicker/EditorAnalytics$StickerAction;-><init>(Ljava/lang/String;)V

    .line 31
    .restart local v0    # "stickerAction":Lcom/vk/attachpicker/EditorAnalytics$StickerAction;
    iget-object v1, p0, Lcom/vk/attachpicker/EditorAnalytics;->actionsMap:Ljava/util/HashMap;

    const-string/jumbo v2, "sticker"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_0
    iget-object v1, v0, Lcom/vk/attachpicker/EditorAnalytics$StickerAction;->ids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 34
    if-eqz p1, :cond_1

    .line 35
    iget-object v1, v0, Lcom/vk/attachpicker/EditorAnalytics$StickerAction;->ids:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 37
    :cond_1
    iput-boolean p2, v0, Lcom/vk/attachpicker/EditorAnalytics$StickerAction;->isFinal:Z

    .line 38
    return-void
.end method

.method public logText(Z)V
    .locals 1
    .param p1, "isFinal"    # Z

    .prologue
    .line 54
    const-string/jumbo v0, "text"

    invoke-direct {p0, v0, p1}, Lcom/vk/attachpicker/EditorAnalytics;->logAction(Ljava/lang/String;Z)V

    .line 55
    return-void
.end method
