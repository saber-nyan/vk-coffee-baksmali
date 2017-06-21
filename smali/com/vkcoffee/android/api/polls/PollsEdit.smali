.class public Lcom/vkcoffee/android/api/polls/PollsEdit;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "PollsEdit.java"


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 2
    .param p1, "oid"    # I
    .param p2, "pid"    # I
    .param p3, "question"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p4, "add":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "remove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p6, "edit":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "polls.edit"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 15
    const-string/jumbo v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/polls/PollsEdit;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 16
    const-string/jumbo v0, "poll_id"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/polls/PollsEdit;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 17
    if-eqz p3, :cond_0

    .line 18
    const-string/jumbo v0, "question"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/polls/PollsEdit;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 20
    :cond_0
    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 21
    const-string/jumbo v0, "add_answers"

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/polls/PollsEdit;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 23
    :cond_1
    if-eqz p5, :cond_2

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 24
    const-string/jumbo v0, "delete_answers"

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p5}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/polls/PollsEdit;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 26
    :cond_2
    if-eqz p6, :cond_3

    invoke-interface {p6}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 27
    const-string/jumbo v0, "edit_answers"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/polls/PollsEdit;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 29
    :cond_3
    return-void
.end method
