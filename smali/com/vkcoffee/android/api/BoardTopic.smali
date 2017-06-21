.class public Lcom/vkcoffee/android/api/BoardTopic;
.super Ljava/lang/Object;
.source "BoardTopic.java"


# static fields
.field public static final TOPIC_CLOSED:I = 0x1

.field public static final TOPIC_FIXED:I = 0x2


# instance fields
.field public created:I

.field public creator:I

.field public flags:I

.field public gid:I

.field public id:I

.field public lastComment:Ljava/lang/CharSequence;

.field public lastCommentUid:I

.field public numComments:I

.field public title:Ljava/lang/String;

.field public updated:I

.field public updatedBy:Lcom/vkcoffee/android/UserProfile;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "jt"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/BoardTopic;->id:I

    .line 34
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->replaceHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/BoardTopic;->title:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "created"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/BoardTopic;->created:I

    .line 36
    const-string/jumbo v0, "created_by"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/BoardTopic;->creator:I

    .line 37
    const-string/jumbo v0, "updated"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/BoardTopic;->updated:I

    .line 38
    const-string/jumbo v0, "is_closed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget v0, p0, Lcom/vkcoffee/android/api/BoardTopic;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vkcoffee/android/api/BoardTopic;->flags:I

    .line 41
    :cond_0
    const-string/jumbo v0, "is_fixed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    iget v0, p0, Lcom/vkcoffee/android/api/BoardTopic;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/vkcoffee/android/api/BoardTopic;->flags:I

    .line 44
    :cond_1
    const-string/jumbo v0, "comments"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/BoardTopic;->numComments:I

    .line 45
    const-string/jumbo v0, "last_comment"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    const-string/jumbo v0, "last_comment"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\\[(id|club)[0-9]+(?::bp[-_0-9]+)?\\|([^\\]]+)\\]"

    const-string/jumbo v2, "$2"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/BoardTopic;->lastComment:Ljava/lang/CharSequence;

    .line 47
    iget-object v0, p0, Lcom/vkcoffee/android/api/BoardTopic;->lastComment:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 48
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/BoardTopic;->lastComment:Ljava/lang/CharSequence;

    .line 51
    :cond_2
    return-void
.end method
