.class public Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "ResultlessAPIRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 17
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;->parse(Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
