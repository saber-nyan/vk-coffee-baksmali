.class Lcom/vkcoffee/android/sdk/SDKInviteDialog$4$1;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "SDKInviteDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/sdk/SDKInviteDialog$4;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/sdk/SDKInviteDialog$4;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/sdk/SDKInviteDialog$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/sdk/SDKInviteDialog$4;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog$4$1;->this$1:Lcom/vkcoffee/android/sdk/SDKInviteDialog$4;

    invoke-direct {p0}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 249
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/sdk/SDKInviteDialog$4$1;->success(Ljava/lang/String;)V

    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 1
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog$4$1;->this$1:Lcom/vkcoffee/android/sdk/SDKInviteDialog$4;

    iget-object v0, v0, Lcom/vkcoffee/android/sdk/SDKInviteDialog$4;->this$0:Lcom/vkcoffee/android/sdk/SDKInviteDialog;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->access$702(Lcom/vkcoffee/android/sdk/SDKInviteDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 253
    return-void
.end method
