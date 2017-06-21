.class Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader$2;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;

    .prologue
    .line 1407
    iput-object p1, p0, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader$2;->this$1:Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader$2;->this$1:Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v0}, Lcom/vkcoffee/android/PhotoViewer;->access$900(Lcom/vkcoffee/android/PhotoViewer;)Lcom/vkcoffee/android/ui/PhotoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1410
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader$2;->this$1:Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v0}, Lcom/vkcoffee/android/PhotoViewer;->access$900(Lcom/vkcoffee/android/PhotoViewer;)Lcom/vkcoffee/android/ui/PhotoView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader$2;->this$1:Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;

    iget-object v1, v1, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v1}, Lcom/vkcoffee/android/PhotoViewer;->access$1500(Lcom/vkcoffee/android/PhotoViewer;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0802f9

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/PhotoView;->setErrorText(Ljava/lang/String;)V

    .line 1412
    :cond_0
    return-void
.end method
