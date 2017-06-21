.class Lcom/vkcoffee/android/ui/WriteBar$4;
.super Ljava/lang/Object;
.source "WriteBar.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/AttachmentsEditorView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/WriteBar;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/WriteBar;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/WriteBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/WriteBar;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/vkcoffee/android/ui/WriteBar$4;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllUploadsDone()V
    .locals 3

    .prologue
    .line 256
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar$4;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/WriteBar;->access$1000(Lcom/vkcoffee/android/ui/WriteBar;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar$4;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/WriteBar;->access$1000(Lcom/vkcoffee/android/ui/WriteBar;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 258
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar$4;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/WriteBar$4;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkcoffee/android/ui/WriteBar;->access$1102(Lcom/vkcoffee/android/ui/WriteBar;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/WriteBar;->access$1002(Lcom/vkcoffee/android/ui/WriteBar;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 260
    :cond_0
    return-void
.end method

.method public onAttachmentRemoved(Lcom/vkcoffee/android/attachments/Attachment;)V
    .locals 4
    .param p1, "att"    # Lcom/vkcoffee/android/attachments/Attachment;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar$4;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/WriteBar;->access$300(Lcom/vkcoffee/android/ui/WriteBar;)Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getRealCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 242
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 243
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar$4;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    new-instance v1, Lcom/vkcoffee/android/ui/WriteBar$4$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/ui/WriteBar$4$1;-><init>(Lcom/vkcoffee/android/ui/WriteBar$4;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkcoffee/android/ui/WriteBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar$4;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/WriteBar;->access$900(Lcom/vkcoffee/android/ui/WriteBar;Z)V

    goto :goto_0
.end method

.method public onUploadFailed()V
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar$4;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/WriteBar;->access$1100(Lcom/vkcoffee/android/ui/WriteBar;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar$4;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/WriteBar;->access$1100(Lcom/vkcoffee/android/ui/WriteBar;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 266
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar$4;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/WriteBar$4;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkcoffee/android/ui/WriteBar;->access$1102(Lcom/vkcoffee/android/ui/WriteBar;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/WriteBar;->access$1002(Lcom/vkcoffee/android/ui/WriteBar;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 268
    :cond_0
    return-void
.end method
