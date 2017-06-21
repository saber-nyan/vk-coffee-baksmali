.class Lcom/vkcoffee/android/DebugPrefsActivity$3;
.super Ljava/lang/Object;
.source "DebugPrefsActivity.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/DebugPrefsActivity;->lambda$downloadMessages$291(Landroid/app/ProgressDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lcom/vkcoffee/android/DebugPrefsActivity;

.field final synthetic val$cap$0:Landroid/app/ProgressDialog;

.field final synthetic val$ended:[Z

.field final synthetic val$offset:[I

.field final synthetic val$total:[I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/DebugPrefsActivity;[I[Z[ILandroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/DebugPrefsActivity;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/vkcoffee/android/DebugPrefsActivity$3;->this$0:Lcom/vkcoffee/android/DebugPrefsActivity;

    iput-object p2, p0, Lcom/vkcoffee/android/DebugPrefsActivity$3;->val$total:[I

    iput-object p3, p0, Lcom/vkcoffee/android/DebugPrefsActivity$3;->val$ended:[Z

    iput-object p4, p0, Lcom/vkcoffee/android/DebugPrefsActivity$3;->val$offset:[I

    iput-object p5, p0, Lcom/vkcoffee/android/DebugPrefsActivity$3;->val$cap$0:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$success$290(Landroid/app/ProgressDialog;[I[I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 270
    aget v0, p1, v1

    invoke-virtual {p0, v0}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 271
    aget v0, p2, v1

    invoke-virtual {p0, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 272
    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 280
    const-string/jumbo v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 255
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/DebugPrefsActivity$3;->success(Lorg/json/JSONObject;)V

    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 11
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 258
    :try_start_0
    const-string/jumbo v5, "response"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 259
    iget-object v5, p0, Lcom/vkcoffee/android/DebugPrefsActivity$3;->val$total:[I

    const/4 v8, 0x0

    const-string/jumbo v9, "count"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v5, v8

    .line 260
    const-string/jumbo v5, "items"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 261
    .local v0, "a":Lorg/json/JSONArray;
    iget-object v8, p0, Lcom/vkcoffee/android/DebugPrefsActivity$3;->val$ended:[Z

    const/4 v9, 0x0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-nez v5, :cond_0

    move v5, v6

    :goto_0
    aput-boolean v5, v8, v9

    .line 262
    iget-object v5, p0, Lcom/vkcoffee/android/DebugPrefsActivity$3;->val$offset:[I

    const/4 v8, 0x0

    aget v9, v5, v8

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    add-int/2addr v9, v10

    aput v9, v5, v8

    .line 263
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v1, "acts":Ljava/util/ArrayList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 265
    new-instance v3, Lcom/vkcoffee/android/Message;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/vkcoffee/android/Message;-><init>(Lorg/json/JSONObject;)V

    .line 266
    .local v3, "msg":Lcom/vkcoffee/android/Message;
    new-instance v5, Lcom/vkcoffee/android/cache/AddMessageAction;

    invoke-direct {v5, v3}, Lcom/vkcoffee/android/cache/AddMessageAction;-><init>(Lcom/vkcoffee/android/Message;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "acts":Ljava/util/ArrayList;
    .end local v2    # "i":I
    .end local v3    # "msg":Lcom/vkcoffee/android/Message;
    :cond_0
    move v5, v7

    .line 261
    goto :goto_0

    .line 268
    .restart local v1    # "acts":Ljava/util/ArrayList;
    .restart local v2    # "i":I
    :cond_1
    invoke-static {v1}, Lcom/vkcoffee/android/cache/Cache;->applyMessagesActions(Ljava/util/ArrayList;)I

    .line 269
    iget-object v5, p0, Lcom/vkcoffee/android/DebugPrefsActivity$3;->this$0:Lcom/vkcoffee/android/DebugPrefsActivity;

    iget-object v8, p0, Lcom/vkcoffee/android/DebugPrefsActivity$3;->val$cap$0:Landroid/app/ProgressDialog;

    iget-object v9, p0, Lcom/vkcoffee/android/DebugPrefsActivity$3;->val$total:[I

    iget-object v10, p0, Lcom/vkcoffee/android/DebugPrefsActivity$3;->val$offset:[I

    invoke-static {v8, v9, v10}, Lcom/vkcoffee/android/DebugPrefsActivity$3$$Lambda$1;->lambdaFactory$(Landroid/app/ProgressDialog;[I[I)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/vkcoffee/android/DebugPrefsActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "acts":Ljava/util/ArrayList;
    .end local v2    # "i":I
    :goto_2
    return-void

    .line 273
    :catch_0
    move-exception v4

    .line 274
    .local v4, "x":Ljava/lang/Exception;
    const-string/jumbo v5, "vk"

    invoke-static {v5, v4}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 275
    iget-object v5, p0, Lcom/vkcoffee/android/DebugPrefsActivity$3;->val$ended:[Z

    aput-boolean v6, v5, v7

    goto :goto_2
.end method
