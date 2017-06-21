.class Lcom/vkcoffee/android/PhotoViewer$21;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/PhotoViewer;->showTags()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/vkcoffee/android/PhotoTag;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/PhotoViewer;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/PhotoViewer;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/PhotoViewer;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/vkcoffee/android/PhotoViewer$21;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1046
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/PhotoViewer$21;->success(Ljava/util/ArrayList;)V

    return-void
.end method

.method public success(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/PhotoTag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1049
    .local p1, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/PhotoTag;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$21;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v0}, Lcom/vkcoffee/android/PhotoViewer;->access$000(Lcom/vkcoffee/android/PhotoViewer;)Lcom/vkcoffee/android/Photo;

    move-result-object v0

    iput-object p1, v0, Lcom/vkcoffee/android/Photo;->tags:Ljava/util/ArrayList;

    .line 1050
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$21;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v0}, Lcom/vkcoffee/android/PhotoViewer;->access$2500(Lcom/vkcoffee/android/PhotoViewer;)V

    .line 1051
    return-void
.end method
