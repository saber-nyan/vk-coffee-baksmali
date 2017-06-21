.class Lcom/vkcoffee/android/LinkRedirActivity$9;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "LinkRedirActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/LinkRedirActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<[",
        "Lcom/vkcoffee/android/NewsEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/LinkRedirActivity;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/LinkRedirActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 959
    iput-object p1, p0, Lcom/vkcoffee/android/LinkRedirActivity$9;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    iput-object p3, p0, Lcom/vkcoffee/android/LinkRedirActivity$9;->val$uri:Landroid/net/Uri;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2
    .param p1, "err"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 983
    iget-object v0, p0, Lcom/vkcoffee/android/LinkRedirActivity$9;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    .line 984
    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCodeValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 985
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/SimpleCallback;->fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    .line 989
    :goto_0
    return-void

    .line 987
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/LinkRedirActivity$9;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    iget-object v1, p0, Lcom/vkcoffee/android/LinkRedirActivity$9;->val$uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/LinkRedirActivity;->access$000(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 959
    check-cast p1, [Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/LinkRedirActivity$9;->success([Lcom/vkcoffee/android/NewsEntry;)V

    return-void
.end method

.method public success([Lcom/vkcoffee/android/NewsEntry;)V
    .locals 5
    .param p1, "news"    # [Lcom/vkcoffee/android/NewsEntry;

    .prologue
    .line 963
    iget-object v1, p0, Lcom/vkcoffee/android/LinkRedirActivity$9;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 964
    iget-object v1, p0, Lcom/vkcoffee/android/LinkRedirActivity$9;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-virtual {v1}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    .line 965
    array-length v1, p1

    if-nez v1, :cond_0

    .line 966
    iget-object v1, p0, Lcom/vkcoffee/android/LinkRedirActivity$9;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    new-instance v2, Lcom/vkcoffee/android/LinkRedirActivity$9$1;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/LinkRedirActivity$9$1;-><init>(Lcom/vkcoffee/android/LinkRedirActivity$9;)V

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/LinkRedirActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 979
    :goto_0
    return-void

    .line 973
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 974
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "entry"

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 975
    iget-object v1, p0, Lcom/vkcoffee/android/LinkRedirActivity$9;->val$uri:Landroid/net/Uri;

    const-string/jumbo v2, "reply"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 976
    const-string/jumbo v1, "comment"

    iget-object v2, p0, Lcom/vkcoffee/android/LinkRedirActivity$9;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    iget-object v3, p0, Lcom/vkcoffee/android/LinkRedirActivity$9;->val$uri:Landroid/net/Uri;

    const-string/jumbo v4, "reply"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/LinkRedirActivity;->access$200(Lcom/vkcoffee/android/LinkRedirActivity;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 978
    :cond_1
    const-class v1, Lcom/vkcoffee/android/fragments/PostViewFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/LinkRedirActivity$9;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-static {v1, v0, v2}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    goto :goto_0
.end method
