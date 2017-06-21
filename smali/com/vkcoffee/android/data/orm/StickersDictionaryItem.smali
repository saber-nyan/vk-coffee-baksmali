.class public Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;
.super Ljava/lang/Object;
.source "StickersDictionaryItem.java"


# instance fields
.field public base_url:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public dictionary_key:Ljava/lang/String;

.field public promoted_stickers:[I

.field public user_stickers:[I

.field public words:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v6, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string/jumbo v4, "words"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 34
    .local v3, "jsonWordsArray":Lorg/json/JSONArray;
    if-eqz v3, :cond_0

    .line 35
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;->words:[Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;->words:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 37
    iget-object v4, p0, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;->words:[Ljava/lang/String;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    .end local v0    # "i":I
    :cond_0
    new-array v4, v6, [Ljava/lang/String;

    iput-object v4, p0, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;->words:[Ljava/lang/String;

    .line 44
    :cond_1
    const-string/jumbo v4, "user_stickers"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 45
    .local v2, "jsonUserStickersArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_2

    .line 46
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;->user_stickers:[I

    .line 47
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v4, p0, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;->user_stickers:[I

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 48
    iget-object v4, p0, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;->user_stickers:[I

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v5

    aput v5, v4, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 52
    .end local v0    # "i":I
    :cond_2
    new-array v4, v6, [I

    iput-object v4, p0, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;->user_stickers:[I

    .line 55
    :cond_3
    const-string/jumbo v4, "promoted_stickers"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 56
    .local v1, "jsonPromotedStickersArray":Lorg/json/JSONArray;
    if-eqz v1, :cond_4

    .line 57
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;->promoted_stickers:[I

    .line 58
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v4, p0, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;->promoted_stickers:[I

    array-length v4, v4

    if-ge v0, v4, :cond_5

    .line 59
    iget-object v4, p0, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;->promoted_stickers:[I

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v5

    aput v5, v4, v0

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 63
    .end local v0    # "i":I
    :cond_4
    new-array v4, v6, [I

    iput-object v4, p0, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;->promoted_stickers:[I

    .line 66
    :cond_5
    return-void
.end method
