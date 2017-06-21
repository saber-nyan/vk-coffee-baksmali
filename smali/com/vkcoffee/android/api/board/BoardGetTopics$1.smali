.class Lcom/vkcoffee/android/api/board/BoardGetTopics$1;
.super Lcom/vkcoffee/android/data/Parser;
.source "BoardGetTopics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/api/board/BoardGetTopics;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/board/BoardGetTopics$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/data/Parser",
        "<",
        "Lcom/vkcoffee/android/api/BoardTopic;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/api/board/BoardGetTopics;

.field final synthetic val$users:Landroid/util/SparseArray;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/api/board/BoardGetTopics;Landroid/util/SparseArray;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/api/board/BoardGetTopics;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/vkcoffee/android/api/board/BoardGetTopics$1;->this$0:Lcom/vkcoffee/android/api/board/BoardGetTopics;

    iput-object p2, p0, Lcom/vkcoffee/android/api/board/BoardGetTopics$1;->val$users:Landroid/util/SparseArray;

    invoke-direct {p0}, Lcom/vkcoffee/android/data/Parser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/BoardTopic;
    .locals 3
    .param p1, "jt"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lcom/vkcoffee/android/api/BoardTopic;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/api/BoardTopic;-><init>(Lorg/json/JSONObject;)V

    .line 64
    .local v0, "t":Lcom/vkcoffee/android/api/BoardTopic;
    iget-object v1, p0, Lcom/vkcoffee/android/api/board/BoardGetTopics$1;->val$users:Landroid/util/SparseArray;

    const-string/jumbo v2, "updated_by"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    iput-object v1, v0, Lcom/vkcoffee/android/api/BoardTopic;->updatedBy:Lcom/vkcoffee/android/UserProfile;

    .line 65
    return-object v0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/board/BoardGetTopics$1;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/BoardTopic;

    move-result-object v0

    return-object v0
.end method
