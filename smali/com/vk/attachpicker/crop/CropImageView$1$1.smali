.class Lcom/vk/attachpicker/crop/CropImageView$1$1;
.super Lcom/vk/attachpicker/crop/CropTouchListener;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/crop/CropImageView$1;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vk/attachpicker/crop/CropImageView$1;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/crop/CropImageView$1;Landroid/content/Context;Lcom/vk/attachpicker/crop/CropTouchListener$GestureCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vk/attachpicker/crop/CropImageView$1;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "gestureCallback"    # Lcom/vk/attachpicker/crop/CropTouchListener$GestureCallback;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/vk/attachpicker/crop/CropImageView$1$1;->this$1:Lcom/vk/attachpicker/crop/CropImageView$1;

    invoke-direct {p0, p2, p3}, Lcom/vk/attachpicker/crop/CropTouchListener;-><init>(Landroid/content/Context;Lcom/vk/attachpicker/crop/CropTouchListener$GestureCallback;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/CropImageView$1$1;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView$1$1;->this$1:Lcom/vk/attachpicker/crop/CropImageView$1;

    iget-object v0, v0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-static {v0}, Lcom/vk/attachpicker/crop/CropImageView;->access$400(Lcom/vk/attachpicker/crop/CropImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView$1$1;->this$1:Lcom/vk/attachpicker/crop/CropImageView$1;

    iget-object v0, v0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-static {v0}, Lcom/vk/attachpicker/crop/CropImageView;->access$500(Lcom/vk/attachpicker/crop/CropImageView;)V

    .line 150
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 151
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView$1$1;->this$1:Lcom/vk/attachpicker/crop/CropImageView$1;

    iget-object v0, v0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/CropImageView;->enableMove()V

    .line 152
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView$1$1;->this$1:Lcom/vk/attachpicker/crop/CropImageView$1;

    iget-object v0, v0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/crop/CropImageView;->setLinesVisible(Z)V

    .line 158
    :goto_0
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView$1$1;->this$1:Lcom/vk/attachpicker/crop/CropImageView$1;

    iget-object v0, v0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/CropImageView;->onImageGeometryChange()V

    .line 160
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/vk/attachpicker/crop/CropTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView$1$1;->this$1:Lcom/vk/attachpicker/crop/CropImageView$1;

    iget-object v0, v0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/CropImageView;->enableAll()V

    .line 155
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView$1$1;->this$1:Lcom/vk/attachpicker/crop/CropImageView$1;

    iget-object v0, v0, Lcom/vk/attachpicker/crop/CropImageView$1;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/crop/CropImageView;->setLinesVisible(Z)V

    goto :goto_0
.end method
