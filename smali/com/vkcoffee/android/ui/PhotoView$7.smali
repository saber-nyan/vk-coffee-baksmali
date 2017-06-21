.class Lcom/vkcoffee/android/ui/PhotoView$7;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/PhotoView;->setAdapter(Lcom/vkcoffee/android/ui/PhotoView$PhotoViewerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/PhotoView;

.field final synthetic val$tt:J


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/PhotoView;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/PhotoView;

    .prologue
    .line 1205
    iput-object p1, p0, Lcom/vkcoffee/android/ui/PhotoView$7;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    iput-wide p2, p0, Lcom/vkcoffee/android/ui/PhotoView$7;->val$tt:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1207
    const-string/jumbo v0, "vk_photoview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wait before load: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/vkcoffee/android/ui/PhotoView$7;->val$tt:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoView$7;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/PhotoView;->access$3400(Lcom/vkcoffee/android/ui/PhotoView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1209
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoView$7;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/ui/PhotoView;->post(Ljava/lang/Runnable;)Z

    .line 1216
    :cond_0
    :goto_0
    return-void

    .line 1212
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoView$7;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/PhotoView;->access$3500(Lcom/vkcoffee/android/ui/PhotoView;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1215
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoView$7;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/PhotoView;->access$3600(Lcom/vkcoffee/android/ui/PhotoView;Z)V

    goto :goto_0
.end method
