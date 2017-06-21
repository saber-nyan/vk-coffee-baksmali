.class Lcom/vkcoffee/android/fragments/FriendsOutRequest$1;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "FriendsOutRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/FriendsOutRequest;->onActionClick(Lcom/vkcoffee/android/UserProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/FriendsOutRequest;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/FriendsOutRequest;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/FriendsOutRequest$1;->this$0:Lcom/vkcoffee/android/fragments/FriendsOutRequest;

    .line 26
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3

    .prologue
    .line 30
    .local p1, "var1":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/FriendsOutRequest$1;->this$0:Lcom/vkcoffee/android/fragments/FriendsOutRequest;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/FriendsOutRequest;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u041e\u0448\u0438\u0431\u043a\u0430: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 31
    return-void
.end method

.method public success(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "var1"    # Ljava/lang/Integer;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/FriendsOutRequest$1;->this$0:Lcom/vkcoffee/android/fragments/FriendsOutRequest;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/FriendsOutRequest;->access$0(Lcom/vkcoffee/android/fragments/FriendsOutRequest;)V

    .line 36
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/FriendsOutRequest$1;->success(Ljava/lang/Integer;)V

    return-void
.end method
