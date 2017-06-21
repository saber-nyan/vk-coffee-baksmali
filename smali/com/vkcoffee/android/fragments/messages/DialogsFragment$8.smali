.class Lcom/vkcoffee/android/fragments/messages/DialogsFragment$8;
.super Ljava/lang/Object;
.source "DialogsFragment.java"

# interfaces
.implements Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$8;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    .line 1057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStarted()V
    .locals 4

    .prologue
    .line 1059
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$8;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1060
    .local v0, "var1":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1061
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1062
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 1065
    :cond_0
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 1066
    return-void
.end method

.method public onScrolledToLastItem()V
    .locals 2

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$8;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->loadData(Z)V

    .line 1069
    return-void
.end method
