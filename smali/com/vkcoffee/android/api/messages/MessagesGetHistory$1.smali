.class Lcom/vkcoffee/android/api/messages/MessagesGetHistory$1;
.super Lcom/vkcoffee/android/data/Parser;
.source "MessagesGetHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/api/messages/MessagesGetHistory;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;
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
.field final synthetic this$0:Lcom/vkcoffee/android/api/messages/MessagesGetHistory;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/api/messages/MessagesGetHistory;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/api/messages/MessagesGetHistory;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/vkcoffee/android/api/messages/MessagesGetHistory$1;->this$0:Lcom/vkcoffee/android/api/messages/MessagesGetHistory;

    invoke-direct {p0}, Lcom/vkcoffee/android/data/Parser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/Message;
    .locals 1
    .param p1, "jm"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Lcom/vkcoffee/android/Message;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/Message;-><init>(Lorg/json/JSONObject;)V

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
    .line 36
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/messages/MessagesGetHistory$1;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/Message;

    move-result-object v0

    return-object v0
.end method
