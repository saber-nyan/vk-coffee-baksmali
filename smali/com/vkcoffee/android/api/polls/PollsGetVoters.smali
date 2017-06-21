.class public Lcom/vkcoffee/android/api/polls/PollsGetVoters;
.super Lcom/vkcoffee/android/api/ListAPIRequest;
.source "PollsGetVoters.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/ListAPIRequest",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(IIIII)V
    .locals 2
    .param p1, "oid"    # I
    .param p2, "pollID"    # I
    .param p3, "answerID"    # I
    .param p4, "offset"    # I
    .param p5, "count"    # I

    .prologue
    .line 12
    const-string/jumbo v0, "polls.getVoters"

    const-class v1, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/api/ListAPIRequest;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 13
    const-string/jumbo v0, "fields"

    const-string/jumbo v1, "online,first_name,last_name,online,photo_100,photo_50,photo_200"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/polls/PollsGetVoters;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 14
    const-string/jumbo v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/polls/PollsGetVoters;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 15
    const-string/jumbo v0, "poll_id"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/polls/PollsGetVoters;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 16
    const-string/jumbo v0, "answer_ids"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/polls/PollsGetVoters;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 17
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p4}, Lcom/vkcoffee/android/api/polls/PollsGetVoters;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 18
    const-string/jumbo v0, "count"

    invoke-virtual {p0, v0, p5}, Lcom/vkcoffee/android/api/polls/PollsGetVoters;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 19
    return-void
.end method


# virtual methods
.method protected getArrayObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "r"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 23
    const-string/jumbo v0, "response"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "users"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
