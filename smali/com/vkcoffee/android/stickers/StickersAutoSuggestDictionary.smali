.class public Lcom/vkcoffee/android/stickers/StickersAutoSuggestDictionary;
.super Ljava/lang/Object;
.source "StickersAutoSuggestDictionary.java"


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "StickersSuggestDict.dat"

.field public static final MAX_TEXT_LENGTH:I = 0x28


# instance fields
.field private mBaseUrl:Ljava/lang/String;

.field private mStickersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/StickersAutoSuggestDictionary;->mStickersMap:Ljava/util/Map;

    .line 54
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/StickersAutoSuggestDictionary;->mBaseUrl:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private addItem(Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;)V
    .locals 5
    .param p1, "dictionaryItem"    # Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;

    .prologue
    .line 83
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;->words:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 92
    :cond_0
    return-void

    .line 87
    :cond_1
    iget-object v2, p1, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;->words:[Ljava/lang/String;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 88
    .local v0, "keyword":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 89
    iget-object v4, p0, Lcom/vkcoffee/android/stickers/StickersAutoSuggestDictionary;->mStickersMap:Ljava/util/Map;

    invoke-interface {v4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static createInstance()Lcom/vkcoffee/android/stickers/StickersAutoSuggestDictionary;
    .locals 6

    .prologue
    .line 36
    const-string/jumbo v3, "StickersSuggestDict.dat"

    invoke-static {v3}, Lcom/vkcoffee/android/stickers/StickersAutoSuggestDictionary;->tryReadFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "jsonStr":Ljava/lang/String;
    new-instance v1, Lcom/vkcoffee/android/stickers/StickersAutoSuggestDictionary;

    invoke-direct {v1}, Lcom/vkcoffee/android/stickers/StickersAutoSuggestDictionary;-><init>()V

    .line 40
    .local v1, "instance":Lcom/vkcoffee/android/stickers/StickersAutoSuggestDictionary;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 42
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lcom/vkcoffee/android/stickers/StickersAutoSuggestDictionary;->initializeWith(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :cond_0
    :goto_0
    return-object v1

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "StickersAutoSuggestDictionary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to initialize with json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initializeWith(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "source"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 119
    if-eqz p1, :cond_0

    .line 120
    const-string/jumbo v3, "response"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 121
    .local v2, "response":Lorg/json/JSONObject;
    const-string/jumbo v3, "base_url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/stickers/StickersAutoSuggestDictionary;->mBaseUrl:Ljava/lang/String;

    .line 123
    const-string/jumbo v3, "dictionary"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 125
    .local v1, "jsonDict":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 126
    new-instance v3, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {p0, v3}, Lcom/vkcoffee/android/stickers/StickersAutoSuggestDictionary;->addItem(Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;)V

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    .end local v0    # "i":I
    .end local v1    # "jsonDict":Lorg/json/JSONArray;
    .end local v2    # "response":Lorg/json/JSONObject;
    :cond_0
    return-void
.end method

.method private prepareTextForLookup(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "enteredText"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 95
    const/16 v0, 0x451

    const/16 v1, 0x435

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 97
    :goto_0
    const-string/jumbo v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const-string/jumbo v0, "  "

    const-string/jumbo v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 102
    :cond_0
    const-string/jumbo v0, "^\\s+"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 103
    return-object p1
.end method

.method private static tryReadFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 144
    const-string/jumbo v5, ""

    .line 147
    .local v5, "ret":Ljava/lang/String;
    :try_start_0
    sget-object v7, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v7, p0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 149
    .local v2, "inputStream":Ljava/io/InputStream;
    if-eqz v2, :cond_0

    .line 150
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 151
    .local v3, "inputStreamReader":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 152
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    const-string/jumbo v4, ""

    .line 153
    .local v4, "receiveString":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .local v6, "stringBuilder":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 156
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v4    # "receiveString":Ljava/lang/String;
    .end local v6    # "stringBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "StickersAutoSuggestDictionary"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Can not read file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object v5

    .line 159
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v4    # "receiveString":Ljava/lang/String;
    .restart local v6    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 160
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_1
.end method

.method private static writeToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "outputString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 133
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 135
    .local v1, "outputStreamWriter":Ljava/io/OutputStreamWriter;
    invoke-virtual {v1, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v1    # "outputStreamWriter":Ljava/io/OutputStreamWriter;
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "StickersAutoSuggestDictionary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "File write failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public clearAndSave()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 108
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/StickersAutoSuggestDictionary;->mBaseUrl:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickersAutoSuggestDictionary;->mStickersMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/stickers/StickersAutoSuggestDictionary;->initializeWithJsonAndSave(Lorg/json/JSONObject;)V

    .line 111
    return-void
.end method

.method public getAutoSuggestStickersFor(Ljava/lang/String;)Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;
    .locals 4
    .param p1, "enteredText"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 58
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x28

    if-le v2, v3, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-object v1

    .line 62
    :cond_1
    const-string/jumbo v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/StickersAutoSuggestDictionary;->mBaseUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/stickers/StickersAutoSuggestDictionary;->prepareTextForLookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "dictKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/StickersAutoSuggestDictionary;->mStickersMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;

    .line 74
    .local v1, "item":Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;
    if-eqz v1, :cond_0

    .line 75
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/StickersAutoSuggestDictionary;->mBaseUrl:Ljava/lang/String;

    iput-object v2, v1, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;->base_url:Ljava/lang/String;

    .line 76
    iput-object v0, v1, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;->dictionary_key:Ljava/lang/String;

    goto :goto_0
.end method

.method public initializeWithJsonAndSave(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "source"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/stickers/StickersAutoSuggestDictionary;->initializeWith(Lorg/json/JSONObject;)V

    .line 115
    const-string/jumbo v1, "StickersSuggestDict.dat"

    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-static {v1, v0}, Lcom/vkcoffee/android/stickers/StickersAutoSuggestDictionary;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void

    .line 115
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
