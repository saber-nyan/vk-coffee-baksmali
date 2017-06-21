.class Lcom/vkcoffee/android/ProfileStatic$2$1;
.super Lcom/loopj/android/http/TextHttpResponseHandler;
.source "ProfileStatic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ProfileStatic$2;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/ProfileStatic$2;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$progress:Landroid/app/ProgressDialog;

.field private final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ProfileStatic$2;Landroid/app/ProgressDialog;Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/ProfileStatic$2$1;->this$1:Lcom/vkcoffee/android/ProfileStatic$2;

    iput-object p2, p0, Lcom/vkcoffee/android/ProfileStatic$2$1;->val$progress:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/vkcoffee/android/ProfileStatic$2$1;->val$activity:Landroid/app/Activity;

    iput p4, p0, Lcom/vkcoffee/android/ProfileStatic$2$1;->val$uid:I

    .line 85
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
    .line 89
    iget-object v0, p0, Lcom/vkcoffee/android/ProfileStatic$2$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 90
    iget-object v0, p0, Lcom/vkcoffee/android/ProfileStatic$2$1;->val$activity:Landroid/app/Activity;

    const-string v1, "\u0412\u043e\u0437\u043d\u0438\u043a\u043b\u0430 \u043e\u0448\u0438\u0431\u043a\u0430"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 91
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 8
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseString"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v4, p0, Lcom/vkcoffee/android/ProfileStatic$2$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->hide()V

    .line 96
    new-instance v1, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    iget-object v4, p0, Lcom/vkcoffee/android/ProfileStatic$2$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, v4}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 100
    .local v1, "builder":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 101
    .local v3, "response":Lorg/json/JSONObject;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://vk.com/id"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/vkcoffee/android/ProfileStatic$2$1;->val$uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 102
    const-string v5, "\n\u0417\u0430\u0440\u0435\u0433\u0438\u0441\u0442\u0440\u0438\u0440\u043e\u0432\u0430\u043d: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "response"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "date"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 103
    const-string v5, "\n\u0412\u0440\u0435\u043c\u044f \u0440\u0435\u0433\u0438\u0441\u0442\u0440\u0430\u0446\u0438\u0438: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "response"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "time"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 104
    const-string v5, "\n\u0410\u043a\u043a\u0430\u0443\u043d\u0442 \u0441\u0443\u0449\u0435\u0441\u0442\u0432\u0443\u0435\u0442 (\u0434\u043d\u0435\u0439): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "response"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "days"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 101
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/vkcoffee/android/ProfileStatic;->res:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v3    # "response":Lorg/json/JSONObject;
    :goto_0
    const-string v4, "\u0418\u043d\u0444\u043e\u0440\u043c\u0430\u0446\u0438\u044f"

    invoke-virtual {v1, v4}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 110
    sget-object v5, Lcom/vkcoffee/android/ProfileStatic;->res:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 111
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 112
    const-string v5, "\u0421\u043a\u043e\u043f\u0438\u0440\u043e\u0432\u0430\u0442\u044c"

    .line 113
    new-instance v6, Lcom/vkcoffee/android/ProfileStatic$2$1$1;

    iget-object v7, p0, Lcom/vkcoffee/android/ProfileStatic$2$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v6, p0, v7}, Lcom/vkcoffee/android/ProfileStatic$2$1$1;-><init>(Lcom/vkcoffee/android/ProfileStatic$2$1;Landroid/app/Activity;)V

    .line 112
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 120
    const-string v5, "OK"

    .line 121
    new-instance v6, Lcom/vkcoffee/android/ProfileStatic$2$1$2;

    invoke-direct {v6, p0}, Lcom/vkcoffee/android/ProfileStatic$2$1$2;-><init>(Lcom/vkcoffee/android/ProfileStatic$2$1;)V

    .line 120
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 126
    invoke-virtual {v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 127
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 129
    return-void

    .line 106
    .end local v0    # "alert":Landroid/app/AlertDialog;
    :catch_0
    move-exception v2

    .line 107
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u0412\u043e\u0437\u043d\u0438\u043a\u043b\u0430 \u043e\u0448\u0438\u0431\u043a\u0430: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/vkcoffee/android/ProfileStatic;->res:Ljava/lang/String;

    goto :goto_0
.end method
