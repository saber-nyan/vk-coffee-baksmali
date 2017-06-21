.class Lcom/vkcoffee/android/sdk/SDKInviteDialog$3;
.super Ljava/lang/Object;
.source "SDKInviteDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/sdk/SDKInviteDialog;->invokeNegativeCallback(Lcom/vkcoffee/android/sdk/SDKInviteDialog$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/sdk/SDKInviteDialog;

.field final synthetic val$listener:Lcom/vkcoffee/android/sdk/SDKInviteDialog$Listener;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/sdk/SDKInviteDialog;Lcom/vkcoffee/android/sdk/SDKInviteDialog$Listener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/sdk/SDKInviteDialog;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog$3;->this$0:Lcom/vkcoffee/android/sdk/SDKInviteDialog;

    iput-object p2, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog$3;->val$listener:Lcom/vkcoffee/android/sdk/SDKInviteDialog$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog$3;->val$listener:Lcom/vkcoffee/android/sdk/SDKInviteDialog$Listener;

    invoke-interface {v0}, Lcom/vkcoffee/android/sdk/SDKInviteDialog$Listener;->onInviteCanceled()V

    .line 233
    return-void
.end method
