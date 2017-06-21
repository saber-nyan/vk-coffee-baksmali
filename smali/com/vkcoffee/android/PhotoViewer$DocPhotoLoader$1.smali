.class Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader$1;
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
    .line 1397
    iput-object p1, p0, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader$1;->this$1:Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader$1;->this$1:Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$DocPhotoLoader;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v0}, Lcom/vkcoffee/android/PhotoViewer;->access$2900(Lcom/vkcoffee/android/PhotoViewer;)V

    .line 1400
    return-void
.end method
