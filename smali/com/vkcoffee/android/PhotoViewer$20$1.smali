.class Lcom/vkcoffee/android/PhotoViewer$20$1;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/PhotoViewer$20;->success(Lcom/vkcoffee/android/api/wall/WallLike$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/PhotoViewer$20;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/PhotoViewer$20;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/PhotoViewer$20;

    .prologue
    .line 993
    iput-object p1, p0, Lcom/vkcoffee/android/PhotoViewer$20$1;->this$1:Lcom/vkcoffee/android/PhotoViewer$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 995
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$20$1;->this$1:Lcom/vkcoffee/android/PhotoViewer$20;

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$20;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer$20$1;->this$1:Lcom/vkcoffee/android/PhotoViewer$20;

    iget-object v1, v1, Lcom/vkcoffee/android/PhotoViewer$20;->val$curPhoto:Lcom/vkcoffee/android/Photo;

    iget-boolean v1, v1, Lcom/vkcoffee/android/Photo;->isLiked:Z

    invoke-static {v0, v1}, Lcom/vkcoffee/android/PhotoViewer;->access$100(Lcom/vkcoffee/android/PhotoViewer;Z)V

    .line 996
    return-void
.end method
