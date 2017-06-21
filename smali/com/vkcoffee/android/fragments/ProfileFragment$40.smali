.class Lcom/vkcoffee/android/fragments/ProfileFragment$40;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;->addToFavorites()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$40;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 5613
    invoke-direct {p0}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 5615
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$40;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->isFavorite:Z

    .line 5616
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$40;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 5617
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 5618
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$40;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->invalidateOptionsMenu()V

    .line 5619
    const v1, 0x7f080176

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 5621
    :cond_0
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment$40;->success(Ljava/lang/Boolean;)V

    return-void
.end method
