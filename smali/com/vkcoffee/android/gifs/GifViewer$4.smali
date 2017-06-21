.class Lcom/vkcoffee/android/gifs/GifViewer$4;
.super Ljava/lang/Object;
.source "GifViewer.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/gifs/GifViewer;->add()V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/gifs/GifViewer;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/gifs/GifViewer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/gifs/GifViewer$4;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3

    .prologue
    .line 616
    .local p1, "error":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer$4;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    invoke-virtual {v0}, Lcom/vkcoffee/android/gifs/GifViewer;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCode()I

    move-result v1

    iget-object v2, p1, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->message:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/api/APIUtils;->showErrorToast(Landroid/content/Context;ILjava/lang/String;)V

    .line 617
    return-void
.end method

.method public success(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x0

    .line 611
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer$4;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    invoke-virtual {v0}, Lcom/vkcoffee/android/gifs/GifViewer;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0801e7

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 612
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifViewer$4;->this$0:Lcom/vkcoffee/android/gifs/GifViewer;

    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/gifs/GifViewer;->setAddVisibility(Z)V

    .line 613
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/gifs/GifViewer$4;->success(Ljava/lang/Boolean;)V

    return-void
.end method
