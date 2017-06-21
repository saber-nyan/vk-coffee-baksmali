.class Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "ListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog$1;->this$0:Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 281
    const-string/jumbo v0, "com.vkcoffee.android.FRIEND_LIST_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog$1;->this$0:Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;->access$100(Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;)Lcom/vkcoffee/android/ui/ListDialog$ListDialogAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog$1;->this$0:Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;->access$100(Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;)Lcom/vkcoffee/android/ui/ListDialog$ListDialogAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog$1;->this$0:Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;->access$200(Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/ListDialog$ListDialogAdapter;->setData(Ljava/util/List;)V

    .line 286
    :cond_0
    const-string/jumbo v0, "com.vkcoffee.android.USER_PRESENCE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    :cond_1
    return-void
.end method
