.class Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$2;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "FriendsOutRequestFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;->doRemoveFriend(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$2;->this$0:Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;

    .line 126
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3

    .prologue
    .line 128
    .local p1, "var1":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$2;->this$0:Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u041e\u0448\u0438\u0431\u043a\u0430"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 129
    return-void
.end method

.method public success(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "var1"    # Ljava/lang/Integer;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$2;->this$0:Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u0412\u044b \u043e\u0442\u043c\u0435\u043d\u0438\u043b\u0438 \u0441\u0432\u043e\u044e \u0437\u0430\u044f\u0432\u043a\u0443 \u0438 \u043e\u0442\u043f\u0438\u0441\u0430\u043b\u0438\u0441\u044c \u043e\u0442 \u043e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u0439"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 132
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$2;->success(Ljava/lang/Integer;)V

    return-void
.end method
