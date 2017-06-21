.class Lcom/vkcoffee/android/MAC$9;
.super Lcom/loopj/android/http/TextHttpResponseHandler;
.source "MAC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/MAC;->goCheck(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$item:I

.field private final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Landroid/app/ProgressDialog;Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/MAC$9;->val$progressDialog:Landroid/app/ProgressDialog;

    iput-object p2, p0, Lcom/vkcoffee/android/MAC$9;->val$activity:Landroid/app/Activity;

    iput p3, p0, Lcom/vkcoffee/android/MAC$9;->val$item:I

    .line 616
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
    .line 620
    iget-object v0, p0, Lcom/vkcoffee/android/MAC$9;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 621
    iget-object v0, p0, Lcom/vkcoffee/android/MAC$9;->val$activity:Landroid/app/Activity;

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

    .line 622
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 4
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 626
    const-string v0, "\"country\":"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/vkcoffee/android/MAC$9;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 628
    iget-object v0, p0, Lcom/vkcoffee/android/MAC$9;->val$activity:Landroid/app/Activity;

    iget v1, p0, Lcom/vkcoffee/android/MAC$9;->val$item:I

    invoke-static {v1}, Lcom/vkcoffee/android/MAC;->access$1(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/MAC;->access$5(Landroid/app/Activity;I)V

    .line 644
    :goto_0
    return-void

    .line 631
    :cond_0
    const-string v0, "\"error_code\":5"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 632
    iget-object v0, p0, Lcom/vkcoffee/android/MAC$9;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 633
    iget-object v0, p0, Lcom/vkcoffee/android/MAC$9;->val$activity:Landroid/app/Activity;

    const-string v1, "\u0421 \u0442\u0435\u043a\u0443\u0449\u0435\u0439 \u0430\u0432\u0442\u043e\u0440\u0438\u0437\u0430\u0446\u0438\u0435\u0439 \u0447\u0442\u043e-\u0442\u043e \u043d\u0435 \u0442\u0430\u043a."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 634
    iget-object v0, p0, Lcom/vkcoffee/android/MAC$9;->val$activity:Landroid/app/Activity;

    iget v1, p0, Lcom/vkcoffee/android/MAC$9;->val$item:I

    invoke-static {v1}, Lcom/vkcoffee/android/MAC;->access$1(I)I

    move-result v1

    invoke-static {v1}, Lcom/vkcoffee/android/MAC;->access$2(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/vkcoffee/android/MAC$9;->val$item:I

    invoke-static {v2}, Lcom/vkcoffee/android/MAC;->access$1(I)I

    move-result v2

    invoke-static {v2}, Lcom/vkcoffee/android/MAC;->access$6(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/vkcoffee/android/MAC;->loginAcc(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 637
    :cond_1
    const-string v0, "\"error_code\":10"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 638
    iget-object v0, p0, Lcom/vkcoffee/android/MAC$9;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 639
    iget-object v0, p0, Lcom/vkcoffee/android/MAC$9;->val$activity:Landroid/app/Activity;

    const-string v1, "\u041d\u0430 \u0441\u0435\u0440\u0432\u0435\u0440\u0435 \u0412\u041a\u043e\u043d\u0442\u0430\u043a\u0442\u0435 \u0432\u043e\u0437\u043d\u0438\u043a\u043b\u0438 \u043d\u0435\u043f\u043e\u043b\u0430\u0434\u043a\u0438, \u043f\u043e\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435 \u0432\u044b\u0431\u0440\u0430\u0442\u044c \u043f\u043b\u0430\u0442\u0444\u043e\u0440\u043c\u0443 \u0435\u0449\u0435 \u0440\u0430\u0437."

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 642
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/MAC$9;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 643
    iget-object v0, p0, Lcom/vkcoffee/android/MAC$9;->val$activity:Landroid/app/Activity;

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

    goto :goto_0
.end method
