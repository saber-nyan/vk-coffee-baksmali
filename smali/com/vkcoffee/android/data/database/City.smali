.class public Lcom/vkcoffee/android/data/database/City;
.super Ljava/lang/Object;
.source "City.java"


# instance fields
.field public area:Ljava/lang/String;

.field public id:I

.field public important:Z

.field public region:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    :try_start_0
    const-string/jumbo v2, "id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/data/database/City;->id:I

    .line 22
    const-string/jumbo v2, "title"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/data/database/City;->title:Ljava/lang/String;

    .line 23
    const-string/jumbo v2, "area"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/data/database/City;->area:Ljava/lang/String;

    .line 24
    const-string/jumbo v2, "region"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/data/database/City;->region:Ljava/lang/String;

    .line 25
    const-string/jumbo v2, "important"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/vkcoffee/android/data/database/City;->important:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_1
    return-void

    .line 25
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "x":Ljava/lang/Exception;
    const-string/jumbo v1, "vk"

    const-string/jumbo v2, "Error parsing city"

    invoke-static {v1, v2, v0}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vkcoffee/android/data/database/City;->title:Ljava/lang/String;

    return-object v0
.end method
