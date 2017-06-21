.class Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$VKListImpl;
.super Lcom/vkcoffee/android/data/VKList;
.source "MessagesGetHistoryAttachments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VKListImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/vkcoffee/android/data/VKList",
        "<TI;>;"
    }
.end annotation


# instance fields
.field public final nextFrom:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/vkcoffee/android/data/Parser;Ljava/lang/String;)V
    .locals 11
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p3, "nextFrom"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/vkcoffee/android/data/Parser",
            "<TI;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$VKListImpl;, "Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$VKListImpl<TI;>;"
    .local p2, "parser":Lcom/vkcoffee/android/data/Parser;, "Lcom/vkcoffee/android/data/Parser<TI;>;"
    const/4 v7, 0x0

    .line 146
    invoke-direct {p0}, Lcom/vkcoffee/android/data/VKList;-><init>()V

    .line 147
    iput-object p3, p0, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$VKListImpl;->nextFrom:Ljava/lang/String;

    .line 148
    const-string/jumbo v6, "count"

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$VKListImpl;->total:I

    .line 149
    const-string/jumbo v6, "more"

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$VKListImpl;->more:I

    .line 150
    const-string/jumbo v6, "items"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 151
    .local v2, "items":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_4

    .line 152
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 153
    .local v1, "item":Lorg/json/JSONObject;
    const/4 v5, 0x0

    .line 154
    .local v5, "type":Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$Type;
    invoke-static {}, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$Type;->values()[Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$Type;

    move-result-object v8

    array-length v9, v8

    move v6, v7

    :goto_1
    if-ge v6, v9, :cond_0

    aget-object v3, v8, v6

    .line 155
    .local v3, "t":Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$Type;
    invoke-virtual {v3}, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$Type;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 156
    invoke-virtual {v3}, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$Type;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 157
    move-object v5, v3

    .line 161
    .end local v3    # "t":Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$Type;
    :cond_0
    if-nez v5, :cond_3

    .line 151
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    .restart local v3    # "t":Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$Type;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 164
    .end local v3    # "t":Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$Type;
    :cond_3
    invoke-virtual {p2, v1}, Lcom/vkcoffee/android/data/Parser;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v4

    .line 165
    .local v4, "t":Ljava/lang/Object;, "TI;"
    if-eqz v4, :cond_1

    .line 166
    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$VKListImpl;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 169
    .end local v1    # "item":Lorg/json/JSONObject;
    .end local v4    # "t":Ljava/lang/Object;, "TI;"
    .end local v5    # "type":Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$Type;
    :cond_4
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p3, "nextFrom"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class",
            "<TI;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$VKListImpl;, "Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$VKListImpl<TI;>;"
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TI;>;"
    new-instance v0, Lcom/vkcoffee/android/data/VKList$ReflectionParser;

    invoke-direct {v0, p2}, Lcom/vkcoffee/android/data/VKList$ReflectionParser;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/vkcoffee/android/api/messages/MessagesGetHistoryAttachments$VKListImpl;-><init>(Lorg/json/JSONObject;Lcom/vkcoffee/android/data/Parser;Ljava/lang/String;)V

    .line 144
    return-void
.end method
