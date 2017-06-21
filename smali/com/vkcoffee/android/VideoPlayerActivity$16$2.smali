.class Lcom/vkcoffee/android/VideoPlayerActivity$16$2;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/VideoPlayerActivity$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/VideoPlayerActivity$16;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/VideoPlayerActivity$16;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/VideoPlayerActivity$16;

    .prologue
    .line 441
    iput-object p1, p0, Lcom/vkcoffee/android/VideoPlayerActivity$16$2;->this$1:Lcom/vkcoffee/android/VideoPlayerActivity$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 444
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$16$2;->this$1:Lcom/vkcoffee/android/VideoPlayerActivity$16;

    iget-object v0, v0, Lcom/vkcoffee/android/VideoPlayerActivity$16;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->finish()V

    .line 445
    return-void
.end method
