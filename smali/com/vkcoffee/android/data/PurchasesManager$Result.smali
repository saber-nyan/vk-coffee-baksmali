.class public Lcom/vkcoffee/android/data/PurchasesManager$Result;
.super Ljava/lang/Object;
.source "PurchasesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/data/PurchasesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public error_fatal:Z

.field public error_message:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public product:Lorg/json/JSONObject;

.field public state:I

.field public success:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "source"    # Lorg/json/JSONObject;

    .prologue
    const/4 v0, 0x1

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    const-string/jumbo v1, "success"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/data/PurchasesManager$Result;->success:I

    .line 463
    const-string/jumbo v1, "state"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/data/PurchasesManager$Result;->state:I

    .line 464
    const-string/jumbo v1, "message"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/data/PurchasesManager$Result;->message:Ljava/lang/String;

    .line 465
    const-string/jumbo v1, "error_message"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/data/PurchasesManager$Result;->error_message:Ljava/lang/String;

    .line 466
    const-string/jumbo v1, "error_fatal"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/vkcoffee/android/data/PurchasesManager$Result;->error_fatal:Z

    .line 467
    const-string/jumbo v0, "product"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/PurchasesManager$Result;->product:Lorg/json/JSONObject;

    .line 468
    return-void

    .line 466
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
