.class Lcom/vkcoffee/android/stickers/Stickers$3;
.super Ljava/lang/Object;
.source "Stickers.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/stickers/Stickers;->reload(Ljava/lang/Runnable;)V
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
        "Lcom/vkcoffee/android/stickers/Stickers$Data;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/stickers/Stickers;

.field final synthetic val$runAfter:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/stickers/Stickers;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/stickers/Stickers;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/Stickers$3;->this$0:Lcom/vkcoffee/android/stickers/Stickers;

    iput-object p2, p0, Lcom/vkcoffee/android/stickers/Stickers$3;->val$runAfter:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 273
    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCodeValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 274
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/Stickers$3;->this$0:Lcom/vkcoffee/android/stickers/Stickers;

    iget-object v1, p0, Lcom/vkcoffee/android/stickers/Stickers$3;->val$runAfter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/stickers/Stickers;->reload(Ljava/lang/Runnable;)V

    .line 276
    :cond_0
    return-void
.end method

.method public success(Lcom/vkcoffee/android/stickers/Stickers$Data;)V
    .locals 6
    .param p1, "result"    # Lcom/vkcoffee/android/stickers/Stickers$Data;

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 242
    .local v0, "areEqual":Z
    :try_start_0
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/Stickers$3;->this$0:Lcom/vkcoffee/android/stickers/Stickers;

    invoke-static {v3}, Lcom/vkcoffee/android/stickers/Stickers;->access$000(Lcom/vkcoffee/android/stickers/Stickers;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 243
    :try_start_1
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/Stickers$3;->this$0:Lcom/vkcoffee/android/stickers/Stickers;

    iget-object v5, p0, Lcom/vkcoffee/android/stickers/Stickers$3;->this$0:Lcom/vkcoffee/android/stickers/Stickers;

    invoke-static {v5}, Lcom/vkcoffee/android/stickers/Stickers;->access$400(Lcom/vkcoffee/android/stickers/Stickers;)Lcom/vkcoffee/android/stickers/Stickers$Data;

    move-result-object v5

    invoke-static {v3, v5, p1}, Lcom/vkcoffee/android/stickers/Stickers;->access$700(Lcom/vkcoffee/android/stickers/Stickers;Lcom/vkcoffee/android/stickers/Stickers$Data;Lcom/vkcoffee/android/stickers/Stickers$Data;)Z

    move-result v0

    .line 244
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/Stickers$3;->this$0:Lcom/vkcoffee/android/stickers/Stickers;

    invoke-static {v3, p1}, Lcom/vkcoffee/android/stickers/Stickers;->access$402(Lcom/vkcoffee/android/stickers/Stickers;Lcom/vkcoffee/android/stickers/Stickers$Data;)Lcom/vkcoffee/android/stickers/Stickers$Data;

    .line 245
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/Stickers$3;->this$0:Lcom/vkcoffee/android/stickers/Stickers;

    invoke-static {v3}, Lcom/vkcoffee/android/stickers/Stickers;->access$200(Lcom/vkcoffee/android/stickers/Stickers;)Lcom/vkcoffee/android/orm/EntityManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkcoffee/android/orm/EntityManager;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    :try_start_2
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/Stickers$3;->this$0:Lcom/vkcoffee/android/stickers/Stickers;

    invoke-static {v3}, Lcom/vkcoffee/android/stickers/Stickers;->access$200(Lcom/vkcoffee/android/stickers/Stickers;)Lcom/vkcoffee/android/orm/EntityManager;

    move-result-object v3

    iget-object v5, p0, Lcom/vkcoffee/android/stickers/Stickers$3;->this$0:Lcom/vkcoffee/android/stickers/Stickers;

    invoke-static {v5}, Lcom/vkcoffee/android/stickers/Stickers;->access$400(Lcom/vkcoffee/android/stickers/Stickers;)Lcom/vkcoffee/android/stickers/Stickers$Data;

    move-result-object v5

    iget-object v5, v5, Lcom/vkcoffee/android/stickers/Stickers$Data;->allStickers:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/vkcoffee/android/orm/EntityManager;->save(Ljava/util/Collection;)I

    .line 248
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/Stickers$3;->this$0:Lcom/vkcoffee/android/stickers/Stickers;

    invoke-static {v3}, Lcom/vkcoffee/android/stickers/Stickers;->access$300(Lcom/vkcoffee/android/stickers/Stickers;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 249
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "base_url"

    iget-object v5, p0, Lcom/vkcoffee/android/stickers/Stickers$3;->this$0:Lcom/vkcoffee/android/stickers/Stickers;

    invoke-static {v5}, Lcom/vkcoffee/android/stickers/Stickers;->access$400(Lcom/vkcoffee/android/stickers/Stickers;)Lcom/vkcoffee/android/stickers/Stickers$Data;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vkcoffee/android/stickers/Stickers$Data;->serializeRecents()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 250
    const-string/jumbo v3, "readFromCompat"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 251
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 252
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/Stickers$3;->this$0:Lcom/vkcoffee/android/stickers/Stickers;

    invoke-static {v3}, Lcom/vkcoffee/android/stickers/Stickers;->access$200(Lcom/vkcoffee/android/stickers/Stickers;)Lcom/vkcoffee/android/orm/EntityManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkcoffee/android/orm/EntityManager;->commit()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 256
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 257
    :try_start_4
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/Stickers$3;->val$runAfter:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    .line 258
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/Stickers$3;->this$0:Lcom/vkcoffee/android/stickers/Stickers;

    invoke-static {v3}, Lcom/vkcoffee/android/stickers/Stickers;->access$800(Lcom/vkcoffee/android/stickers/Stickers;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/stickers/Stickers$3;->val$runAfter:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 260
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/Stickers$3;->this$0:Lcom/vkcoffee/android/stickers/Stickers;

    invoke-static {v3}, Lcom/vkcoffee/android/stickers/Stickers;->access$600(Lcom/vkcoffee/android/stickers/Stickers;)V

    .line 262
    if-nez v0, :cond_1

    .line 263
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/Stickers$3;->this$0:Lcom/vkcoffee/android/stickers/Stickers;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/stickers/Stickers;->reloadAutoSuggestDictionaryIfNeeded(Z)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 269
    :cond_1
    :goto_1
    return-void

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_5
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/Stickers$3;->this$0:Lcom/vkcoffee/android/stickers/Stickers;

    invoke-static {v3}, Lcom/vkcoffee/android/stickers/Stickers;->access$200(Lcom/vkcoffee/android/stickers/Stickers;)Lcom/vkcoffee/android/orm/EntityManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkcoffee/android/orm/EntityManager;->rollback()V

    goto :goto_0

    .line 256
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 265
    :catch_1
    move-exception v1

    .line 266
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    invoke-static {}, Lorg/acra/ACRA;->getErrorReporter()Lorg/acra/ErrorReporter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;)V

    .line 267
    const-string/jumbo v3, "Stickers"

    const-string/jumbo v4, "Cannot reload stickers"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 235
    check-cast p1, Lcom/vkcoffee/android/stickers/Stickers$Data;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/stickers/Stickers$3;->success(Lcom/vkcoffee/android/stickers/Stickers$Data;)V

    return-void
.end method
