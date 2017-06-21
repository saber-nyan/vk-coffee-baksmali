.class Lcom/vkcoffee/android/stickers/Stickers$2;
.super Ljava/lang/Object;
.source "Stickers.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/stickers/Stickers;->reloadAutoSuggestDictionaryIfNeeded(Z)V
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
.field final synthetic this$0:Lcom/vkcoffee/android/stickers/Stickers;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/stickers/Stickers;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/stickers/Stickers;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/Stickers$2;->this$0:Lcom/vkcoffee/android/stickers/Stickers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 0
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 224
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 205
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/stickers/Stickers$2;->success(Lorg/json/JSONObject;)V

    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "result"    # Lorg/json/JSONObject;

    .prologue
    .line 208
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/Stickers$2;->this$0:Lcom/vkcoffee/android/stickers/Stickers;

    invoke-static {v2}, Lcom/vkcoffee/android/stickers/Stickers;->access$000(Lcom/vkcoffee/android/stickers/Stickers;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 210
    :try_start_0
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/Stickers$2;->this$0:Lcom/vkcoffee/android/stickers/Stickers;

    invoke-static {v2}, Lcom/vkcoffee/android/stickers/Stickers;->access$500(Lcom/vkcoffee/android/stickers/Stickers;)Lcom/vkcoffee/android/stickers/StickersAutoSuggestDictionary;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/vkcoffee/android/stickers/StickersAutoSuggestDictionary;->initializeWithJsonAndSave(Lorg/json/JSONObject;)V

    .line 212
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/Stickers$2;->this$0:Lcom/vkcoffee/android/stickers/Stickers;

    invoke-static {v2}, Lcom/vkcoffee/android/stickers/Stickers;->access$300(Lcom/vkcoffee/android/stickers/Stickers;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 213
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "auto_suggest_last_loaded"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 214
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    :try_start_1
    monitor-exit v3

    .line 220
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    invoke-static {v2}, Lcom/vkcoffee/android/utils/L;->e([Ljava/lang/Object;)V

    goto :goto_0

    .line 219
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
