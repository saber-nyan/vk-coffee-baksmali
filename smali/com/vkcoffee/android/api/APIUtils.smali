.class public Lcom/vkcoffee/android/api/APIUtils;
.super Ljava/lang/Object;
.source "APIUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocalizedError(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 32
    if-lez p1, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p1

    if-lez v0, :cond_0

    .line 51
    .end local p2    # "msg":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 35
    .restart local p2    # "msg":Ljava/lang/String;
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 51
    const v0, 0x7f080165

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 38
    :sswitch_0
    const v0, 0x7f080162

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 40
    :sswitch_1
    const v0, 0x7f080161

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 45
    :sswitch_2
    const v0, 0x7f08015f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 47
    :sswitch_3
    const v0, 0x7f080160

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 49
    :sswitch_4
    const v0, 0x7f08058c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 35
    nop

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_0
        -0x1 -> :sswitch_0
        0xa -> :sswitch_1
        0xf -> :sswitch_2
        0xc8 -> :sswitch_2
        0xc9 -> :sswitch_2
        0xcb -> :sswitch_2
        0x12c -> :sswitch_3
        0x320 -> :sswitch_4
    .end sparse-switch
.end method

.method static synthetic lambda$showErrorToast$188(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    invoke-static {p0, p1}, Lcom/vkcoffee/android/api/APIUtils;->showErrorToastInner(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static showErrorToast(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 56
    if-eqz p0, :cond_0

    .line 57
    invoke-static {p1}, Lcom/vkcoffee/android/api/VKAPIRequest;->getValueFromErrorCode(I)I

    move-result v0

    .line 58
    .local v0, "codeValue":I
    const/16 v2, 0x11

    if-eq v0, v2, :cond_0

    const/16 v2, 0xe

    if-eq v0, v2, :cond_0

    const/16 v2, 0x18

    if-ne v0, v2, :cond_1

    .line 70
    .end local v0    # "codeValue":I
    :cond_0
    :goto_0
    return-void

    .line 63
    .restart local v0    # "codeValue":I
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/vkcoffee/android/api/APIUtils;->getLocalizedError(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "text":Ljava/lang/String;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 65
    invoke-static {p0, v1}, Lcom/vkcoffee/android/api/APIUtils;->showErrorToastInner(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_2
    invoke-static {p0, v1}, Lcom/vkcoffee/android/api/APIUtils$$Lambda$1;->lambdaFactory$(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/ViewUtils;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static showErrorToastInner(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 74
    return-void
.end method

.method public static unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkcoffee/android/api/JSONArrayWithCount;
    .locals 4
    .param p0, "parent"    # Lorg/json/JSONObject;
    .param p1, "name"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 28
    :goto_0
    return-object v0

    .line 22
    :cond_1
    new-instance v0, Lcom/vkcoffee/android/api/JSONArrayWithCount;

    invoke-direct {v0}, Lcom/vkcoffee/android/api/JSONArrayWithCount;-><init>()V

    .line 23
    .local v0, "r":Lcom/vkcoffee/android/api/JSONArrayWithCount;
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "items"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iput-object v2, v0, Lcom/vkcoffee/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 24
    iget-object v2, v0, Lcom/vkcoffee/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    if-nez v2, :cond_2

    move-object v0, v1

    .line 25
    goto :goto_0

    .line 27
    :cond_2
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "count"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vkcoffee/android/api/JSONArrayWithCount;->count:I

    goto :goto_0
.end method
