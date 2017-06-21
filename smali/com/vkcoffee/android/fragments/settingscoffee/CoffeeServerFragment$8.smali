.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$8;
.super Ljava/lang/Object;
.source "CoffeeServerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;->got(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$8;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$8;)Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$8;->this$0:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 192
    const-string v0, ""

    .line 193
    .local v0, "answer":Ljava/lang/String;
    new-instance v2, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v2}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 194
    .local v2, "params":Lcom/loopj/android/http/RequestParams;
    const-string v3, "group_id"

    const-string v4, "78466802"

    invoke-virtual {v2, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v3, "user_id"

    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;I)V

    .line 197
    new-instance v1, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 198
    .local v1, "client":Lcom/loopj/android/http/AsyncHttpClient;
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/vkcoffee/android/GlobalVarsCoffee;->API_HOST:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "groups.isMember"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$8$1;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$8$1;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeServerFragment$8;)V

    invoke-virtual {v1, v3, v2, v4}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 226
    return-void
.end method
