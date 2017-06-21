.class Lcom/vkcoffee/android/MenuListView$8;
.super Ljava/lang/Object;
.source "MenuListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/MenuListView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/MenuListView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/MenuListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/MenuListView$8;->this$0:Lcom/vkcoffee/android/MenuListView;

    .line 1411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$8;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$8;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v2}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1414
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$8;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f04001b

    const v2, 0x7f040013

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1415
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$8;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$15(Lcom/vkcoffee/android/MenuListView;)Lcom/vkcoffee/android/MenuListView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1416
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$8;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$15(Lcom/vkcoffee/android/MenuListView;)Lcom/vkcoffee/android/MenuListView$Listener;

    move-result-object v0

    const/16 v1, -0x14

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/vkcoffee/android/MenuListView$Listener;->onMenuItemSelected(IZ)V

    .line 1418
    :cond_0
    return-void
.end method
