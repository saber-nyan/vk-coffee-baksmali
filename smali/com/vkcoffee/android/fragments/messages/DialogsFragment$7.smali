.class Lcom/vkcoffee/android/fragments/messages/DialogsFragment$7;
.super Ljava/lang/Object;
.source "DialogsFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/coffeeexternal/ShakeDetector$OnShakeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$7;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    .line 969
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShake(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 973
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$7;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->access$6(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)Landroid/os/Vibrator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 974
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$7;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->clearMessagesCache(Landroid/app/Activity;)V

    .line 977
    return-void
.end method
