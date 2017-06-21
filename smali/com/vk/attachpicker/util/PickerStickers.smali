.class public Lcom/vk/attachpicker/util/PickerStickers;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "PickerStickers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/util/PickerStickers$PickerStickersResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vk/attachpicker/util/PickerStickers$PickerStickersResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final BASE_URL_KEY:Ljava/lang/String; = "baseUrl"

.field private static final STICKER_IDS_KEY:Ljava/lang/String; = "stickerIds"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, "photos.getEditorStickers"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method static synthetic access$000([I)Lorg/json/JSONArray;
    .locals 1
    .param p0, "x0"    # [I

    .prologue
    .line 8
    invoke-static {p0}, Lcom/vk/attachpicker/util/PickerStickers;->intArray([I)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static getCached()Lcom/vk/attachpicker/util/PickerStickers$PickerStickersResult;
    .locals 5

    .prologue
    .line 14
    new-instance v1, Lcom/vk/attachpicker/util/PickerStickers$PickerStickersResult;

    invoke-direct {v1}, Lcom/vk/attachpicker/util/PickerStickers$PickerStickersResult;-><init>()V

    .line 15
    .local v1, "res":Lcom/vk/attachpicker/util/PickerStickers$PickerStickersResult;
    invoke-static {}, Lcom/vk/attachpicker/util/Prefs;->pickerPrefs()Lcom/vk/attachpicker/util/Prefs;

    move-result-object v2

    const-string/jumbo v3, "baseUrl"

    invoke-virtual {v2, v3}, Lcom/vk/attachpicker/util/Prefs;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/vk/attachpicker/util/PickerStickers$PickerStickersResult;->baseUrl:Ljava/lang/String;

    .line 17
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-static {}, Lcom/vk/attachpicker/util/Prefs;->pickerPrefs()Lcom/vk/attachpicker/util/Prefs;

    move-result-object v3

    const-string/jumbo v4, "stickerIds"

    invoke-virtual {v3, v4}, Lcom/vk/attachpicker/util/Prefs;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/vk/attachpicker/util/PickerStickers;->parseIntArray(Lorg/json/JSONArray;)[I

    move-result-object v2

    iput-object v2, v1, Lcom/vk/attachpicker/util/PickerStickers$PickerStickersResult;->stickerIds:[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :goto_0
    return-object v1

    .line 18
    :catch_0
    move-exception v0

    .line 19
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/vk/attachpicker/util/PickerStickers$PickerStickersResult;->stickerIds:[I

    goto :goto_0
.end method

.method private static intArray([I)Lorg/json/JSONArray;
    .locals 3
    .param p0, "array"    # [I

    .prologue
    .line 62
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 63
    .local v1, "jsonArray":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 64
    aget v2, p0, v0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    return-object v1
.end method

.method private static parseIntArray(Lorg/json/JSONArray;)[I
    .locals 3
    .param p0, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 54
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v0, v2, [I

    .line 55
    .local v0, "arr":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 56
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v2

    aput v2, v0, v1

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_0
    return-object v0
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vk/attachpicker/util/PickerStickers$PickerStickersResult;
    .locals 3
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 31
    :try_start_0
    const-string/jumbo v2, "response"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 32
    .local v0, "p":Lorg/json/JSONObject;
    new-instance v1, Lcom/vk/attachpicker/util/PickerStickers$PickerStickersResult;

    invoke-direct {v1}, Lcom/vk/attachpicker/util/PickerStickers$PickerStickersResult;-><init>()V

    .line 33
    .local v1, "r":Lcom/vk/attachpicker/util/PickerStickers$PickerStickersResult;
    const-string/jumbo v2, "base_url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/vk/attachpicker/util/PickerStickers$PickerStickersResult;->baseUrl:Ljava/lang/String;

    .line 34
    const-string/jumbo v2, "sticker_ids"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/vk/attachpicker/util/PickerStickers;->parseIntArray(Lorg/json/JSONArray;)[I

    move-result-object v2

    iput-object v2, v1, Lcom/vk/attachpicker/util/PickerStickers$PickerStickersResult;->stickerIds:[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .end local v0    # "p":Lorg/json/JSONObject;
    .end local v1    # "r":Lcom/vk/attachpicker/util/PickerStickers$PickerStickersResult;
    :goto_0
    return-object v1

    .line 36
    :catch_0
    move-exception v2

    .line 38
    const/4 v1, 0x0

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
    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/util/PickerStickers;->parse(Lorg/json/JSONObject;)Lcom/vk/attachpicker/util/PickerStickers$PickerStickersResult;

    move-result-object v0

    return-object v0
.end method
