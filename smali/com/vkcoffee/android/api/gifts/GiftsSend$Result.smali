.class public Lcom/vkcoffee/android/api/gifts/GiftsSend$Result;
.super Ljava/lang/Object;
.source "GiftsSend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/api/gifts/GiftsSend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public success:Z

.field public user_ids:[I

.field public withdrawn_votes:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "source"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-eqz p1, :cond_2

    .line 56
    const-string/jumbo v4, "success"

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    :goto_0
    iput-boolean v2, p0, Lcom/vkcoffee/android/api/gifts/GiftsSend$Result;->success:Z

    .line 57
    const-string/jumbo v2, "withdrawn_votes"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/api/gifts/GiftsSend$Result;->withdrawn_votes:I

    .line 59
    const-string/jumbo v2, "user_ids"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 60
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_2

    .line 61
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/vkcoffee/android/api/gifts/GiftsSend$Result;->user_ids:[I

    .line 62
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 63
    iget-object v2, p0, Lcom/vkcoffee/android/api/gifts/GiftsSend$Result;->user_ids:[I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v3

    aput v3, v2, v1

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "i":I
    :cond_0
    move v2, v3

    .line 56
    goto :goto_0

    .line 65
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/api/gifts/GiftsSend$Result;->user_ids:[I

    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    .line 68
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "i":I
    :cond_2
    return-void
.end method
