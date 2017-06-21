.class Lcom/vkcoffee/android/PhotoViewer$10$2;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/PhotoViewer$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/PhotoViewer$10;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/PhotoViewer$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/PhotoViewer$10;

    .prologue
    .line 628
    iput-object p1, p0, Lcom/vkcoffee/android/PhotoViewer$10$2;->this$1:Lcom/vkcoffee/android/PhotoViewer$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 631
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$10$2;->this$1:Lcom/vkcoffee/android/PhotoViewer$10;

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$10;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v0}, Lcom/vkcoffee/android/PhotoViewer;->access$000(Lcom/vkcoffee/android/PhotoViewer;)Lcom/vkcoffee/android/Photo;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer$10$2;->this$1:Lcom/vkcoffee/android/PhotoViewer$10;

    iget-object v1, v1, Lcom/vkcoffee/android/PhotoViewer$10;->val$curPhoto:Lcom/vkcoffee/android/Photo;

    if-eq v0, v1, :cond_0

    .line 635
    :goto_0
    return-void

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$10$2;->this$1:Lcom/vkcoffee/android/PhotoViewer$10;

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$10;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v0}, Lcom/vkcoffee/android/PhotoViewer;->access$1600(Lcom/vkcoffee/android/PhotoViewer;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer$10$2;->this$1:Lcom/vkcoffee/android/PhotoViewer$10;

    iget-object v2, v2, Lcom/vkcoffee/android/PhotoViewer$10;->val$curPhoto:Lcom/vkcoffee/android/Photo;

    iget-wide v2, v2, Lcom/vkcoffee/android/Photo;->lat:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer$10$2;->this$1:Lcom/vkcoffee/android/PhotoViewer$10;

    iget-object v2, v2, Lcom/vkcoffee/android/PhotoViewer$10;->val$curPhoto:Lcom/vkcoffee/android/Photo;

    iget-wide v2, v2, Lcom/vkcoffee/android/Photo;->lon:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
