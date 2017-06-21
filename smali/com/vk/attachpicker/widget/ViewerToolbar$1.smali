.class Lcom/vk/attachpicker/widget/ViewerToolbar$1;
.super Ljava/lang/Object;
.source "ViewerToolbar.java"

# interfaces
.implements Lcom/vk/attachpicker/widget/VkSeekBar$OnSeekBarStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/widget/ViewerToolbar;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field moveStartTime:J

.field final synthetic this$0:Lcom/vk/attachpicker/widget/ViewerToolbar;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/widget/ViewerToolbar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/widget/ViewerToolbar;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/vk/attachpicker/widget/ViewerToolbar$1;->this$0:Lcom/vk/attachpicker/widget/ViewerToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMoveBegin()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar$1;->this$0:Lcom/vk/attachpicker/widget/ViewerToolbar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vk/attachpicker/widget/ViewerToolbar;->access$002(Lcom/vk/attachpicker/widget/ViewerToolbar;F)F

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar$1;->moveStartTime:J

    .line 91
    invoke-static {}, Lcom/vk/attachpicker/events/NotificationCenter;->getInstance()Lcom/vk/attachpicker/events/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/vk/attachpicker/widget/ViewerToolbar$1;->this$0:Lcom/vk/attachpicker/widget/ViewerToolbar;

    invoke-static {v2}, Lcom/vk/attachpicker/widget/ViewerToolbar;->access$100(Lcom/vk/attachpicker/widget/ViewerToolbar;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vk/attachpicker/events/NotificationCenter;->fireEvent(II)V

    .line 92
    return-void
.end method

.method public onMoveEnd(F)V
    .locals 4
    .param p1, "currentValue"    # F

    .prologue
    .line 96
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ViewerToolbar$1;->this$0:Lcom/vk/attachpicker/widget/ViewerToolbar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vk/attachpicker/widget/ViewerToolbar;->access$002(Lcom/vk/attachpicker/widget/ViewerToolbar;F)F

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vk/attachpicker/widget/ViewerToolbar$1;->moveStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 98
    invoke-static {}, Lcom/vk/attachpicker/events/NotificationCenter;->getInstance()Lcom/vk/attachpicker/events/NotificationCenter;

    move-result-object v0

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/vk/attachpicker/widget/ViewerToolbar$1;->this$0:Lcom/vk/attachpicker/widget/ViewerToolbar;

    invoke-static {v2}, Lcom/vk/attachpicker/widget/ViewerToolbar;->access$100(Lcom/vk/attachpicker/widget/ViewerToolbar;)I

    move-result v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/vk/attachpicker/events/NotificationCenter;->fireEvent(IILjava/lang/Object;)V

    .line 100
    :cond_0
    invoke-static {}, Lcom/vk/attachpicker/events/NotificationCenter;->getInstance()Lcom/vk/attachpicker/events/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/vk/attachpicker/widget/ViewerToolbar$1;->this$0:Lcom/vk/attachpicker/widget/ViewerToolbar;

    invoke-static {v2}, Lcom/vk/attachpicker/widget/ViewerToolbar;->access$100(Lcom/vk/attachpicker/widget/ViewerToolbar;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vk/attachpicker/events/NotificationCenter;->fireEvent(II)V

    .line 101
    return-void
.end method
