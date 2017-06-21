.class Lcom/vkcoffee/android/api/messages/MessagesSearch$1;
.super Lcom/vkcoffee/android/data/Parser;
.source "MessagesSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/api/messages/MessagesSearch;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/messages/MessagesSearch$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/data/Parser",
        "<",
        "Lcom/vkcoffee/android/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/api/messages/MessagesSearch;

.field final synthetic val$chats:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/api/messages/MessagesSearch;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/api/messages/MessagesSearch;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/vkcoffee/android/api/messages/MessagesSearch$1;->this$0:Lcom/vkcoffee/android/api/messages/MessagesSearch;

    iput-object p2, p0, Lcom/vkcoffee/android/api/messages/MessagesSearch$1;->val$chats:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/vkcoffee/android/data/Parser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/Message;
    .locals 7
    .param p1, "m"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 34
    new-instance v2, Lcom/vkcoffee/android/Message;

    invoke-direct {v2, p1}, Lcom/vkcoffee/android/Message;-><init>(Lorg/json/JSONObject;)V

    .line 35
    .local v2, "msg":Lcom/vkcoffee/android/Message;
    iget v5, v2, Lcom/vkcoffee/android/Message;->peer:I

    const v6, 0x77359400

    if-le v5, v6, :cond_0

    .line 36
    new-instance v3, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v3}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 37
    .local v3, "p":Lcom/vkcoffee/android/UserProfile;
    iget v5, v2, Lcom/vkcoffee/android/Message;->peer:I

    iput v5, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 38
    iget-object v5, v2, Lcom/vkcoffee/android/Message;->title:Ljava/lang/String;

    iput-object v5, v3, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 39
    const-string/jumbo v5, "photo_50"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 40
    sget v5, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    const-string/jumbo v5, "photo_100"

    :goto_0
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 50
    :goto_1
    iget-object v5, p0, Lcom/vkcoffee/android/api/messages/MessagesSearch$1;->val$chats:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .end local v3    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_0
    return-object v2

    .line 40
    .restart local v3    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_1
    const-string/jumbo v5, "photo_50"

    goto :goto_0

    .line 42
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v4, "ph":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v5, "M"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    const-string/jumbo v5, "chat_active"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 45
    .local v0, "act":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    const/4 v5, 0x4

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 46
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 48
    :cond_3
    const-string/jumbo v5, ","

    invoke-static {v5, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    goto :goto_1
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/messages/MessagesSearch$1;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/Message;

    move-result-object v0

    return-object v0
.end method
