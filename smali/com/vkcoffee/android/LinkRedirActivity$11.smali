.class Lcom/vkcoffee/android/LinkRedirActivity$11;
.super Ljava/lang/Object;
.source "LinkRedirActivity.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/LinkRedirActivity;->onCreate(Landroid/os/Bundle;)V
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
        "Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/LinkRedirActivity;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/LinkRedirActivity;

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/vkcoffee/android/LinkRedirActivity$11;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    iput-object p2, p0, Lcom/vkcoffee/android/LinkRedirActivity$11;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$success$646(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .prologue
    .line 1123
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    .line 1124
    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/vkcoffee/android/LinkRedirActivity$11;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    .line 1138
    iget-object v0, p0, Lcom/vkcoffee/android/LinkRedirActivity$11;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    iget-object v1, p0, Lcom/vkcoffee/android/LinkRedirActivity$11;->val$uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/LinkRedirActivity;->access$000(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/net/Uri;)V

    .line 1139
    return-void
.end method

.method synthetic lambda$success$645(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/vkcoffee/android/LinkRedirActivity$11;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 1120
    iget-object v0, p0, Lcom/vkcoffee/android/LinkRedirActivity$11;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    .line 1121
    return-void
.end method

.method public success(Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;)V
    .locals 7
    .param p1, "result"    # Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;

    .prologue
    .line 1115
    iget-boolean v1, p1, Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;->can_see_gifts:Z

    if-nez v1, :cond_0

    .line 1116
    new-instance v1, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    iget-object v2, p0, Lcom/vkcoffee/android/LinkRedirActivity$11;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0801f8

    .line 1117
    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {p0}, Lcom/vkcoffee/android/LinkRedirActivity$11$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/LinkRedirActivity$11;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v2

    .line 1118
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08031e

    invoke-static {}, Lcom/vkcoffee/android/LinkRedirActivity$11$$Lambda$2;->lambdaFactory$()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    .line 1122
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1124
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1133
    :goto_0
    return-void

    .line 1126
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1127
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1128
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/vkcoffee/android/LinkRedirActivity$11;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-virtual {v2}, Lcom/vkcoffee/android/LinkRedirActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801f6

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;->first_name_gen:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1129
    const-class v1, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/LinkRedirActivity$11;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-static {v1, v0, v2}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 1130
    iget-object v1, p0, Lcom/vkcoffee/android/LinkRedirActivity$11;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 1131
    iget-object v1, p0, Lcom/vkcoffee/android/LinkRedirActivity$11;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-virtual {v1}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1112
    check-cast p1, Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/LinkRedirActivity$11;->success(Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;)V

    return-void
.end method
