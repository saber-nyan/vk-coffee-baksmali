.class Lcom/vkcoffee/android/api/APIController$RequestRunner$1;
.super Ljava/lang/Object;
.source "APIController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/api/APIController$RequestRunner;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/api/APIController$RequestRunner;

.field final synthetic val$networkFail:Z

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/api/APIController$RequestRunner;Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/api/APIController$RequestRunner;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/vkcoffee/android/api/APIController$RequestRunner$1;->this$0:Lcom/vkcoffee/android/api/APIController$RequestRunner;

    iput-object p2, p0, Lcom/vkcoffee/android/api/APIController$RequestRunner$1;->val$result:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/vkcoffee/android/api/APIController$RequestRunner$1;->val$networkFail:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v5, 0xe

    .line 391
    iget-object v4, p0, Lcom/vkcoffee/android/api/APIController$RequestRunner$1;->val$result:Ljava/lang/Object;

    if-eqz v4, :cond_5

    .line 393
    :try_start_0
    iget-object v4, p0, Lcom/vkcoffee/android/api/APIController$RequestRunner$1;->val$result:Ljava/lang/Object;

    instance-of v4, v4, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/vkcoffee/android/api/APIController$RequestRunner$1;->val$result:Ljava/lang/Object;

    check-cast v4, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    invoke-virtual {v4}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCodeValue()I

    move-result v4

    if-ne v4, v5, :cond_4

    .line 394
    iget-object v4, p0, Lcom/vkcoffee/android/api/APIController$RequestRunner$1;->this$0:Lcom/vkcoffee/android/api/APIController$RequestRunner;

    iget-object v4, v4, Lcom/vkcoffee/android/api/APIController$RequestRunner;->r:Lcom/vkcoffee/android/api/VKAPIRequest;

    new-instance v5, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    const/16 v6, 0xe

    const-string/jumbo v7, "Flood control"

    invoke-direct {v5, v6, v7}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->invokeCallback(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 415
    :goto_0
    iget-object v4, p0, Lcom/vkcoffee/android/api/APIController$RequestRunner$1;->val$result:Ljava/lang/Object;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/vkcoffee/android/api/APIController$RequestRunner$1;->this$0:Lcom/vkcoffee/android/api/APIController$RequestRunner;

    iget-object v4, v4, Lcom/vkcoffee/android/api/APIController$RequestRunner;->r:Lcom/vkcoffee/android/api/VKAPIRequest;

    iget-boolean v4, v4, Lcom/vkcoffee/android/api/VKAPIRequest;->persistent:Z

    if-eqz v4, :cond_2

    .line 417
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 418
    .local v2, "params":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/vkcoffee/android/api/APIController$RequestRunner$1;->this$0:Lcom/vkcoffee/android/api/APIController$RequestRunner;

    iget-object v4, v4, Lcom/vkcoffee/android/api/APIController$RequestRunner;->r:Lcom/vkcoffee/android/api/VKAPIRequest;

    iget-object v4, v4, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 419
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 420
    .local v0, "key":Ljava/lang/String;
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "method"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "v"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "access_token"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "sig"

    aput-object v7, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/vkcoffee/android/api/APIController$RequestRunner$1;->this$0:Lcom/vkcoffee/android/api/APIController$RequestRunner;

    iget-object v5, v5, Lcom/vkcoffee/android/api/APIController$RequestRunner;->r:Lcom/vkcoffee/android/api/VKAPIRequest;

    iget-boolean v5, v5, Lcom/vkcoffee/android/api/VKAPIRequest;->persistentWithToken:Z

    if-eqz v5, :cond_0

    .line 423
    :cond_1
    iget-object v5, p0, Lcom/vkcoffee/android/api/APIController$RequestRunner$1;->this$0:Lcom/vkcoffee/android/api/APIController$RequestRunner;

    iget-object v5, v5, Lcom/vkcoffee/android/api/APIController$RequestRunner;->r:Lcom/vkcoffee/android/api/VKAPIRequest;

    iget-object v5, v5, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 426
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "params":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 429
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/vkcoffee/android/api/APIController$RequestRunner$1;->this$0:Lcom/vkcoffee/android/api/APIController$RequestRunner;

    iget-object v4, v4, Lcom/vkcoffee/android/api/APIController$RequestRunner;->r:Lcom/vkcoffee/android/api/VKAPIRequest;

    iget-object v4, v4, Lcom/vkcoffee/android/api/VKAPIRequest;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/vkcoffee/android/api/APIController$RequestRunner$1;->this$0:Lcom/vkcoffee/android/api/APIController$RequestRunner;

    iget-object v4, v4, Lcom/vkcoffee/android/api/APIController$RequestRunner;->r:Lcom/vkcoffee/android/api/VKAPIRequest;

    iget-object v4, v4, Lcom/vkcoffee/android/api/VKAPIRequest;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 430
    iget-object v4, p0, Lcom/vkcoffee/android/api/APIController$RequestRunner$1;->this$0:Lcom/vkcoffee/android/api/APIController$RequestRunner;

    iget-object v4, v4, Lcom/vkcoffee/android/api/APIController$RequestRunner;->r:Lcom/vkcoffee/android/api/VKAPIRequest;

    iget-object v4, v4, Lcom/vkcoffee/android/api/VKAPIRequest;->progressDialog:Landroid/app/ProgressDialog;

    invoke-static {v4}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 432
    :cond_3
    return-void

    .line 396
    :cond_4
    :try_start_2
    iget-object v4, p0, Lcom/vkcoffee/android/api/APIController$RequestRunner$1;->this$0:Lcom/vkcoffee/android/api/APIController$RequestRunner;

    iget-object v4, v4, Lcom/vkcoffee/android/api/APIController$RequestRunner;->r:Lcom/vkcoffee/android/api/VKAPIRequest;

    iget-object v5, p0, Lcom/vkcoffee/android/api/APIController$RequestRunner$1;->val$result:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->invokeCallback(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 398
    :catch_1
    move-exception v3

    .line 400
    .local v3, "x":Ljava/lang/Exception;
    const-string/jumbo v4, "vk"

    const-string/jumbo v5, "Callback exception"

    invoke-static {v4, v5, v3}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 401
    iget-object v4, p0, Lcom/vkcoffee/android/api/APIController$RequestRunner$1;->this$0:Lcom/vkcoffee/android/api/APIController$RequestRunner;

    iget-object v4, v4, Lcom/vkcoffee/android/api/APIController$RequestRunner;->r:Lcom/vkcoffee/android/api/VKAPIRequest;

    new-instance v5, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    const/4 v6, -0x3

    const-string/jumbo v7, "Callback invocation failed (parse error?)"

    invoke-direct {v5, v6, v7}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->invokeCallback(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 403
    .end local v3    # "x":Ljava/lang/Exception;
    :cond_5
    iget-boolean v4, p0, Lcom/vkcoffee/android/api/APIController$RequestRunner$1;->val$networkFail:Z

    if-eqz v4, :cond_7

    .line 404
    sget-boolean v4, Lcom/vkcoffee/android/api/APIController;->API_DEBUG:Z

    if-eqz v4, :cond_6

    .line 405
    const-string/jumbo v5, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Request "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/vkcoffee/android/api/APIController$RequestRunner$1;->this$0:Lcom/vkcoffee/android/api/APIController$RequestRunner;

    iget-object v4, v4, Lcom/vkcoffee/android/api/APIController$RequestRunner;->r:Lcom/vkcoffee/android/api/VKAPIRequest;

    iget-object v4, v4, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    const-string/jumbo v7, "method"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " failed with network error"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_6
    iget-object v4, p0, Lcom/vkcoffee/android/api/APIController$RequestRunner$1;->this$0:Lcom/vkcoffee/android/api/APIController$RequestRunner;

    iget-object v4, v4, Lcom/vkcoffee/android/api/APIController$RequestRunner;->r:Lcom/vkcoffee/android/api/VKAPIRequest;

    new-instance v5, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    const/4 v6, -0x1

    const-string/jumbo v7, "I/O Error"

    invoke-direct {v5, v6, v7}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->invokeCallback(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 410
    :cond_7
    sget-boolean v4, Lcom/vkcoffee/android/api/APIController;->API_DEBUG:Z

    if-eqz v4, :cond_8

    .line 411
    const-string/jumbo v5, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Request "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/vkcoffee/android/api/APIController$RequestRunner$1;->this$0:Lcom/vkcoffee/android/api/APIController$RequestRunner;

    iget-object v4, v4, Lcom/vkcoffee/android/api/APIController$RequestRunner;->r:Lcom/vkcoffee/android/api/VKAPIRequest;

    iget-object v4, v4, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    const-string/jumbo v7, "method"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " failed with other error (malformed response?)"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    :cond_8
    iget-object v4, p0, Lcom/vkcoffee/android/api/APIController$RequestRunner$1;->this$0:Lcom/vkcoffee/android/api/APIController$RequestRunner;

    iget-object v4, v4, Lcom/vkcoffee/android/api/APIController$RequestRunner;->r:Lcom/vkcoffee/android/api/VKAPIRequest;

    new-instance v5, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    const/4 v6, -0x2

    const-string/jumbo v7, "Response parse failed"

    invoke-direct {v5, v6, v7}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->invokeCallback(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 425
    .restart local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v2    # "params":Lorg/json/JSONObject;
    :cond_9
    :try_start_3
    iget-object v4, p0, Lcom/vkcoffee/android/api/APIController$RequestRunner$1;->this$0:Lcom/vkcoffee/android/api/APIController$RequestRunner;

    iget-object v4, v4, Lcom/vkcoffee/android/api/APIController$RequestRunner;->r:Lcom/vkcoffee/android/api/VKAPIRequest;

    iget-object v4, v4, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    const-string/jumbo v5, "method"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/vkcoffee/android/api/APIController$RequestRunner$1;->this$0:Lcom/vkcoffee/android/api/APIController$RequestRunner;

    iget-object v5, v5, Lcom/vkcoffee/android/api/APIController$RequestRunner;->r:Lcom/vkcoffee/android/api/VKAPIRequest;

    iget-object v5, v5, Lcom/vkcoffee/android/api/VKAPIRequest;->persistentMethod:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/vkcoffee/android/api/APIController$RequestRunner$1;->this$0:Lcom/vkcoffee/android/api/APIController$RequestRunner;

    iget-object v6, v6, Lcom/vkcoffee/android/api/APIController$RequestRunner;->r:Lcom/vkcoffee/android/api/VKAPIRequest;

    iget-object v6, v6, Lcom/vkcoffee/android/api/VKAPIRequest;->persistentUserData:Lorg/json/JSONObject;

    invoke-static {v4, v2, v5, v6}, Lcom/vkcoffee/android/cache/Cache;->putApiRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/reflect/Method;Lorg/json/JSONObject;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2
.end method
