.class final Lcom/vkcoffee/android/LongPollService$2;
.super Ljava/lang/Object;
.source "LongPollService.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/LongPollService;->syncStateWithServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/api/Callback",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$maxMid:[I


# direct methods
.method constructor <init>([I)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/vkcoffee/android/LongPollService$2;->val$maxMid:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 0
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 402
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 391
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/LongPollService$2;->success(Lorg/json/JSONObject;)V

    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 394
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/LongPollService$2;->val$maxMid:[I

    const/4 v2, 0x0

    const-string/jumbo v3, "response"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :goto_0
    return-void

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, "x":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0
.end method
