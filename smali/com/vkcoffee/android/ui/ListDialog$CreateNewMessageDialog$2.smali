.class Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog$2;
.super Ljava/lang/Object;
.source "ListDialog.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/ListDialog$OnAttachedListener;


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
    .line 291
    iput-object p1, p0, Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog$2;->this$0:Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttached(Lcom/vkcoffee/android/ui/ListDialog$ListDialogAdapter;)V
    .locals 5
    .param p1, "adapter"    # Lcom/vkcoffee/android/ui/ListDialog$ListDialogAdapter;

    .prologue
    .line 294
    iget-object v1, p0, Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog$2;->this$0:Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;

    invoke-static {v1, p1}, Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;->access$102(Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;Lcom/vkcoffee/android/ui/ListDialog$ListDialogAdapter;)Lcom/vkcoffee/android/ui/ListDialog$ListDialogAdapter;

    .line 295
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 296
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.vkcoffee.android.USER_PRESENCE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    const-string/jumbo v1, "com.vkcoffee.android.FRIEND_LIST_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog$2;->this$0:Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;->access$300(Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    const-string/jumbo v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 299
    return-void
.end method

.method public onDetached(Lcom/vkcoffee/android/ui/ListDialog$ListDialogAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/vkcoffee/android/ui/ListDialog$ListDialogAdapter;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog$2;->this$0:Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;->access$102(Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;Lcom/vkcoffee/android/ui/ListDialog$ListDialogAdapter;)Lcom/vkcoffee/android/ui/ListDialog$ListDialogAdapter;

    .line 304
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog$2;->this$0:Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;->access$300(Lcom/vkcoffee/android/ui/ListDialog$CreateNewMessageDialog;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 305
    return-void
.end method
