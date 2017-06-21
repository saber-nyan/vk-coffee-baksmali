.class Lcom/vkcoffee/android/sdk/SDKInviteDialog$4;
.super Landroid/os/AsyncTask;
.source "SDKInviteDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/sdk/SDKInviteDialog;->loadPhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/sdk/SDKInviteDialog;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/sdk/SDKInviteDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/sdk/SDKInviteDialog;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog$4;->this$0:Lcom/vkcoffee/android/sdk/SDKInviteDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog$4;->this$0:Lcom/vkcoffee/android/sdk/SDKInviteDialog;

    invoke-static {v0}, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->access$700(Lcom/vkcoffee/android/sdk/SDKInviteDialog;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Lcom/vkcoffee/android/api/photos/SDKPhotosResolveLink;

    iget-object v1, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog$4;->this$0:Lcom/vkcoffee/android/sdk/SDKInviteDialog;

    invoke-static {v1}, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->access$400(Lcom/vkcoffee/android/sdk/SDKInviteDialog;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x25c

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/api/photos/SDKPhotosResolveLink;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/vkcoffee/android/sdk/SDKInviteDialog$4$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/sdk/SDKInviteDialog$4$1;-><init>(Lcom/vkcoffee/android/sdk/SDKInviteDialog$4;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/photos/SDKPhotosResolveLink;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->execSync()Z

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog$4;->this$0:Lcom/vkcoffee/android/sdk/SDKInviteDialog;

    invoke-virtual {v0}, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog$4;->this$0:Lcom/vkcoffee/android/sdk/SDKInviteDialog;

    invoke-static {v1}, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->access$700(Lcom/vkcoffee/android/sdk/SDKInviteDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/grishka/appkit/imageloader/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 239
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/sdk/SDKInviteDialog$4;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog$4;->this$0:Lcom/vkcoffee/android/sdk/SDKInviteDialog;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->access$802(Lcom/vkcoffee/android/sdk/SDKInviteDialog;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 262
    iget-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog$4;->this$0:Lcom/vkcoffee/android/sdk/SDKInviteDialog;

    invoke-static {v0}, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->access$900(Lcom/vkcoffee/android/sdk/SDKInviteDialog;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog$4;->this$0:Lcom/vkcoffee/android/sdk/SDKInviteDialog;

    invoke-static {v0}, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->access$900(Lcom/vkcoffee/android/sdk/SDKInviteDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog$4;->this$0:Lcom/vkcoffee/android/sdk/SDKInviteDialog;

    invoke-static {v0}, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->access$600(Lcom/vkcoffee/android/sdk/SDKInviteDialog;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog$4;->this$0:Lcom/vkcoffee/android/sdk/SDKInviteDialog;

    invoke-static {v0}, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->access$600(Lcom/vkcoffee/android/sdk/SDKInviteDialog;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 268
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 239
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/sdk/SDKInviteDialog$4;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/vkcoffee/android/sdk/SDKInviteDialog$4;->this$0:Lcom/vkcoffee/android/sdk/SDKInviteDialog;

    invoke-static {v0}, Lcom/vkcoffee/android/sdk/SDKInviteDialog;->access$600(Lcom/vkcoffee/android/sdk/SDKInviteDialog;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 244
    return-void
.end method
