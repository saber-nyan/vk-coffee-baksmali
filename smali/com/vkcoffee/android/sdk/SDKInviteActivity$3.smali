.class Lcom/vkcoffee/android/sdk/SDKInviteActivity$3;
.super Ljava/lang/Object;
.source "SDKInviteActivity.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/sdk/SDKInviteActivity;->sendInvite(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/api/Callback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/sdk/SDKInviteActivity;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/sdk/SDKInviteActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/sdk/SDKInviteActivity;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/vkcoffee/android/sdk/SDKInviteActivity$3;->this$0:Lcom/vkcoffee/android/sdk/SDKInviteActivity;

    iput p2, p0, Lcom/vkcoffee/android/sdk/SDKInviteActivity$3;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 1
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteActivity$3;->this$0:Lcom/vkcoffee/android/sdk/SDKInviteActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->access$300(Lcom/vkcoffee/android/sdk/SDKInviteActivity;)V

    .line 252
    return-void
.end method

.method public success(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "mid"    # Ljava/lang/Integer;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteActivity$3;->this$0:Lcom/vkcoffee/android/sdk/SDKInviteActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->access$102(Lcom/vkcoffee/android/sdk/SDKInviteActivity;Z)Z

    .line 246
    iget-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteActivity$3;->this$0:Lcom/vkcoffee/android/sdk/SDKInviteActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/vkcoffee/android/sdk/SDKInviteActivity$3;->val$uid:I

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/sdk/SDKInviteActivity;->access$200(Lcom/vkcoffee/android/sdk/SDKInviteActivity;II)V

    .line 247
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 241
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/sdk/SDKInviteActivity$3;->success(Ljava/lang/Integer;)V

    return-void
.end method
