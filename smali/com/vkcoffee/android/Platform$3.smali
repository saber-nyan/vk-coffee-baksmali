.class Lcom/vkcoffee/android/Platform$3;
.super Lcom/loopj/android/http/TextHttpResponseHandler;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/Platform;->goCheck(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$wall:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/Platform$3;->val$activity:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/vkcoffee/android/Platform$3;->val$wall:Z

    .line 245
    invoke-direct {p0}, Lcom/loopj/android/http/TextHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseString"    # Ljava/lang/String;
    .param p4, "throwable"    # Ljava/lang/Throwable;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lcom/vkcoffee/android/Platform$3;->val$activity:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u041a\u0440\u0438\u0442\u0438\u0447\u0435\u0441\u043a\u0430\u044f \u043e\u0448\u0438\u0431\u043a\u0430. \u041f\u043e\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435 \u0435\u0449\u0435 \u0440\u0430\u0437... "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 250
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CHECK onFailure: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 4
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 255
    const-string v0, "\"country\":"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/vkcoffee/android/Platform$3;->val$activity:Landroid/app/Activity;

    const-string v1, "\u0414\u0430\u043d\u043d\u044b\u0435 \u0430\u0432\u0442\u043e\u0440\u0438\u0437\u0430\u0446\u0438\u0438, \u043f\u043e\u043b\u0443\u0447\u0435\u043d\u044b \u0440\u0430\u043d\u0435\u0435, \u0430\u043a\u0442\u0443\u0430\u043b\u044c\u043d\u044b \u0438 \u043f\u0440\u043e\u0448\u043b\u0438 \u043f\u0440\u043e\u0432\u0435\u0440\u043a\u0443. \u0412\u0441\u0451 \u0433\u043e\u0442\u043e\u0432\u043e!"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 257
    iget-boolean v0, p0, Lcom/vkcoffee/android/Platform$3;->val$wall:Z

    if-eqz v0, :cond_1

    .line 258
    invoke-static {}, Lcom/vkcoffee/android/Platform;->access$1()I

    move-result v0

    invoke-static {v0}, Lcom/vkcoffee/android/PlatformData;->setCurrentPlatform(I)V

    .line 259
    invoke-static {}, Lcom/vkcoffee/android/Platform;->STOP_USE_CUSTOM()V

    .line 263
    :goto_0
    invoke-static {}, Lcom/vkcoffee/android/Platform;->successPlatformPosting()V

    .line 281
    :cond_0
    :goto_1
    return-void

    .line 261
    :cond_1
    invoke-static {}, Lcom/vkcoffee/android/Platform;->access$1()I

    move-result v0

    invoke-static {v0}, Lcom/vkcoffee/android/PlatformData;->setCurrentPlatformOnline(I)V

    goto :goto_0

    .line 266
    :cond_2
    const-string v0, "\"error_code\":5"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 267
    iget-object v0, p0, Lcom/vkcoffee/android/Platform$3;->val$activity:Landroid/app/Activity;

    const-string v1, "\u0421 \u0442\u0435\u043a\u0443\u0449\u0435\u0439 \u0430\u0432\u0442\u043e\u0440\u0438\u0437\u0430\u0446\u0438\u0435\u0439 \u0447\u0442\u043e-\u0442\u043e \u043d\u0435 \u0442\u0430\u043a. \u041d\u043e\u0432\u0430\u044f \u0430\u0432\u0442\u043e\u0440\u0438\u0437\u0430\u0446\u0438\u044f"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 268
    iget-object v0, p0, Lcom/vkcoffee/android/Platform$3;->val$activity:Landroid/app/Activity;

    invoke-static {}, Lcom/vkcoffee/android/Platform;->access$1()I

    move-result v1

    iget-boolean v2, p0, Lcom/vkcoffee/android/Platform$3;->val$wall:Z

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/Platform;->access$2(Landroid/app/Activity;IZ)V

    .line 269
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CHECK code 5: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 272
    :cond_3
    const-string v0, "\"error_code\":10"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 273
    iget-object v0, p0, Lcom/vkcoffee/android/Platform$3;->val$activity:Landroid/app/Activity;

    const-string v1, "\u041d\u0430 \u0441\u0435\u0440\u0432\u0435\u0440\u0435 \u0412\u041a\u043e\u043d\u0442\u0430\u043a\u0442\u0435 \u0432\u043e\u0437\u043d\u0438\u043a\u043b\u0438 \u043d\u0435\u043f\u043e\u043b\u0430\u0434\u043a\u0438, \u043f\u043e\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435 \u0432\u044b\u0431\u0440\u0430\u0442\u044c \u043f\u043b\u0430\u0442\u0444\u043e\u0440\u043c\u0443 \u0435\u0449\u0435 \u0440\u0430\u0437."

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 274
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CHECK code 10: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 275
    iget-boolean v0, p0, Lcom/vkcoffee/android/Platform$3;->val$wall:Z

    if-eqz v0, :cond_0

    .line 276
    invoke-static {}, Lcom/vkcoffee/android/Platform;->STOP_USE_CUSTOM()V

    goto :goto_1

    .line 280
    :cond_4
    iget-object v0, p0, Lcom/vkcoffee/android/Platform$3;->val$activity:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u041e\u0448\u0438\u0431\u043a\u0430: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method
