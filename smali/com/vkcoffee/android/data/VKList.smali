.class public Lcom/vkcoffee/android/data/VKList;
.super Lme/grishka/appkit/api/PaginatedList;
.source "VKList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/data/VKList$ReflectionParser;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lme/grishka/appkit/api/PaginatedList",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected more:I

.field protected total:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    .local p0, "this":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<TT;>;"
    invoke-direct {p0}, Lme/grishka/appkit/api/PaginatedList;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lcom/vkcoffee/android/data/VKList;->more:I

    .line 21
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lcom/vkcoffee/android/data/Parser;)V
    .locals 6
    .param p1, "obj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/vkcoffee/android/data/Parser",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<TT;>;"
    .local p2, "parser":Lcom/vkcoffee/android/data/Parser;, "Lcom/vkcoffee/android/data/Parser<TT;>;"
    const/4 v5, 0x0

    .line 27
    invoke-direct {p0}, Lme/grishka/appkit/api/PaginatedList;-><init>()V

    .line 17
    const/4 v4, 0x1

    iput v4, p0, Lcom/vkcoffee/android/data/VKList;->more:I

    .line 28
    const-string/jumbo v4, "count"

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/vkcoffee/android/data/VKList;->total:I

    .line 29
    const-string/jumbo v4, "more"

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/vkcoffee/android/data/VKList;->more:I

    .line 30
    const-string/jumbo v4, "items"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 31
    .local v2, "items":Lorg/json/JSONArray;
    if-nez v2, :cond_1

    .line 41
    :cond_0
    return-void

    .line 34
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 35
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 36
    .local v1, "item":Lorg/json/JSONObject;
    invoke-virtual {p2, v1}, Lcom/vkcoffee/android/data/Parser;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v3

    .line 37
    .local v3, "t":Ljava/lang/Object;, "TT;"
    if-eqz v3, :cond_2

    .line 38
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/data/VKList;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/Class;)V
    .locals 1
    .param p1, "obj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<TT;>;"
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/vkcoffee/android/data/VKList$ReflectionParser;

    invoke-direct {v0, p2}, Lcom/vkcoffee/android/data/VKList$ReflectionParser;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/data/VKList;-><init>(Lorg/json/JSONObject;Lcom/vkcoffee/android/data/Parser;)V

    .line 25
    return-void
.end method


# virtual methods
.method public more()I
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<TT;>;"
    iget v0, p0, Lcom/vkcoffee/android/data/VKList;->more:I

    return v0
.end method

.method public setTotal(I)V
    .locals 0
    .param p1, "t"    # I

    .prologue
    .line 53
    .local p0, "this":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<TT;>;"
    iput p1, p0, Lcom/vkcoffee/android/data/VKList;->total:I

    .line 54
    return-void
.end method

.method public total()I
    .locals 1

    .prologue
    .line 45
    .local p0, "this":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<TT;>;"
    iget v0, p0, Lcom/vkcoffee/android/data/VKList;->total:I

    return v0
.end method
