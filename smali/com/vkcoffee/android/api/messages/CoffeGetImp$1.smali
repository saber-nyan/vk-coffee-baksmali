.class Lcom/vkcoffee/android/api/messages/CoffeGetImp$1;
.super Lcom/vkcoffee/android/data/Parser;
.source "CoffeGetImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/api/messages/CoffeGetImp;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/api/messages/CoffeGetImp;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/api/messages/CoffeGetImp;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/api/messages/CoffeGetImp$1;->this$0:Lcom/vkcoffee/android/api/messages/CoffeGetImp;

    .line 34
    invoke-direct {p0}, Lcom/vkcoffee/android/data/Parser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/Message;
    .locals 1
    .param p1, "var1"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 36
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
    .line 1
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/messages/CoffeGetImp$1;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/Message;

    move-result-object v0

    return-object v0
.end method
