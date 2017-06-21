.class Lcom/vkcoffee/android/ui/GifDialog$1;
.super Ljava/lang/Object;
.source "GifDialog.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/GifView$ProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/GifDialog;->init(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/GifDialog;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/GifDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/GifDialog;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/vkcoffee/android/ui/GifDialog$1;->this$0:Lcom/vkcoffee/android/ui/GifDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideProgressBar()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkcoffee/android/ui/GifDialog$1;->this$0:Lcom/vkcoffee/android/ui/GifDialog;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/GifDialog;->access$000(Lcom/vkcoffee/android/ui/GifDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/ui/GifDialog$1$2;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/ui/GifDialog$1$2;-><init>(Lcom/vkcoffee/android/ui/GifDialog$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->post(Ljava/lang/Runnable;)Z

    .line 51
    return-void
.end method

.method public setProgress(II)V
    .locals 2
    .param p1, "loaded"    # I
    .param p2, "total"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vkcoffee/android/ui/GifDialog$1;->this$0:Lcom/vkcoffee/android/ui/GifDialog;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/GifDialog;->access$000(Lcom/vkcoffee/android/ui/GifDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/ui/GifDialog$1$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/vkcoffee/android/ui/GifDialog$1$1;-><init>(Lcom/vkcoffee/android/ui/GifDialog$1;II)V

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->post(Ljava/lang/Runnable;)Z

    .line 41
    return-void
.end method
