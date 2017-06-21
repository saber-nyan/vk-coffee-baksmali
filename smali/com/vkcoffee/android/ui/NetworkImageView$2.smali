.class Lcom/vkcoffee/android/ui/NetworkImageView$2;
.super Ljava/lang/Object;
.source "NetworkImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/NetworkImageView;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/NetworkImageView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/NetworkImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/NetworkImageView;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/vkcoffee/android/ui/NetworkImageView$2;->this$0:Lcom/vkcoffee/android/ui/NetworkImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkcoffee/android/ui/NetworkImageView$2;->this$0:Lcom/vkcoffee/android/ui/NetworkImageView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/NetworkImageView;->access$000(Lcom/vkcoffee/android/ui/NetworkImageView;)Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/vkcoffee/android/ui/NetworkImageView$2;->this$0:Lcom/vkcoffee/android/ui/NetworkImageView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/NetworkImageView;->access$000(Lcom/vkcoffee/android/ui/NetworkImageView;)Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lme/grishka/appkit/imageloader/ImageCache$RequestWrapper;->cancel()V

    .line 56
    :cond_0
    return-void
.end method
