.class Lcom/vk/attachpicker/PhotoVideoAttachActivity$3;
.super Ljava/lang/Object;
.source "PhotoVideoAttachActivity.java"

# interfaces
.implements Lcom/vk/attachpicker/events/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/PhotoVideoAttachActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vk/attachpicker/events/NotificationListener",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/PhotoVideoAttachActivity;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/PhotoVideoAttachActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/PhotoVideoAttachActivity;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity$3;->this$0:Lcom/vk/attachpicker/PhotoVideoAttachActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNotification(IILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 207
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vk/attachpicker/PhotoVideoAttachActivity$3;->onNotification(IILjava/lang/Void;)V

    return-void
.end method

.method public onNotification(IILjava/lang/Void;)V
    .locals 2
    .param p1, "eventType"    # I
    .param p2, "eventId"    # I
    .param p3, "eventArgs"    # Ljava/lang/Void;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity$3;->this$0:Lcom/vk/attachpicker/PhotoVideoAttachActivity;

    invoke-static {v0}, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->access$100(Lcom/vk/attachpicker/PhotoVideoAttachActivity;)Lcom/vk/attachpicker/SelectionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/attachpicker/SelectionContext;->selectionCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity$3;->this$0:Lcom/vk/attachpicker/PhotoVideoAttachActivity;

    invoke-static {v0}, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->access$200(Lcom/vk/attachpicker/PhotoVideoAttachActivity;)Lcom/vk/attachpicker/widget/AttachCounterView;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity$3;->this$0:Lcom/vk/attachpicker/PhotoVideoAttachActivity;

    invoke-static {v1}, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->access$100(Lcom/vk/attachpicker/PhotoVideoAttachActivity;)Lcom/vk/attachpicker/SelectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/attachpicker/SelectionContext;->selectionCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/AttachCounterView;->setCount(I)V

    .line 215
    :goto_0
    iget-object v0, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity$3;->this$0:Lcom/vk/attachpicker/PhotoVideoAttachActivity;

    invoke-static {v0}, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->access$100(Lcom/vk/attachpicker/PhotoVideoAttachActivity;)Lcom/vk/attachpicker/SelectionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/attachpicker/SelectionContext;->selectionCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity$3;->this$0:Lcom/vk/attachpicker/PhotoVideoAttachActivity;

    invoke-static {v0}, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->access$300(Lcom/vk/attachpicker/PhotoVideoAttachActivity;)V

    .line 220
    :goto_1
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity$3;->this$0:Lcom/vk/attachpicker/PhotoVideoAttachActivity;

    invoke-static {v0}, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->access$200(Lcom/vk/attachpicker/PhotoVideoAttachActivity;)Lcom/vk/attachpicker/widget/AttachCounterView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/AttachCounterView;->setCount(I)V

    goto :goto_0

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/vk/attachpicker/PhotoVideoAttachActivity$3;->this$0:Lcom/vk/attachpicker/PhotoVideoAttachActivity;

    invoke-static {v0}, Lcom/vk/attachpicker/PhotoVideoAttachActivity;->access$400(Lcom/vk/attachpicker/PhotoVideoAttachActivity;)V

    goto :goto_1
.end method
