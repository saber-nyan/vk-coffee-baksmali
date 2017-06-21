.class public Lcom/vkcoffee/android/data/orm/ConversationInfo;
.super Ljava/lang/Object;
.source "ConversationInfo.java"


# instance fields
.field public final disabled_until:I

.field public final mute:Z

.field public final peer_id:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string/jumbo v1, "peer_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/data/orm/ConversationInfo;->peer_id:I

    .line 14
    const-string/jumbo v1, "sound"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/vkcoffee/android/data/orm/ConversationInfo;->mute:Z

    .line 15
    const-string/jumbo v0, "disabled_until"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/data/orm/ConversationInfo;->disabled_until:I

    .line 16
    return-void
.end method
