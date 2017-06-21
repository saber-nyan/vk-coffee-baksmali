.class Lcom/vkcoffee/android/ui/GifDialog$1$1;
.super Ljava/lang/Object;
.source "GifDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/GifDialog$1;->setProgress(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/ui/GifDialog$1;

.field final synthetic val$loaded:I

.field final synthetic val$total:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/GifDialog$1;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/ui/GifDialog$1;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/vkcoffee/android/ui/GifDialog$1$1;->this$1:Lcom/vkcoffee/android/ui/GifDialog$1;

    iput p2, p0, Lcom/vkcoffee/android/ui/GifDialog$1$1;->val$total:I

    iput p3, p0, Lcom/vkcoffee/android/ui/GifDialog$1$1;->val$loaded:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkcoffee/android/ui/GifDialog$1$1;->this$1:Lcom/vkcoffee/android/ui/GifDialog$1;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/GifDialog$1;->this$0:Lcom/vkcoffee/android/ui/GifDialog;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/GifDialog;->access$000(Lcom/vkcoffee/android/ui/GifDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/ui/GifDialog$1$1;->val$total:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 38
    iget-object v0, p0, Lcom/vkcoffee/android/ui/GifDialog$1$1;->this$1:Lcom/vkcoffee/android/ui/GifDialog$1;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/GifDialog$1;->this$0:Lcom/vkcoffee/android/ui/GifDialog;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/GifDialog;->access$000(Lcom/vkcoffee/android/ui/GifDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/ui/GifDialog$1$1;->val$loaded:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 39
    return-void
.end method
