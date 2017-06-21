.class Lcom/vkcoffee/android/ProfileStatic$2;
.super Ljava/lang/Object;
.source "ProfileStatic.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ProfileStatic;->regInfoBlock(Landroid/view/Menu;Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$uid:I


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/ProfileStatic$2;->val$activity:Landroid/app/Activity;

    iput p2, p0, Lcom/vkcoffee/android/ProfileStatic$2;->val$uid:I

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "paramAnonymousMenuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v7, 0x1

    .line 76
    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/vkcoffee/android/ProfileStatic$2;->val$activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 77
    .local v2, "progress":Landroid/app/ProgressDialog;
    const-string v3, "\u041f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430..."

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {v2, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 79
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 81
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 82
    .local v1, "params":Lcom/loopj/android/http/RequestParams;
    const-string v3, "screen_name"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "id"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/vkcoffee/android/ProfileStatic$2;->val$uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 85
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/vkcoffee/android/GlobalVarsCoffee;->APIDOG_VLAD_API:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/vkcoffee/android/GlobalVarsCoffee;->APIDOG_USER_REG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/vkcoffee/android/ProfileStatic$2$1;

    iget-object v5, p0, Lcom/vkcoffee/android/ProfileStatic$2;->val$activity:Landroid/app/Activity;

    iget v6, p0, Lcom/vkcoffee/android/ProfileStatic$2;->val$uid:I

    invoke-direct {v4, p0, v2, v5, v6}, Lcom/vkcoffee/android/ProfileStatic$2$1;-><init>(Lcom/vkcoffee/android/ProfileStatic$2;Landroid/app/ProgressDialog;Landroid/app/Activity;I)V

    invoke-virtual {v0, v3, v1, v4}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 131
    return v7
.end method
